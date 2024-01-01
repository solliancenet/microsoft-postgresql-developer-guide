# 08 / Performance and Optimization

After organizations migrate their PostgreSQL workloads to Azure, they unlock turnkey performance monitoring solutions, scalability, and the benefits of Azure's global footprint. Operation teams must establish performance baselines before fine-tuning their PostgreSQL instances to ensure that changes, especially those that require application downtime, are worth doing. If you can, **simulate your workload in a test environment** and make adjustments in test before implementing changes in a production environment.

Before jumping into specific and time consuming performance enhancements/investigation, there are some general tips that can improve performance in your environment that this section will explore.

## General performance tips

The following are some basic tips for how to increase or ensure the performance of your Azure Database for PostgreSQL Flexible Server applications and database workloads:

- Ensure the input/output operations per second (IOPS) are sufficient for the application needs. Keep the IO latency low.
- Create and tune the table indexes. Avoid full table scans.
- Performance regular database maintenance.
- Make sure the application/clients (e.g. App Service) are physically located as close as possible to the database. Reduce network latency.
- Use accelerated networking for the application server if you use a Azure virtual machine, Azure Kubernetes, or App Services.
- Use connection pooling when possible. Avoid creating new connections for each application request. Balance your workload to multiple read replicas as demand requires without any changes in application code.
- Set timeouts when creating transactions.
- Set up a read replica for read-only queries and analytics.
- Consider using query caching solution like Heimdall Data Proxy. Limit connections based on per user and per database. Protect the database from being overwhelmed by a single application or feature.
- Temporarily scale your Azure Database for PostgreSQL Flexible Server resources for taxing tasks. Once your task is complete, scale it down.

## Monitoring hardware and query performance

As previously discussed in the monitoring section of this guide, monitoring metrics such as the `cpu_percent` or `memory_percent` can be important when deciding to upgrade the database tier. Consistently high values for extended periods of time could indicate a tier upgrade is necessary.

If CPU and memory do not seem to be the issue, administrators can explore database-based options such as indexing and query modifications for poor-performing queries. In order to gain access to this data, you should follow the steps in the [Troubleshoot and identify slow-running queries in Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-identify-slow-queries) documentation.

Once enabled, you can utilize wither the QueryStore or AzureDiagnostics logs to find poor-performing queries. Please note that verbose logging tends to cause performance issues, especially if you log ALL statements or set `log_min_duration_statement` to 0. This impacts both the server performance and storage consumption. It is better to set the duration to something more managable such as `1000` or higher.  This implies that a query that takes longer than 1 second should be logged.

The following psql statement can help you find slow queries:

```sql
SELECT query_sql_text
FROM query_store.query_texts_view
WHERE query_text_id = <add query id identified>;
```

The following KQL query can help you find the top slow running queries:

```kql
AzureDiagnostics
| where ResourceProvider == "MICROSOFT.DBFORPostgreSQL"
| where Category == 'PostgreSQLLogs'
| project TimeGenerated, LogicalServerName_s, event_class_s, start_time_t , query_time_d, sql_text_s
| top 5 by query_time_d desc
```

In addition to the server parameters and extensions, Azure Database for PostgreSQL has some other options to collect query stats including the **pg_stat_statements** extension.  

## Upgrading the tier

*Know your workload!* The Azure portal and the CLI can be used to scale between the `Burstable`, `General Purpose`, and `Memory Optimized` tiers. Tier scaling requires restarting the Flexible Server instance, causing 60-120 seconds of downtime. If your application does not require a significant compute, use the `Burstable` SKU. When your application requires more performance during certain times, Azure Database for PostgreSQL Flexible Server can increase performance automatically and reduce when you do not need it. Organizations can save operational costs.

## Scaling the server

Azure Database for PostgreSQL Flexible Server supports both vertical and horizontal scaling options.

### Vertical Scaling

You can scale vertically by adding more resources to the Flexible server instance, such as increasing the instance-assigned number of CPUs and memory. Network throughput of your instance depends on the values you choose for CPU and memory. Once a Flexible server instance is created, you can independently change the CPU (vCores), the amount of storage, and the backup retention period. The number of vCores can be scaled up or down. The storage size however can only be increased. In addition, You can scale the backup retention period up or down from 7 to 35 days. The resources can be scaled using multiple tools, for instance, Azure portal or the Azure CLI.

Within the tier, it is possible to scale cores and memory to the minimum and maximum [limits](https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-pricing-tiers) allowed in that tier. If monitoring shows a continual maxing out of CPU or memory, scale up to meet demand.

You can also adjust the IOPS for better transactions per second (TPS) performance. You can use an [Azure CLI script](https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/scripts/sample-cli-monitor-and-scale) to monitor relevant metrics and scale the server.

### Horizontal Scaling

You scale horizontally by creating read replicas. Read replicas let you scale your read workloads onto separate flexible server instance without affecting the performance and availability of the primary instance.

### Near-zero downtime scaling

When updating your Flexible server in scaling scenarios, we create a new copy of your server (VM) with the updated configuration, synchronize it with your current one, briefly switch to the new copy with a 30-second interruption, and retire the old server, all at no extra cost to you.

