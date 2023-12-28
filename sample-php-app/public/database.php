<?php

$servername = "localhost";
$username = "postgres";
$password = "Solliance123";
$dbname = "ContosoStore";
$port = "5432"

// connection string with SSL certificate files
$conn_str  = 'host=' . $servername . ' ';
$conn_str .= 'port=' . $port . ' ';
$conn_str .= 'dbname=' . $dbName . ' ';
$conn_str .= 'user=' . $username . ' ';
$conn_str .= 'password=' . $password . ' ';
//$conn_str .= 'sslmode=verify-full ';
//$conn_str .= 'sslcert=etc/apache/ssl/postgresql.crt ';
//$conn_str .= 'sslkey=etc/apache/ssl/postgresql.key ';
//$conn_str .= 'sslrootcert=etc/apache/ssl/root.key ';

// attempt connection
$conn = pg_connect($conn_str); //or die('Cannot connect to database.');

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT count(*) FROM users";

$result = $conn->query($sql);

if ($result !== false && $result->num_rows > 0) {

  echo $result->num_rows . " results";

} else {
  echo "0 results";
}

$conn->close();

?>
