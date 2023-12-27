$sourcePath = "c:\labfiles\microsoft-postgresql-developer-guide\artifacts\sample-php-app";
$targetPath = "c:\inetpub\wwwroot\";

# create a new IIS directory
mkdir $targetPath;

# copy the php files
copy-item -Path "$sourcepath" "$targetpath"

#deploy the database
$username = "root";
$password = "";
$server = "localhost";
$database = "ContosoStore";

cd "C:\Program Files\PostgreSQL\PostgreSQL Workbench 8.0 CE"

#create the database
.\PostgreSQL -h $server -u $username -e "create database $database"

#setup the schema
.\PostgreSQL -h $server -u $username $database -e "source $sourcePath/database/schema.sql"

#add the data
