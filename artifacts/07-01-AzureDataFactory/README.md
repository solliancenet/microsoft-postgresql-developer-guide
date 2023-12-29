# Azure Data Factory with PostgreSQL

## Setup

## Create Linked Services

- Switch to the Azure Portal, browse to the **pgsqldevSUFFIX** Azure Data Factory instance
- Select **Launch Studio**
- In the left navigation, select the **Manage** tab
- Select **Linked servics**, select the **+ New** button
- For the type, select **Azure Database for PostgreSQL**, then select **Continue**
- For the name, type **ContosoStore**
- For the account selection, select **From Azure Subscription**
- Select the subscription
- Select the **pgsqldevSUFFIXflex16** Azure Database for PostgreSQL Flexible Server server
- For the database name, select **ContosoStore**
- For the username, type **wsuser**
- For the password, type **Solliance123**
- For the encryption methods, select **RequestSSL**
- Select **Test connection**, ensure that a success message is displayed.
- Select **Create**
- Select **Linked services**, select the **+ New** button
- For the type, select **Azure Data Lake Storage Gen2**
- Select **Continue**
- For the name type **AzStorage**
- Select the subscription
- Select the **pgsqldevSUFFIX** storage account
- Select **Create**

## Create Dataset (PostgreSQL)

- Seelct the **Author** tab
- Select the **+** button, then select **Data Set**
- For the type, select **Azure Database for PostgreSQL**
- Select **Continue**
- For the name, type **orders_database**
- For the linked service, select **ContosoStore**
- For the table name, select **public.orders**
- Select **OK**

## Create Dataset (Storage)

- Select the **+** button, then select **Data Set**
- For the type, select **Azure Data Lake Storage Gen2**
- Select **Continue**
- For the data format, select **JSON**
- Select **Continue**
- For the name, type **orders_storage**
- For the linked service, select **AzStorage**
- For the file system, type **orders**
- Select **OK**

## Create a Pipeline

- Select the **+** button, then select **Pipeline->Pipeline**
- On the right dialog, for the name, type **PostgreSQL_to_storage**
- In the middle navigation, expand **Move & transform**
- Drag the **Copy data** activity to the design surface
- In the **General** tab on the bottom middle, for the pipeline name, type **PostgreSQL_to_storage**
- Select the **Source** tab, then select the **orders_database** data set
- For the **Use query**, select **Query**
- Place the mouse in the text area, select **Add dynamic content**
- For the query text, type **select * from orders where created_at >= '@pipeline().parameters.LastCreateDate'**
- Select **OK**
- Select the **Sink** tab, then select the **orders_storage** data set
- Select the main pipeline canvas (click the white area around the copy data activity), then select **Parameters**
- Select **+ New**
- For the name, tyep **LastCreateDate**
- For the type, select **String**
- For the default value, type **@trigger().scheduledTime**

## Add a trigger

- In the top middle, select the **Add trigger** button
- Select **New/Edit**
- Select the **Choose trigger** dropdown, then select **+New**
- For the name, type **UserScheduleTrigger**
- For the recurrance, select **1 day**
- Select **OK**
- For the pipeline parameter value, type **@trigger().scheduledTime**
- Select **OK**

## Publish

- Select **Publish all**, in the dialog you should see four artifacts.
- Select **Publish**

## Test the pipeline

- In the middle top area, select the **Trigger (1)** button
- Select **Trigger now**
- Select **OK**
- Open a new browser window to the Azure Portal
- Browse to the **pgsqldevSUFFIX** storage account
- Under **Data storage**, select **Containers**
- Select the **orders** container
- Notice that a new file is created that contains the exported data.
