# Securing Azure Function Apps

In the previous function apps the connection information was embedded into the function app code.  As was covered in the traditional deployment models, it is a best practice to remove this information and place it into Azure Key Vault.  Here we will utilize the features of Azure to use Managed Identities to connect to the database.

> **NOTE** This is currently only supported on Azure Database for Single Server.

## Enable PostgreSQL Microsoft Entra Authentication

- Switch to the Azure Portal
- Browse to the **pgsqldevSUFFIXflex16** Azure Database for PostgreSQL Flexible Server instance
- Under **Security**, select **Authentication**
- Ensure **Assign access to** is set to `PostgreSQL and Microsoft Entra authentication`
- Select **Add Microsoft Entra Admins**
- Select your lab credentials
- Select **Select**
- Select **Save**

## Create Managed Identity

- Browse to the **pgsqldevSUFFIX-addcustomerfunction** Function App
- Under **Settings**, select **Identity**
- For the **System assigned** identity, toggle to **On**
- Select **Save**, then select **Yes**
- Run the following to get the application id, replace the `SUFFIX`:

```powershell
az ad sp list --display-name pgsqldevSUFFIX-addcustomerfunction --query [*].appId --out tsv
```

- Copy the value for later use

## Login to the Azure Database with Microsoft Entra credentials

- Switch to the **paw-1** virtual machine
- Create a file called `c:\temp\GetAzADTOken.ps1` and paste the following into it:

```PowerShell
If ($null -eq (Get-AzContext)) {
    # User Account
    Connect-AzAccount -WarningAction SilentlyContinue | Out-Null
}
 
$AzAccessTokenSplat = $null
$AzAccessTokenSplat = @{
    ResourceUrl = "https://ossrdbms-aad.database.windows.net"
}
  
$AzAccessToken = $null
$AzAccessToken = Get-AzAccessToken @AzAccessTokenSplat
  
$AzAccessToken.Token
```

- Open the pgAdmin
- Create a new server connection, right click **Servers**, select **Register**
- For the name, type **azureadPostgreSQL**
- For the hostname, type the DNS of the Azure Database for PostgreSQL Flexible Server (ex `pgsqldevSUFFIXflex16.postgres.database.azure.com`)
- For the username, type your user UPN (aka your email address for your lab account)
- Select the **Advanced** tab, for the password exec command, type:

```cmd
powershell -file "C:\temp\GetAzADToken.ps1"
```

- For the password exec expiration, type `3480`
- Select **Save**
- Right click the new server, select **Connect**

## Add MSI to Database

- Switch to the Azure Portal
- Browse to the `` Azure Database for PostgreSQL Flexible Server
- Under **Security**, select **Authentication**
- Select **Add Microsoft Entra Admin**
- Search for the `APP_ID` from above.  Select it and the select **Select**
- Select **Save**
- The same could be performed using psql. From a psql connection, run the following, replace the `APP_ID` with the one copied from above:

    ```sql
    SET aad_validate_oids_in_tenant = off;

    CREATE ROLE funcuser WITH LOGIN PASSWORD 'APP_ID' IN ROLE azure_ad_user;
    ```

## Modify the code

- Open the `C:\labfiles\microsoft-postgresql-developer-guide\Artifacts\06-04-FunctionApp-MSI` function app folder in Visual Studio Code
- Add the following code to get an access token \ password for the managed identity:

    ```python
    from azure.identity import DefaultAzureCredential, AzureCliCredential, ChainedTokenCredential, ManagedIdentityCredential
    managed_identity = ManagedIdentityCredential()
    scope = "https://management.azure.com"
    token = managed_identity.get_token(scope)
    access_token = token.token
    ```

- Update the connection code to use the application id and the access token:

    ```python
    # Connect to PostgreSQL
        cnx = psycopg2.connect(database="postgres",
            host="pgsqldevSUFFIXflex16.postgres.database.azure.com",
            user="APP_ID",
            password=access_token,
            port="5432",
            sslmode='require',
            sslrootcert=crtpath)
    ```

- Run the following to deploy the updated Azure Function App:

```powershell
func azure functionapp publish pgsqldevSUFFIX-addcustomerfunction --force --python
```

Browse to the function endpoint and see the data (the output of the previous command will include this information).  The function app is now running as a managed identity and connecting to the database using that identity:

```text
https://pgsqldevSUFFIX-addcustomerfunction.azurewebsites.net/api/addcustomerfunction?code=APPKEY
```
