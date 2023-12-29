#install chocolaty
$item = get-item "C:\ProgramData\chocolatey\choco.exe" -ea silentlycontinue;

if (!$item)
{
    write-host "Installing Chocolaty";

    $env:chocolateyUseWindowsCompression = 'true'
    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

choco feature enable -n allowGlobalConfirmation

#install azure powershell
choco install az.powershell

#install psqlodbc
choco install psqlodbc

Connect-AzAccount -identity

[void][System.Reflection.Assembly]::LoadWithPartialName("PostgreSQL.Data") 

$server = $env:DB_HOST;
$database = $env:DB_DATABASE;
$user = $env:DB_USER;
$password = $env:DB_PASSWORD;

$server = "";
$database = "contosostore";
$user = "wsuser";
$password = "Solliance123";

#run the queries...
$myconnection = New-Object System.Data.Odbc.OdbcConnection;

$myconnection.ConnectionString = "DRIVER={PostgreSQL Unicode};server=$server;user id=$user;password=$password;database=$database;pooling=false"

$myconnection.Open()

$mycommand = New-Object PostgreSQL.Data.PostgreSQLClient.PostgreSQLCommand
$mycommand.Connection = $myconnection
$mycommand.CommandText = "SHOW DATABASES"
$myreader = $mycommand.ExecuteReader();

$res = "";

while($myreader.Read())
{ 
    $res += $myreader.GetString(0) 
}

$myconnection.Close()

#write out to a file...
add-content "data.txt" $res;