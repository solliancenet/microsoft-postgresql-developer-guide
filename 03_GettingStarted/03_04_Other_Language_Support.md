### Other notable languages for PostgreSQL apps

Like the other language support guides, Flexible Server is compatible with all PostgreSQL clients that support PostgreSQL Community Edition. Microsoft provides a [curated list of compatible clients for PostgreSQL Single Server](https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-compatibility).

#### .NET

.NET applications typically use ORMs to access databases and improve portability: two of the most popular ORMs are Entity Framework (Core) and Dapper.

Using PostgreSQL with Entity Framework (Core) requires [PostgreSQL Connector/NET](https://github.com/PostgreSQL/PostgreSQL-connector-net), which is compatible with Single Server. Learn more [from the PostgreSQL documentation](https://dev.PostgreSQL.com/doc/connector-net/en/connector-net-entityframework-core.html) about support for Entity Framework (Core).

Microsoft has also validated that PostgreSQL Single Server is compatible with the [Async PostgreSQL Connector for .NET](https://github.com/PostgreSQL-net/PostgreSQLConnector). This connector works with both Dapper and Entity Framework (Core).

#### Ruby

The [*PostgreSQL2*](https://github.com/brianmario/PostgreSQL2) library, compatible with Single Server, provides PostgreSQL connectivity in Ruby by referencing C implementations of the PostgreSQL connector.
