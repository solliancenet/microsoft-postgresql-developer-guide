## Azure Database for PostgreSQL Flexible Server upgrade process

Since Azure Database for PostgreSQL Flexible Server is a PaaS offering, administrators are not responsible for the management of the updates on the operating system or the PostgreSQL software. Also, administrators need to plan for database version upgrades. Cloud providers are continuously upgrading and improving their supported offerings. Older versions eventually fall into the unsupported status.

![Warning](media/warning.png) **Warning:** It is important to be aware the upgrade process can be random. During deployment, the PostgreSQL server workloads will stop be processed on the server. Plan for these downtimes by rerouting the workloads to a read replica in the event the particular instance goes into maintenance mode.

>![Note icon](media/note.png "Note") **Note:** This style of failover architecture may require changes to the applications data layer to support this type of failover scenario. If the read replica is maintained as a read replica and is not promoted, the application will only be able to read data and it may fail when any operation attempts to write information to the database.

The [planned maintenance notification](https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-monitoring#planned-maintenance-notification) feature will inform resource owners up to 72 hours in advance of installation of an update or critical security patch. Database administrators may need to notify application users of planned and unplanned maintenance.

>![Note icon](media/note.png "Note") **Note:** Azure Database for PostgreSQL Flexible Server maintenance notifications are incredibly important. The database maintenance can take the database and connected applications down for a brief period of time.

### Version Policy

Each major version of PostgreSQL will be supported by Azure Database for PostgreSQL Flexible Server from the date on which Azure begins supporting the version until the version is retired by the PostgreSQL community.

Before PostgreSQL version 10, the PostgreSQL versioning policy considered a major version upgrade to be an increase in the first or second number. For example, 9.5 to 9.6 was considered a major version upgrade. As of version 10, only a change in the first number is considered a major version upgrade. For example, 10.0 to 10.1 is a minor release upgrade. Version 10 to 11 is a major version upgrade.

## Running retired versions

As the community won't be releasing any further bug fixes or security fixes, Azure Database for PostgreSQL Flexible Server won't patch the retired database engine for any bugs or security issues, or otherwise take security measures with regard to the retired database engine. You might experience security vulnerabilities or other issues as a result. However, Azure will continue to perform periodic maintenance and patching for the host, OS, containers, and any other service-related components.

In the extreme event of a serious threat to the service caused by the PostgreSQL database engine vulnerability identified in the retired database version, Azure might choose to stop your database server to secure the service. In such case, you will be notified to upgrade the server before bringing the server online.

For the latest information on the versioning policy, see [Azure Database for PostgreSQL versioning policy](https://learn.microsoft.com/azure/postgresql/single-server/concepts-version-policy)
