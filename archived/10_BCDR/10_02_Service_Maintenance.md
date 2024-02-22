## Service maintenance

Like any Azure service, Flexible Server receives patches and functionality upgrades from Microsoft. The service performs automated patching of the underlying hardware, OS, and database engine. The patching includes security and software updates. For the PostgreSQL engine, minor version upgrades are included in the planned maintenance release. Users can configure the patching schedule to be system managed or define their custom schedule. During the maintenance schedule, the patch is applied, and the server may need to be restarted as part of the patching process to complete the update. With the custom schedule, users can make their patching cycle predictable and choose a maintenance window with minimum impact on the business. Generally, the service follows a monthly release schedule as part of the continuous integration and release.

To ensure that planned maintenance does not blindside administrators, Azure provides them control over when patching occurs.

You can schedule maintenance during a specific day of the week and a time window within that day. Or you can let the system pick a day and a time window time for you automatically. Either way, the system alerts you five days before running any maintenance. The system will also let you know when maintenance is started, and when it's successfully completed.

When specifying preferences for the maintenance schedule, you can pick a day of the week and a time window. If you don't specify, the system will pick times between 11pm and 7am in your server's region time. You can define different schedules for each flexible server in your Azure subscription.

### Rolling out changes

As part of rolling out changes, we apply the updates to the servers configured with system-managed schedule first followed by servers with custom schedule after a minimum gap of 7-days within a given region. If you intend to receive early updates on fleet of development and test environment servers, we recommend you configure system-managed schedule for servers used in development and test environment. This allows you to receive the latest update first in your Dev/Test environment for testing and evaluation for validation. If you encounter any behavior or breaking changes, you'll have time to address them before the same update is rolled out to production servers with custom-managed schedule. The update starts to roll out on custom-schedule flexible servers after seven days and is applied to your server at the defined maintenance window. At this time, there's no option to defer the update after the notification has been sent. Custom-schedule is recommended for production environments only.

### Notifications

In most cases, irrespective of whether using a platform-managed or custom maintenance schedule, Azure will notify administrators five days before a maintenance event. The exception is critical security fixes.

Use Azure Service Health to view upcoming infrastructure updates and set notifications. 

Notifications about upcoming scheduled maintenance can be:

- Emailed to a specific address
- Emailed to an Azure Resource Manager Role
- Sent in a text message (SMS) to mobile devices
- Pushed as a notification to an Azure app
- Delivered as a voice message

### Configure maintenance scheduling and alerting

- [Manage scheduled maintenance settings using the Azure Portal (Flexible Server)](https://learn.microsoft.com/azure/postgresql/flexible-server/how-to-maintenance-portal)
- [View service health notifications in the Azure Portal](https://learn.microsoft.com/azure/service-health/service-notifications)
- [Configure resource health alerts using Azure Portal](https://learn.microsoft.com/azure/service-health/resource-health-alert-monitor-guide)
