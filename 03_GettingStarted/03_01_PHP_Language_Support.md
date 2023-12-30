## Language support

Once an editor is selected, the next step is to pick a development language or platform. Below are some quick links:

[PHP]

[Java]

[Python]

[Other notable languages for PostgreSQL apps]

### PHP

This section describes tools to interact with Azure Database for PostgreSQL Flexible Server through PHP.

#### Connect and query

##### Setup

Follow one of the methods in the [Create a Flexible Server database] document to create a Flexible Server instance with a database.

Moreover, install PHP from the [downloads page.](https://windows.php.net/download/) These instructions were tested with PHP 8.0.13 (any PHP 8.0 version should work).

> The `php.ini` file needs to uncomment the `extension=PostgreSQLi` and `extension=openssl` lines for these steps to work.

A text editor such as Visual Studio Code may also be useful.

Lastly, download the [connection certificate](https://dl.cacerts.digicert.com/DigiCertGlobalRootCA.crt.pem) that is used for SSL connections with the PostgreSQL Flexible Server instance. In these snippets, the certificate is saved to `C:\Tools` on Windows. Adjust this if necessary.

##### Instructions

Microsoft's [Quickstart guide](https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/connect-php) performs standard CRUD operations against the PostgreSQL instance from a console app. This document modifies the code segments from the guide to provide an encrypted connection to the Flexible Server instance.

The first code snippet creates a table called `Products` with four columns, including a primary key. Adjust the `host`, `username` (most likely `postgres`), `password`, and `db_name` (most likely `newdatabase`) parameters to the values used during provisioning. Moreover, adjust the certificate path in the `PostgreSQLi_ssl_set()` method.

```php
<?php
$host = '[SERVER NAME].postgres.database.azure.com';
$username = 'postgres';
$password = '[PASSWORD]';
$db_name = 'newdatabase';

//Establishes the connection
$conn = PostgreSQLi_init();
PostgreSQLi_ssl_set($conn, NULL, NULL, "C:\Tools\DigiCertGlobalRootCA.crt.pem", NULL, NULL);
PostgreSQLi_real_connect($conn, $host, $username, $password, $db_name, 5432, PostgreSQLI_CLIENT_SSL);
if (PostgreSQLi_connect_errno()) {
die('Failed to connect to PostgreSQL: '.PostgreSQLi_connect_error());
}

// Run the create table query
if (pg_query($conn, '
CREATE TABLE Products (
`Id` INT NOT NULL AUTO_INCREMENT ,
`ProductName` VARCHAR(200) NOT NULL ,
`Color` VARCHAR(50) NOT NULL ,
`Price` DOUBLE NOT NULL ,
PRIMARY KEY (`Id`)
);
')) {
printf("Table created\n");
}

//Close the connection
PostgreSQLi_close($conn);
?>
```

Console output with the message `Table created` should be displayed.

The second code snippet uses the same logic to start and close an SSL-secured connection. This time, it leverages a prepared insert statement with bound parameters.

```php
<?php
$host = '[SERVER NAME].postgres.database.azure.com';
$username = 'postgres';
$password = '[PASSWORD]';
$db_name = 'newdatabase';

//Establishes the connection
$conn = PostgreSQLi_init();
PostgreSQLi_ssl_set($conn, NULL, NULL, "C:\Tools\DigiCertGlobalRootCA.crt.pem", NULL, NULL);
PostgreSQLi_real_connect($conn, $host, $username, $password, $db_name, 5432, PostgreSQLI_CLIENT_SSL);
if (PostgreSQLi_connect_errno()) {
die('Failed to connect to PostgreSQL: '.PostgreSQLi_connect_error());
}

//Create an Insert prepared statement and run it
$product_name = 'BrandNewProduct';
$product_color = 'Blue';
$product_price = 15.5;
if ($stmt = PostgreSQLi_prepare($conn, "INSERT INTO Products (ProductName, Color, Price) VALUES (?, ?, ?)")) {
PostgreSQLi_stmt_bind_param($stmt, 'ssd', $product_name, $product_color, $product_price);
PostgreSQLi_stmt_execute($stmt);
printf("Insert: Affected %d rows\n", PostgreSQLi_stmt_affected_rows($stmt));
PostgreSQLi_stmt_close($stmt);
}

//Close the connection
PostgreSQLi_close($conn);
?>
```

The console output message `Insert: Affected 1 rows` should be displayed.

The third code snippet utilizes the `pg_query()` method, just like the first code snippet. However, it also utilizes the `PostgreSQLi_fetch_assoc()` method to parse the result set.

```php
<?php
$host = '[SERVER NAME].postgres.database.azure.com';
$username = 'postgres';
$password = '[PASSWORD]';
$db_name = 'newdatabase';

//Establishes the connection
$conn = PostgreSQLi_init();
PostgreSQLi_ssl_set($conn, NULL, NULL, "C:\Tools\DigiCertGlobalRootCA.crt.pem", NULL, NULL);
PostgreSQLi_real_connect($conn, $host, $username, $password, $db_name, 5432, PostgreSQLI_CLIENT_SSL);
if (PostgreSQLi_connect_errno()) {
die('Failed to connect to PostgreSQL: '.PostgreSQLi_connect_error());
}

//Run the Select query
printf("Reading data from table: \n");
$res = pg_query($conn, 'SELECT * FROM Products');
while ($row = PostgreSQLi_fetch_assoc($res)) {
var_dump($row);
}

//Close the connection
PostgreSQLi_close($conn);
?>
```

PHP returns an array with the column values for the row inserted in the previous snippet. 

The next snippet uses a prepared update statement with bound parameters. It modifies the `Price` column of the record.

```php
<?php
$host = '[SERVER NAME].postgres.database.azure.com';
$username = 'postgres';
$password = '[PASSWORD]';
$db_name = 'newdatabase';

//Establishes the connection
$conn = PostgreSQLi_init();
PostgreSQLi_ssl_set($conn, NULL, NULL, "C:\Tools\DigiCertGlobalRootCA.crt.pem", NULL, NULL);
PostgreSQLi_real_connect($conn, $host, $username, $password, $db_name, 5432, PostgreSQLI_CLIENT_SSL);
if (PostgreSQLi_connect_errno()) {
die('Failed to connect to PostgreSQL: '.PostgreSQLi_connect_error());
}

//Run the Update statement
$product_name = 'BrandNewProduct';
$new_product_price = 15.1;
if ($stmt = PostgreSQLi_prepare($conn, "UPDATE Products SET Price = ? WHERE ProductName = ?")) {
PostgreSQLi_stmt_bind_param($stmt, 'ds', $new_product_price, $product_name);
PostgreSQLi_stmt_execute($stmt);
printf("Update: Affected %d rows\n", PostgreSQLi_stmt_affected_rows($stmt));

//Close the connection
PostgreSQLi_stmt_close($stmt);
}

//Close the connection
PostgreSQLi_close($conn);
?>
```

After executing these commands, the message `Update: Affected 1 rows` should be displayed.

The final code snippet deletes a row from the table using the `ProductName` column value. It again uses a prepared statement with bound parameters.

```php
<?php
$host = '[SERVER NAME].postgres.database.azure.com';
$username = 'postgres';
$password = '[PASSWORD]';
$db_name = 'newdatabase';

//Establishes the connection
$conn = PostgreSQLi_init();
PostgreSQLi_ssl_set($conn, NULL, NULL, "C:\Tools\DigiCertGlobalRootCA.crt.pem", NULL, NULL);
PostgreSQLi_real_connect($conn, $host, $username, $password, $db_name, 5432, PostgreSQLI_CLIENT_SSL);
if (PostgreSQLi_connect_errno()) {
die('Failed to connect to PostgreSQL: '.PostgreSQLi_connect_error());
}

//Run the Delete statement
$product_name = 'BrandNewProduct';
if ($stmt = PostgreSQLi_prepare($conn, "DELETE FROM Products WHERE ProductName = ?")) {
PostgreSQLi_stmt_bind_param($stmt, 's', $product_name);
PostgreSQLi_stmt_execute($stmt);
printf("Delete: Affected %d rows\n", PostgreSQLi_stmt_affected_rows($stmt));
PostgreSQLi_stmt_close($stmt);
}

//Close the connection
PostgreSQLi_close($conn);
?>
```

Congratulations. An SSL-secured connection with Flexible Server was demonstrated, a table was created (DDL), and some CRUD operations were performed against that table (DML).

#### Application connectors

There are two major APIs to interact with PostgreSQL in PHP:

- *PostgreSQLi*, *PostgreSQLi* is an improvement over the earlier *PostgreSQL* API, which does not meet the security needs of modern applications.
- *PDO*, or *PHP Data Objects*, allows applications to access databases in PHP through abstractions, standardizing data access for different databases. PDO works with a database-specific driver, like *PDO_PostgreSQL*.

>![Tip](media/tip.png "Tip") **Tip:** *PostgreSQLi* and *PDO* are wrappers over the *PostgreSQLnd* or *libPostgreSQLclient* C libraries: it is highly recommended to use *PostgreSQLnd* as the default backend library due to its more advanced features. *PostgreSQLnd* is the default backend provided with PHP.

Flexible Server and Single Server are compatible with all PHP client utilities for PostgreSQL Community Edition.

#### Resources

1. [Create a PHP web app in Azure App Service](https://aka.ms/php-qs)
2. [Backend libraries for PostgreSQLi and PDO_PostgreSQL](https://www.php.net/manual/en/PostgreSQLinfo.library.choosing.php)
3. [Introduction to PDO](https://www.php.net/manual/en/intro.pdo.php)
4. [PDO_PostgreSQL Reference](https://www.php.net/manual/en/ref.pdo-PostgreSQL.php)
5. [Configure a PHP app for Azure App Service](https://docs.microsoft.com/azure/app-service/configure-language-php?pivots=platform-linux)
6. The [php.ini directives](https://www.php.net/manual/en/ini.list.php) allow for the customization of the PHP environment.
