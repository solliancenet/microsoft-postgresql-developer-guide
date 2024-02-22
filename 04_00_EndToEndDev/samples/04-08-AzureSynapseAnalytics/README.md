# Azure Synapse Analytics with PostgreSQL

## Create PostgreSQL Linked Service

- Create a new Azure Synapse Analytics workspace
- Navigate to the **pgsqldevSUFFIX** Azure Synapce Analytics Workspace
- Under **Security**, select **Networking**
- Check the **Allow Azure services and resources to access this workspace** checkbox
- Select the **+ Add client IP**
- Select **Save**
- Select **Overview**, then n the **Getting started** area, select the **Open** link for Synapse Studio
- Login if prompted.
- Select the **Manage** tab
- Under **External connections** select **Linked services**
- Select **+ New**
- For the type, select **Azure Database for PostgreSQL**, select **Continue**
- For the name, type **contosostore**
- For the account selection, select **From Azure Subscription**
- Select the subscription
- Select the **pgsqldevSUFFIX** Azure Database for PostgreSQL Flexible Server server
- For the database name, type **contosostore**
- For the username, type **wsuser**
- For the password, type **Solliance123**
- Select **Test connection**, ensure a success message is displayed.
- Select **Create**

## Create PowerBI Workspace

- Open the Power BI Portal, https://powerbi.microsoft.com
- Sign in with your lab credentials
- In the left navigation, expand **Workspaces**
- Select **Create a workspace**
- For the name, type **PostgreSQL**
- Select **Apply**

## Create PowerBI Linked Service

- Switch back to Azure Synapse
- Select the **Manage** tab
- Under **External connections** select **Linked services**
- Select **+ New**
- For the type, select **Power BI**, select **Continue**
- For the name, type **PowerBI**
- Select the lab tenant
- Select the **PostgreSQL** workspace
- Select **Create**

## Create Integration Dataset

- Select the **Data** tab
- Select the **+** button
- Select **Integration Dataset**
- For the type, select **Azure Database for PostgreSQL**, select **Continue**
- For the name, type **contosostore_orders**
- For the linked service **contosostore**
- Select **OK**
- Select **Publish all**, then select **Publish**

## Create PowerBI Desktop Report (Dataset)

- Switch to the **paw-1** virtual machine
- Open **Power BI Desktop**
- Select **Get data**
- Select **PostgreSQL database**
- Select **Connect**
- For the servername, enter **pgsqldevSUFFIXflex16**
- For the database, select **contosostore**
- Select **OK**
- Select the **Database** tab
- For the user name, type **wsuser**
- For the password, type **Solliance123**
- Select **Connect**
- Check all the checkboxes
- Select **Load**
- Select **File->Save as**, save the report to the desktop as **PostgreSQL**
- Select **Save**

## Publish the PowerBI report to Power BI Online

- Select **File->Publish**
- Select **Publish to Power BI**
- When prompted, login with your lab credentials
- Select the **PostgreSQL** workspace
- Select **Select**
- Select the **Open 'PostgreSQL.pbix' in Power BI** link
- Login using your lab credentials.
- Ensure the **PostgreSQL** workspace is selected
- Select the **PostgreSQL** semantic model
- In the **Tables** window, select the **public users** table
- Select **Create paginated report**
- Select **File->Save**, save the report as **Contoso Users**
- Select **Save**, the report should load in the synapse workspace.

## Create PowerBI Report in Azure Synapse

- Select the **Develop** tab
- Select the **+** button
- Select **Power BI report**
- Select the **PostgreSQL** data set
- Select **Create**
- In the **Data** window, expand the **contosostore categories** table
- Select the `id`, `name` and `img` fields.
- Select **File->Save as**
- Save the report as **Contoso Categories**
- Select **Save**, the report should load in the synapse workspace.