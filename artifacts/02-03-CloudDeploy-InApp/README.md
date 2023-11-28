# Cloud Deployment to Azure App Service with PostgreSQL InApp

This is a simple app that runs PHP code to connect to a PostgreSQL database.  The application and database must be migrated to Azure App Service and Azure Database for PostgreSQL Flexible Server.

## Basic Deployment

### Deploy the Application

1. Open the `C:\labfiles\microsoft-PostgreSQL-developer-guide` folder in Visual Studio code
2. If prompted, select **Yes, I trust the authors**
3. Open a terminal window, run the following:

    ```PowerShell
    cd "c:\labfiles\microsoft-PostgreSQL-developer-guide";

    Connect-AzAccount

    $suffix = "SUFFIX";
    $resourceGroupName = "RESOURCE_GROUP_NAME";

    $appName = "PostgreSQLdev$suffix";
    $app = Get-AzWebApp -ResourceGroupName $resourceGroupName -Name $appName

    Publish-AzWebApp -WebApp $app -ArchivePath "C:\labfiles\microsoft-PostgreSQL-developer-guide\site.zip"
    ```

### Test the Application

1. Open the Azure Portal
2. Browse to the `PostgreSQLdevSUFFIX` app service
3. Under **Settings**, select **Configuration**
4. Select the **General settings** tab
5. Notice the only available option is **7.4**
6. Browse to `https://PostgreSQLdevSUFFIX.azurewebsites.net/default.php`, results should be displayed.
7. Browse to `https://PostgreSQLdevSUFFIX.azurewebsites.net/database.php`, an error should occur.  This is because the connection details were embedded in the php file.

### Export the Database

1. Use the steps in [Migrate your database](./Misc/02_MigrateDatabase) article to export the SQL script.

### Enable PostgreSQL In App

1. Switch to the Azure Portal
2. Browse to the `PostgreSQLdevSUFFIX` app service
3. Under **Settings**, select **PostgreSQL in App**
4. For the **PostgreSQL in App** toggle, set to **On**
5. Set the slow query log to **On**
6. Set the general log to **On**
7. Select **Save**, take note of the connection string environment variable.

## Import the database

1. In the Data import and export section, select **Import/Export**
2. Select the **Manage** link, the `myphpadmin` panel will open
3. Login using the `root` user, no password
4. In the left navigation, select **New**
5. Select the **Import** tab
6. Select **Choose File**, then browse to the export file
7. Select **Go** to execute the SQL script

## Update the environment variables

1. Browse to the **PostgreSQLdevSUFFIX** web application
2. Under **Development Tools**, select **Advanced Tools**
3. Select **Go->**
4. Select **Debug console->CMD**
5. Browse to **site-.wwwroot**
6. Select the **edit** button for the `database.php` file
7. Add the following database connection code below where variables were set:

    ```php
    foreach ($_SERVER as $key => $value)
    {
        if (strpos($key, "PostgreSQLCONNSTR_") !== 0)
        {
            continue;
        }

        $servername = preg_replace("/^.*Data Source=(.+?);.*$/", "\\1", $value);
        $dbname = preg_replace("/^.*Database=(.+?);.*$/", "\\1", $value);
        $username = preg_replace("/^.*User Id=(.+?);.*$/", "\\1", $value);
        $password = preg_replace("/^.*Password=(.+?)$/", "\\1", $value);
    }
    ```

8. Remove the SSL settings code:

    ```php
    PostgreSQLi_ssl_set($conn,NULL,NULL, "DigiCertGlobalRootCA.crt.pem", NULL, NULL);
    ```

9. Select **Save**

## Test the Application

1. Browse to `https://PostgreSQLdevSUFFIX.azurewebsites.net/default.php`, the page should display.
2. Browse to `https://PostgreSQLdevSUFFIX.azurewebsites.net/database.php`, results should display.
