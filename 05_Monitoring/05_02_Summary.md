## 05 / Summary

Monitoring the performance of your environment is a vital final step after deployment. This section described how Azure Monitor and Log Analytics are essential tools to assist in monitoring your applications.

Both the control and data plane should be considered in your monitoring activities. Platform administrators and database administrators should be notified of issues before or when they start to happen.

With cloud-based systems, being proactive is a better strategy then being reactive.

### Checklist

- Define a monitoring strategy to provide useful insights without deteriorating application performance and incurring excessive costs. For example, storing slow query logs on Flexible Server instances without proper management consumes storage space, affects database performance.
- Configure your Azure resources to emit strategic logs (like PostgreSQL Flexible Server slow query logs) and route them to Azure destinations, like Log Analytics workspaces.
- Develop KQL queries to record database performance, query performance, and DDL/DML activity.
- If necessary, configure alert rules for metrics and logs. Azure can automatically respond to fired alerts through Azure Automation runbooks.
- Visualize data in Workbooks.

## Recommended content

- [Best practices for alerting on metrics with Azure Database for PostgreSQL Flexible Server monitoring](https://azure.microsoft.com/blog/best-practices-for-alerting-on-metrics-with-azure-database-for-PostgreSQL-monitoring/)

- [Configure audit logs (Azure portal)](https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-audit)

- [Azure Monitor best practices](https://docs.microsoft.com/azure/azure-monitor/best-practices)

- [Cloud monitoring guide: Collect the right data](https://docs.microsoft.com/azure/cloud-adoption-framework/manage/monitor/data-collection)

- [Write your first query with Kusto Query Language (Microsoft Learn)](https://docs.microsoft.com/learn/modules/write-first-query-kusto-query-language/)

- [Azure Monitor Logs Overview](https://docs.microsoft.com/azure/azure-monitor/logs/data-platform-logs)

- [Application Monitoring for Azure App Service Overview](https://docs.microsoft.com/azure/azure-monitor/app/azure-web-apps)

- [Configure and access audit logs for Azure Database for PostgreSQL Flexible Server in the Azure Portal](https://learn.microsoft.com/azure/postgresql/flexible-server/howto-configure-audit-logs-portal)

- [Kusto Query Language (KQL)](https://docs.microsoft.com/azure/data-explorer/kusto/query/)

- [SQL Kusto cheat sheet](https://docs.microsoft.com/azure/data-explorer/kusto/query/sqlcheatsheet)
- [Get started with log queries in Azure Monitor](https://docs.microsoft.com/azure/azure-monitor/log-query/get-started-queries)

- [Monitor Azure Database for PostgreSQL Flexible Server using Percona Monitoring and Management (PMM)](https://docs.percona.com/percona-operator-for-postgresql/2.0/index.html)
