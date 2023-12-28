## Migrate to Azure Database for Flexible Server

### From Single Server to Flexible Server

As Single Server will be retired in the future, you will at some point need to move your instances to Flexible Server.  There are several ways to do this including:

- Database tools
  - [Azure Database Migration Service (DMS)](https://learn.microsoft.com/azure/dms/tutorial-postgresql-azure-postgresql-online)
  - [pgcopydb](https://github.com/dimitri/pgcopydb)
  - [pg_dump and dp_restore](https://learn.microsoft.com/azure/postgresql/migrate/how-to-migrate-using-dump-and-restore)
- [Azure Portal](https://learn.microsoft.com/azure/postgresql/migrate/how-to-migrate-single-to-flexible-portal)
- [Azure CLI](https://learn.microsoft.com/azure/postgresql/migrate/how-to-migrate-single-to-flexible-cli)

When migrating, to Flexible Server, you will need to ensure you have met all the [migration prerequisites](https://learn.microsoft.com/azure/postgresql/migrate/concepts-single-to-flexible#migration-prerequisites).

### From on-premises to Flexible Server

Like the migration from Single Server, migrations from sources running on-premises will require the movement of database artifacts and data.

Again, verify that the source system meets the migration requirements listed in the [Azure documentation](https://learn.microsoft.com/azure/postgresql/migrate/concepts-single-to-flexible#migration-prerequisites).

In addition to the migration pre-requisities, you must also ensure that a network path exists between the on-premises instance/tool and the remote Azure Database for PostgreSQL instance.  This can be more complicated than at first glance depending on a number of different network topology possibilies.

### Offline vs Online migrations

For smaller and less used databases, the migration process is likely to be quick and effortless.  However, in larger and more heavily used environments, the choice of how you migrate will be a vital decision to ensure applications and end users are not subject to lengty downtime and productivity loss.

You can choose between the two following paths:

- **Offline Migration** – In an offline migration, all applications connecting to your single server are stopped and the database(s) is copied to flexible server.

- **Online Migration** - In an online migration, applications connecting to your single server aren't stopped while database(s) are copied to flexible server. The initial copy of the databases is followed by replication to keep flexible server in sync with the single server. A cutover is performed when the flexible server is in complete sync with the single server resulting in minimal downtime.