This process allows for seamless updates while minimizing downtime and ensuring cost-efficiency. This scaling process is triggered when changes are made to the storage and compute tiers, and the experience remains consistent for both (HA) and non-HA servers. This feature is enabled in all Azure regions* and there's no customer action required to use this capability.

There are some situations where near-zero scaling may not work and the regular scaling operation would need to be taken.  See [Limitations](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-scaling-resources#limitations).

## Azure Database for PostgreSQL Flexible Server memory recommendations

An Azure Database for PostgreSQL Flexible Server performance best practice is to allocate enough RAM so that your working set resides almost completely in memory. Check if the memory percentage used is reaching the limits.

Do not be surprised. Set up alerts on thresholds to ensure that notifications can be sent to administrators before servers reach limits. Based on the defined limits, check if scaling the database SKU to a higher compute size or to a better pricing tier increases performance enough to meet the workload requirements.

For information on monitoring a DB instance's metrics, see [PostgreSQL DB Metrics](https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-monitoring#metrics).

## Moving regions

TODO - move to new style

It is possible to move a geo-redundant Flexible Server instance to a [paired Azure region](https://docs.microsoft.com/azure/availability-zones/cross-region-replication-azure) through geo-restore. Geo-restore creates a new Flexible Server instance in the paired Azure region based on the current state of the database.

Geo-restore can be used to recover from a service outage in the primary region.

## Server parameters

As a managed service for Postgres, the configurable parameters in Azure Database for PostgreSQL are a subset of the parameters in a local Postgres instance (For more information on Postgres parameters, see the PostgreSQL documentation). Your Azure Database for PostgreSQL server is enabled with default values for each parameter on creation. Some parameters that would require a server restart or superuser access for changes to take effect cannot be configured by the user.

![This image shows PostgreSQL server parameters in the Azure portal.](media/server_parameters.png "PostgreSQL server parameters")

As part of the migration, the on-premises [server parameters](https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/concepts-server-parameters) were likely modified to support a fast egress. Also, modifications were made to the Azure Database for PostgreSQL Flexible Server parameters to support a fast ingress. The Azure server parameters should be set back to their original on-premises workload-optimized values after the migration.

However, be sure to review and make server parameter changes that are appropriate for the workload and the environment. Some values that were great for an on-premises environment may not be optimal for a cloud-based environment. When migrating the current on-premises parameters to Azure, verify that they can be set.

Some Azure Database for PostgreSQL Flexible Server parameters cannot be modified. Verify the strategy before making environment assumptions.

## Upgrade Azure Database for PostgreSQL Flexible Server versions

Sometimes, just upgrading versions may be the solution to an issue. Flexible Server currenlty supports PostgreSQL versions 11 through 16. Migrating from on-premises PostgreSQL to PostgreSQL Flexible Server 16 delivers some major performance improvements.

Azure Database for PostgreSQL Flexible Server Postgres has now introduced in-place major version upgrade feature that performs an in-place upgrade of the server with just a click. In-place major version upgrade simplifies the upgrade process minimizing the disruption to users and applications accessing the server. In-place upgrades are a simpler way to upgrade the major version of the instance, as they retain the server name and other settings of the current server after the upgrade, and don't require data migration or changes to the application connection strings. In-place upgrades are faster and involve shorter downtime than data migration.

There are some issues to be aware of when utilizing in-place upgrades, some notible ones include:

- Flexible Server uses `pg_upgrade` utility to perform in-place major version upgrades and provides the flexibility to skip versions and upgrade directly to higher versions.
- The process of performing an in-place major version upgrade is an offline operation that results in a brief period of downtime. Typically, the downtime is under 15 minutes, although the duration may vary depending on the number of system tables involved.
- Review the [limitations](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-major-version-upgrade#limitations)

For more information, review [Major Version Upgrade for PostgreSQL Flexible Server](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-major-version-upgrade).

## Customizing the application container runtime

When using containers for your PostgreSQL and container based applications, the platform choice has a huge impact on your performance limits. In most cases, creating a custom application container (such as with PHP) can improve performance versus the out-of-the-box official platform containers.  It is important to determine if the effort of building a custom image will be worth the performance gain from the work.  Also, keep in mind recent versions of containers tend to perform better than older versions.

![Read more icon](media/read-more.png "Read more")  [Container insights overview](https://docs.microsoft.com/azure/azure-monitor/containers/container-insights-overview)

## Running Benchmarks

There are several tools that can be used to benchmark environments. Here are a few that can be used to determine how well an instance is performing:

- [DBT2 Benchmark](https://downloads.PostgreSQL.com/source/dbt2-0.37.50.16.tar.gz) - DBT2 is an open source benchmark that mimics an OLTP application for a company owning large amounts of warehouses. It contains transactions to handle New Orders, Order Entry, Order Status, Payment and Stock handling

- [SysBench Benchmark Tool](https://downloads.PostgreSQL.com/source/sysbench-0.4.12.16.tar.gz) - Sysbench is a popular open source benchmark to test open source DBMSs.

More Common sets of tests typically utilize TPC benchmarks such as [TPC-H](https://www.tpc.org/tpch/) but there are many more [types of tests](https://www.tpc.org/information/benchmarks5.asp) that can be run against the environment to test against specific workloads and patterns.
