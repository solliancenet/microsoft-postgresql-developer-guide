## Create a Flexible Server database

The focus of this guide is on demonstrating practical uses of PostgreSQL Flexible Server, such as querying Flexible Server with common languages and administrative tools. This section illustrates how to deploy PostgreSQL Flexible Server using various Azure management tools in preparation to follow the guide application samples.

### Azure portal

Azure provides a [Quickstart document](https://learn.microsoft.com/azure/postgresql/flexible-server/quickstart-create-server-portal) for users who want to use the Azure portal to provision Flexible Server. While this is a great opportunity to explore the configuration parameters of Azure Database for Flexible Server, IaC approaches, like the imperative Azure CLI or the declarative ARM template, are preferable to create deployments that can easily be replicated in other environments.

### Azure CLI

The Azure CLI `az postgresql flexible-server` set of commands is very robust. [Azure's quickstart guide](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/quickstart-create-server-cli) demonstrates how the `az postgresql flexible-server create` and `az postgresql flexible-server db create` commands can create a new instance.

>![Note icon](media/note.png "Note") **Note:** It is possible to exercise greater control over these commands by reviewing the documentation for the [`flexible-server create`](https://learn.microsoft.com/cli/azure/postgres/flexible-server?view=azure-cli-latest#az-postgres-flexible-server-create) and [`flexible-server db create`](https://learn.microsoft.com/cli/azure/postgres/flexible-server/db?view=azure-cli-latest#az-postgres-flexible-server-db-create) commands.

Running the CLI commands from [Azure Cloud Shell](https://shell.azure.com) is preferable, as the context is already authenticated with Azure.

### ARM template

Azure provides a [Quickstart document](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/quickstart-create-server-arm-template) with a basic ARM template for a Flexible Server deployment. We have also provided an ARM template to support the applications explored in this guide (https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-0-create-development-vm/basic-template/template.json). The Azure sample template requires additional parameters to run. It can be deployed with the `New-AzResourceGroupDeployment` PowerShell command in the Quickstart or the `az deployment group create` CLI command.  You can also paste it into a new deployment in the Azure Portal.

### Bicep

Bicep is a declarative language for describing and deploying Azure resources. It offers concise syntax, reliable type safety, and support for code reuse. Bicep is a domain-specific language (DSL) used to deploy Azure resources declaratively. It is a transparent abstraction over Azure Resource Manager (ARM) templates. Bicep uses the same template language as ARM and JSON but with a cleaner syntax and improved type safety. Bicep is a great way to deploy Azure resources, including Azure Database for PostgreSQL Flexible Server. Azure provides a [Quickstart document](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/quickstart-create-server-bicep) with Bicep code for a Flexible Server deployment.

### Terraform

Terraform is a third-party open-source infrastructure as code software tool that enables you to safely and predictably create, change, and improve infrastructure. Azure documentation provides an [article](https://learn.microsoft.com/azure/developer/terraform/deploy-postgresql-flexible-server-database?tabs=azure-cli) outlining Terraform code for a Flexible Server deployment.

### Default settings

When creating an instance using the tools above, without passing any additional configuration parameters, you will get an instance with the following defaults:

- Default connectivity method is Public access 
- The same location as your resource group
- Auto-generated admin username and admin password (which you should save in a secure place)
- A default database named "flexibleserverdb"
- Service defaults for remaining server configurations: 
  - Compute tier (General Purpose)
  - Compute size/SKU (Standard_D2s_v3 - 2 vCore, 8 GB RAM)
  - Backup retention period (7 days)
  - PostgreSQL version (13)

Reference the [Compute and storage options in Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-compute-storage) for more information on all the available compute, storage and memory options available for Azure Database for PostgreSQL.  As a summary, your options range from:

- vCores : 1-96
- Memory: 2GB to 672GB
- Storage : 32Gb to 32TB
- IOPS : 120 to 20,000

As you can see, Azure Database for PostgreSQL can accomidate a very large set of use cases and workloads.

### Storage

Azure Database for PostgreSQL - Flexible Server uses [Azure managed disks](https://learn.microsoft.com/en-us/azure/virtual-machines/disks-types). The default behavior is to increase the disk size to the next premium tier. This increase is always double in both size and cost, regardless of whether you start the storage scaling operation manually or through storage autogrow. Enabling storage autogrow is valuable when you're managing unpredictable workloads, because it automatically detects low-storage conditions and scales up the storage accordingly.  

> NOTE: After you increase the storage size, you can't go back to a smaller storage size.

There are [some limitations](https://learn.microsoft.com/en-us/azure/virtual-machines/disks-types) when working with Azure managed disk storage.

Although currently in preview and with [some limitations](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-compute-storage#premium-ssd-v2-early-preview-limitations), Premium SSD v2 will become generally available for Azure Database for PostgreSQL and will increase the performance IOPS from 20,000 max to 80,000 and the disk size to 64TB.

Another advantage of Premium SSD v2 is they come with 3000 IOPS and 125MB/s free of charge.

### Networking

The connectivity method cannot be changed after creating the server. For example, if you selected Private access (VNet Integration) during creation, then you cannot change it to Public access (allowed IP addresses) after creation. We highly recommend creating a server with Private access to securely access your server using VNet Integration.

Connections to Azure Database for PostgreSQL communicate over port 5432. If you try to connect from within a corporate network, outbound traffic over port 5432 might not be allowed. If this is the case, you can't connect to your server unless your IT department opens port 5432. Notice that if you enable PgBouncer on your instance of Flexible Server and want to connect through it, because it runs on port 6432, it is that port that your IT department must open for outbound traffic.

When attempting to connect to the instance, if the connection failed, try these simple solutions:

- Check if port 5432 is accessible.
- If your server administrator user name and password are correct.
- If you have configured firewall rule for your client machine.
- If you have configured firewall rule for the server instance.
- If you've configured your server with private access in virtual networking, make sure - your client machine is in the same virtual network.

### SSL

Once you have an Azure Database for PostgreSQL instance created, you will want to connect to it.  The next few sections will show you how to connect from various languages.  All of them will have the option to connect with or without SSL.

Most of the libraries support SSL connectivity, but modifying your applications to support SSL connectivity can be non-trival.

In all cases, you will need to download the SSL certificate from `https://dl.cacerts.digicert.com/DigiCertGlobalRootCA.crt.pem`.  How your store and reference the certificate will be the varying factor.

For example, with `psql`, your connection string will look something like the following:

```cmd
psql --host=mydemoserver-pg.postgres.database.azure.com --port=5432 --username=myadmin --dbname=postgres --set=sslmode=require --set=sslrootcert=DigiCertGlobalRootCA.crt.pem
```

Notice the two additional command line switches that enable SSL and tell the tool where the certificate resides.

You can read more about TLS and SSL by referencing [Secure connectivity with TLS and SSL](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-networking-ssl-tls).

### Admin users

While creating a server, you set up the credentials for your admin user. The admin user is the highest privilege user you have on the server. It belongs to the role azure_pg_admin. This role does not have full superuser permissions.

The PostgreSQL superuser attribute is assigned to the azure_superuser, which belongs to the managed service. You do not have access to this role.

An Azure Database for PostgreSQL server has default databases:

- postgres - A default database you can connect to once your server is created.
- azure_maintenance - This database is used to separate the processes that provide the managed service from user actions. You do not have access to this database.