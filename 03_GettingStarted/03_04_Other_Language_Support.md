### Other notable languages for PostgreSQL apps

#### .NET

This wouldn't be a comprehensive guide without some mention of .NET.  You can utilize the popular framework called `Npgsql` from .NET applications to make calls to Azure Database for PostgreSQL instances.

For an example, reference [Quickstart: Use .NET (C#) to connect and query data in Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/connect-csharp).

#### Others

Like the other language support guides, Flexible Server is compatible with all PostgreSQL clients that support PostgreSQL. Microsoft provides a curated list of compatible [connection libraries for PostgreSQL Flexible Server](https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-connection-libraries) including: Python, PHP, Node.js, Java, Ruby, Go, C#/.NET, ODBC, C and C++.

#### Microsoft Entra Authentication

In addition to basic PostgreSQL usernames and passwords, you can utilize Azure Entra authentication to login to the PostgreSQL instance.  This must be enabled via the Portal, Azure CLI, PowerShell, or REST APIs.

Once enabled, you can utilize basic Microsoft Entra flows to generate access tokens that are then used as the password for the connection.

There are some drawbacks to utilizing this approach.  One such drawback is the token will expire typically after about 60 minutes.  Unless you have a mechanism to re-try and get a new token, you may run into broken application flows.

For more information, reference [Microsoft Entra authentication with PostgreSQL Flexible Server](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-azure-ad-authentication).

#### Managed Service Identities (MSI)

When Microsoft Entra Authentication is enabled, you can assign other service identities to be able to access the PostgreSQL instance.  These can be assigned in the same way as assigning Entra Administrators or they can be given granular permissions.

When working with MSI, be sure you follow the steps for Azure Database for Flexible Server and not the Azure Database for Single Server.  It can be confusing when browsing articles on the internet or even the Microsoft Docs pages.

#### SCRAM

The [Salted Challenge Response Authentication Mechanism (SCRAM)](https://datatracker.ietf.org/doc/html/rfc5802) greatly improves the security of password-based user authentication by adding several key security features that prevent rainbow-table attacks, man-in-the-middle attacks, and stored password attacks, while also adding support for multiple hashing algorithms and passwords that contain non-ASCII characters.

Your client driver must be able to support SCRAM in order to utilize it.  You can find a list of drivers and their ability to support SCRAM [here](https://wiki.postgresql.org/wiki/List_of_drivers).  Most, if not all, of the latest versions of the clients support SCRAM.
