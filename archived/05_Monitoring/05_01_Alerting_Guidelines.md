## Alerting guidelines

Once monitoring data is configured to flow into Azure Monitor or Log Analytics, the next step would to be to create alerts when issue data is generated. The operations team will want to know as quickly as possible when a pending outage or system issue is developing. Understanding the symptoms is critical. *"You can't fix what you don't know is broken."*

Alert creation and remediation will take fine-tuning to ensure that alert fatigue does not set in. Focus less on integrating monitoring with IT Service Management (ITSM) systems for Incident Management, and seize on opportunities to let cloud automation replace more expensive service management processes, thereby eliminating time spent on easily automatically resolvable alerts and incidents.

**Consider the following principles for determining whether a symptom is an appropriate candidate for alerting:**

- Does it matter? Is the issue symptomatic of a real problem or issue influencing the overall health of the application? For example, does it matter whether the CPU utilization is high on the resource? Or that a particular SQL query running on a SQL database instance on that resource is consuming high CPU utilization over a sustained period? If the CPU utilization condition is a real issue, alerts should be fired when it occurs.  Although an alert will fire, the team will still need to determine what is causing the alert condition in the first place. Alerting and notifying on the SQL query process utilization issue is both relevant and actionable.

- Is it urgent? Is the issue real, and does it need urgent attention? If so, the responsible team should be immediately notified.

- Are your customers affected? Are users of the service or application affected as a result of the issue?

- Are other dependent systems affected? Are there alerts from dependencies that are interrelated and that can possibly be correlated to avoid notifying different teams all working on the same problem?

Test and validate the assumptions in a nonproduction environment, and then deploy them into production. Monitoring configurations are derived from known failure modes, test results of simulated failures, and experiences from different members of the team.

Consider automating the remediation steps in Azure.

![Read more icon](media/read-more.png "Read more")  [Successful alerting strategy](https://learn.microsoft.com/azure/cloud-adoption-framework/manage/monitor/response#successful-alerting-strategy)

### Azure alerting concepts

#### Metric alerts

Metric alerts assess metric time-series according to defined conditions and take action. They consist of the following parts:

- **Alert rules** define the alert conditions. They require the following information:
  - The metric to monitor (e.g. `aborted_connections`)
  - An aggregation for the selected metric (e.g. `total`)
  - A threshold for the aggregated value (e.g. `10 connections`)
  - A time window for the aggregation (e.g. `30 minutes`)
  - A polling frequency to determine if the previous conditions are met (e.g. `5 minutes`)

- **Action groups** define notification actions, such as emailing or texting an administrator, and other actions to take, like calling a webhook or [Azure Automation Runbooks](https://learn.microsoft.com/azure/automation/automation-runbook-types)

- **Alert processing rules** is a *preview* feature that filters alerts as they are generated to modify the actions taken in response to that alert (i.e. by disabling action groups)

Refer to [Microsoft's tutorial](https://learn.microsoft.com/azure/postgresql/flexible-server/howto-alert-on-metrics) explaining the configuration of a metric alert for a Flexible Server instance.

### Best Practices with Alerting Metrics

Here are some scenarios of how aggregating metrics over time generates insights. Read the [Microsoft blog](https://azure.microsoft.com/blog/best-practices-for-alerting-on-metrics-with-azure-database-for-PostgreSQL-monitoring/) for more examples.

- If there were **10** or more failed connections (total of `aborted_connections` in Flexible Server) in the last **30** minutes, then send an email alert
  - This may indicate incorrect credentials or an SSL issue in the application

- If IOPS is **90%** or more of capacity (average of `io_consumption_percent` in Flexible Server) for at least **1** hour, then call a webhook
  - Excessive IO usage affects the performance of transactional workloads, so [scale storage to increase IOPS capacity or provision additional IOPS](https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-compute-storage)
  - See the linked CLI examples for automatic scaling based on metrics

### Webhooks

Webhook action groups send POST requests to configured webhook endpoints. Action groups can use the [common alert schema](https://learn.microsoft.com/azure/azure-monitor/alerts/alerts-common-schema) for webhook calls, or custom JSON payloads. This feature allows Azure Monitor to [integrate with incident management systems like PagerDuty](https://www.pagerduty.com/docs/guides/azure-integration-guide/), [call Logic Apps](https://learn.microsoft.com/azure/connectors/connectors-native-webhook), and [execute Azure Automation runbooks](https://learn.microsoft.com/azure/automation/automation-webhooks).

### Metrics resources

#### Azure CLI

Azure CLI provides the `az monitor` series of commands to manipulate action groups (`az monitor action-group`), alert rules and metrics (`az monitor metrics`), and more.

- [Azure CLI reference commands for Azure Monitor](https://learn.microsoft.com/cli/azure/azure-cli-reference-for-monitor)

#### Azure Portal

While the Azure Portal does not provide automation capabilities like the CLI or the REST API, it does support configurable dashboards and provides a strong introduction to monitoring metrics in PostgreSQL.

- [Set up alerts on metrics for Azure Database for PostgreSQL Flexible Server-Flexible Server](https://learn.microsoft.com/azure/postgresql/flexible-server/howto-alert-on-metrics)
- [Tutorial: Analyze metrics for an Azure resource](https://learn.microsoft.com/azure/azure-monitor/essentials/tutorial-metrics)

#### Azure Monitor REST API

The REST API allows applications to access metric values for integration with other monitoring systems like external SIEM systems. It also allows applications to manipulate alert rules externally.

To interact with the REST API, applications first need to obtain an authentication token from Microsoft Entra and then use that token in API requests.

- [REST API Walkthrough](https://learn.microsoft.com/azure/azure-monitor/essentials/rest-api-walkthrough)
- [Azure Monitor REST API Reference](https://learn.microsoft.com/rest/api/monitor/)

### Azure Service Health

[Azure Service Health](https://azure.microsoft.com/features/service-health/) notifies administrators about Azure service incidents and planned maintenance so actions can be taken to mitigate downtime. Configure customizable cloud alerts and use personalized dashboards to analyze health issues, monitor the impact on cloud resources, get guidance and support, and share details and updates.

### Azure Database for PostgreSQL Flexible Server Release Notes

Typically each month a new set of release notes are published for Flexible Server.  You can read more about these by reviewing the [Release notes - Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/azure/postgresql/flexible-server/release-notes) document.

For example, the November 2023 release had some very significant updates including:

- General availability of PostgreSQL 16 for Azure Database for PostgreSQL – Flexible Server.
- General availability of near-zero downtime scaling.
- General availability of Pgvector 0.5.1 extension.
- Public preview of Italy North region.
- Public preview of premium SSD v2.
- Public preview of decoupling storage and IOPS.
- Public preview of private endpoints.
- Public preview of virtual endpoints and new promote to primary server operation for read replica.
- Public preview of Postgres azure_ai extension.
- Public preview of pg_failover_slots extension.
- Public preview of long-term backup retention.