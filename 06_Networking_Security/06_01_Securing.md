## Security

Moving to cloud-based services does not mean the entire Internet will have access to it at all times. Azure provides best-in-class security that ensures data workloads are continually protected from bad actors and rogue programs. Additionally, Azure provides several certifications that ensure your resources are compliant with local and industry regulations, an important factor for many organizations today.

Organizations must take proactive security measures to protect their workloads in today's geopolitical environment.  Azure simplifies many of these complex tasks and requirements through the various security and compliance resources provided out of the box.  This section will focus on many of these tools.

### Encryption

Azure Database for PostgreSQL Flexible Server offers various encryption features, including encryption for data, backups, and temporary files created during query execution.

Data stored in the Azure Database for PostgreSQL Flexible Server instances are encrypted at rest by default. Any automated backups are also encrypted to prevent potential leakage of data to unauthorized parties. This encryption is typically performed with a key generated when the Azure Database for PostgreSQL Flexible Server instance is created.

Encryption of these artifacts is done using a Microsoft managed key by default, however it is possible to use your own customer managed key. This can be accomplished by using Azure Key Vault and managed identities.  The key must be contiuously accessible or the server will go into an `inaccessible` state.

Reference [Azure Database for PostgreSQL - Flexible Server Data Encryption with a Customer-managed Key](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-data-encryption) for the latest information and [Create and manage Azure Database for PostgreSQL - Flexible Server with data encrypted by Customer Managed Keys (CMK) using Azure portal](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-create-server-customer-managed-key-portal).

In addition to be encrypted at rest, data can be encrypted during transit using SSL/TLS. SSL/TLS is enabled by default. As previously discussed, it may be necessary to [modify the applications](https://learn.microsoft.com/azure/postgresql/flexible-server/howto-configure-ssl) to support this change and configure the appropriate TLS validation settings. It is possible to allow insecure connections for legacy applications or enforce a minimum TLS version for connections, **but this should be used sparingly and in highly network-protected environments**. Flexible Server's TLS enforcement status can be set through the `require_secure_transport` PostgreSQL server parameter. Consult the guides below.

- [Flexible Server](https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-connect-tls-ssl)

### Microsoft Sentinel

Many of the items discussed thus far operate in their sphere of influence and are not designed to work directly with each other. Every secure feature provided by Microsoft Azure and corresponding applications, like Microsoft Entra, contains a piece of the security puzzle.  

Disparate components require a holistic solution to provide a complete picture of the security posture and the automated event remediation options.  

[Microsoft Sentinel](https://docs.microsoft.com/azure/sentinel/overview) is the security tool that provides the needed connectors to bring all your security log data into one place and then provide a view into how an attack may have started.

Microsoft Sentinel works with Azure Log Analytics and other Microsoft security services to provide a log storage, query, and alerting solution.  Through machine learning, artificial intelligence, and user behavior analytics (UEBA), Microsoft Sentinel provides a higher understanding of potential issues or incidents that may not have seen with a disconnected environment.

### Microsoft Purview

Data privacy has evolved into a organizational priority over the past few years. Determining where sensitive information lives across your data estate is a requirement in today's privacy-centered society.

[Microsoft Purview](https://docs.microsoft.com/azure/purview/overview) can scan your data estate, including your Azure Database for PostgreSQL Flexible Server instances, to find personally identifiable information or other sensitive information types.  This data can then be analyzed, classified and lineage defined across your cloud-based resources.

### Security baselines

In addition to all the topics discussed above, the Azure Database for PostgreSQL Flexible Server [security baseline](https://learn.microsoft.com/azure/postgresql/flexible-server/security-baseline) is a basic set of potential tasks that can be implemented on your Azure Database for PostgreSQL Flexible Server instances to further solidify your security posture.

### Compliance

To help customers achieve compliance with national/regional and industry specific regulations and requirements Azure Database for PostgreSQL - Flexible Server build upon Microsoft Azure’s compliance offerings to provide the most rigorous compliance certifications to customers at service general availability. To help customers meet their own compliance obligations across regulated industries and markets worldwide, Azure maintains the largest compliance portfolio in the industry both in terms of breadth (total number of offerings), as well as depth (number of customer-facing services in assessment scope). Azure compliance offerings are grouped into four segments: globally applicable, US government, industry specific, and region/country specific. Compliance offerings are based on various types of assurances, including formal certifications, attestations, validations, authorizations, and assessments produced by independent third-party auditing firms, as well as contractual amendments, self-assessments and customer guidance documents produced by Microsoft. More detailed information about Azure compliance offerings is available from the [Trust Center](https://www.microsoft.com/trust-center/compliance/compliance-overview).

For a list of compliance certifications, reference [Security and Compliance Certifications in Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-compliance).