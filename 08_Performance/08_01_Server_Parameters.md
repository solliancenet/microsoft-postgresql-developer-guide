## Server Parameters

PostgreSQL server parameters allow database architects and developers to optimize the PostgreSQL engine for their specific application workloads.
One of the advantages of Flexible Server is the large number of server parameters exposed by the service. Some important exposed parameters are listed below, but storage and compute tiers affect the possible parameter values. Consult the [Microsoft documentation](https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/concepts-server-parameters) for more information.

Some parameters that cannot be configured at the server level can be configured at the connection level. Moreover, *dynamic* parameters can be changed without restarting the server, while modifying *static* parameters warrants a restart.

### Tools to Set Server Parameters

Standard Azure management tools, like the Azure portal, Azure CLI, and Azure PowerShell, allow for configuring server parameters.

- [Use Azure portal to configure server parameters](https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-configure-server-parameters-portal)
- [User Azure CLI to configure server parameters](https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-configure-server-parameters-cli)

### Server Parameters best practices

The server parameters below may provide performance improvements for an application workload; however, before modifying these values in production, verify that they yield performance improvements without compromising application stability.

TODO