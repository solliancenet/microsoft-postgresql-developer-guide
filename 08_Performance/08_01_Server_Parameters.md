## Server Parameters

PostgreSQL server parameters allow database architects and developers to optimize the PostgreSQL engine for their specific application workloads.
One of the advantages of Flexible Server is the large number of server parameters exposed by the service. Some important exposed parameters are listed below, but storage and compute tiers affect the possible parameter values (such as `shared_buffers`).

Since Azure Database for PostgreSQL is a managed database service, users are not provided host or OS access to view or modify configuration files such as `postgresql.conf`. The content of the file is automatically updated based on parameter changes in the Server Parameters page.

Some parameters that cannot be configured at the server level can be configured at the connection level. Moreover, *dynamic* parameters can be changed without restarting the server, while modifying *static* parameters warrants a restart.

### Tools to Set Server Parameters

Standard Azure management tools, like the Azure portal, Azure CLI, and Azure PowerShell, allow for configuring server parameters.

- [Use Azure portal to configure server parameters](https://learn.microsoft.com/azure/postgresql/flexible-server/howto-configure-server-parameters-using-portal)
- [User Azure CLI to configure server parameters](https://learn.microsoft.com/azure/postgresql/flexible-server/howto-configure-server-parameters-using-cli)

### Server Parameters best practices

The server parameters `max_connections` and `work_mem` may provide performance improvements for an application workload; however, before modifying these values in production, verify that they yield performance improvements without compromising application stability.

For more information on server parameters, reference [Server parameters in Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-server-parameters).