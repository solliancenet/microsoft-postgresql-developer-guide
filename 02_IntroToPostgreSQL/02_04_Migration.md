## Migrate to Flexible Server

### From Single Server to Flexible Server

As Single Server will be retired in the future, you will at some point need to move your instances to Flexible Server.  There are several ways to do this including:

- Database tools
  - [Azure Database Migration Service (DMS)](https://learn.microsoft.com/en-us/azure/dms/tutorial-postgresql-azure-postgresql-online)
  - [pgcopydb](https://github.com/dimitri/pgcopydb)
  - [pg_export and pg_import](https://learn.microsoft.com/en-us/azure/postgresql/migrate/how-to-migrate-using-dump-and-restore)
  - pg_dump and dp_restore
- [Azure Portal](https://learn.microsoft.com/en-us/azure/postgresql/migrate/how-to-migrate-single-to-flexible-portal)
- [Azure CLI](https://learn.microsoft.com/en-us/azure/postgresql/migrate/how-to-migrate-single-to-flexible-cli)

When migrating, to Flexible Server, you will need to ensure you have met all the [migration prerequisites](https://learn.microsoft.com/en-us/azure/postgresql/migrate/concepts-single-to-flexible#migration-prerequisites).

### From on-premises to Flexible Server

Like the migration from Single Server, migrations from sources running on-premises will require the movement of database artifacts and data.

Again, verify that the source system meets the migration requirements listed in the [Azure documentation](https://learn.microsoft.com/en-us/azure/postgresql/migrate/concepts-single-to-flexible#migration-prerequisites).

### Offline vs Online migrations

TODO