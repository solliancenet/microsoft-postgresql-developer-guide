### Other notable languages for PostgreSQL apps

#### .NET

This would not be a comprehensive guide without some mention of .NETYou can utilize the popular framework called `Npgsql` from .NET applications to make calls to Azure Database for PostgreSQL Flexible Server instances.

For an example, reference [Quickstart: Use .NET (C#) to connect and query data in Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/azure/postgresql/flexible-server/connect-csharp).

#### Node.js

You can create PostgreSQL integrated Node.js applicationsThis requires installing `pg`, which is a PostgreSQL client for Node.jsTo do so, run the node package manager (npm) for JavaScript from your command line to install the pg client.

```Bash
npm install pg
```

Verify the installation by listing the packages installed.

```Bash
npm list
```

#### Ruby

You can connect to PostgreSQL using the Ruby module `pg`. It can be downloaded from [here](https://rubygems.org/gems/pg/).

#### Go

Install Go and the [Pure Go Postgres driver (pq)](https://github.com/lib/pq) on your own machine. Depending on your platform the installation will vary.

#### Rust

 You can use the PostgreSQL driver for Rust to connect and query data in Azure Database for PostgreSQL. It can be downloaded from [here](https://github.com/sfackler/rust-postgres).

#### Others

Like the other language support guides, Flexible Server is compatible with all PostgreSQL clients that support PostgreSQL. Microsoft provides a curated list of compatible [connection libraries for PostgreSQL Flexible Server](https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-connection-libraries).
