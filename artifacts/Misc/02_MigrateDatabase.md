# Migrate the on-premises database

## pgAdmin

### Export the data

1. In the **paw-1** virtual machine, open **pgAdmin**
2. Connect to the local Postgres 16 instance using `wsuser` with `Solliance123` password
3. Expand **Databases->ContosoStore**
4. Export the `contosostore` database
   1. Right-click the `contosostore` database, select **Backup...**
   2. For the filename, select the folder icon
   3. Type `contosostore.backup`, select **Save**
   4. On the **Objects** tab, select the `public` schema
   5. Select **Backup**

### Import the data

1. Connect to the target PostgreSQL instance
   1. Right-click **Servers**, select **Register->Server**
   2. For the hostname, type the dns of the Azure Database for PostgreSQL Flexible Server single server (ex `pgsqldevSUFFIXflex16.postgres.database.azure.com`)
   3. Switch to the `Connection` tab
      1. For the username, type **wsuser**
      2. For the password type **Solliance123**
      3. Toggle the **Save password?** button
      4. Select **Save**
2. Import the backup
   1. Expand the **pgsqldevSUFFIXflex16.postgres.database.azure.com->Databases->contosostore** nodes
   2. Right-click the **contosostore** node, select **Restore...**
   3. For format, select **Custom or tar**
   4. For the filename, select the folder icon.
   5. Select the `C:\temp\contosostore\contosostore.backup` file, then select **Open**
   6. Select **Restore**, after a few momemts, the database will be imported into Azure PostgreSQL
