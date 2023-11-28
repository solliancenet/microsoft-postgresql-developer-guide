# 02 / Introduction to Azure Database for PostgreSQL Flexible Server

Before jumping into Azure Database for PostgreSQL Flexible Server, it is important to understand some PostgreSQL history. Also, it is important the PostgreSQL hosting option pros and cons.

## What is PostgreSQL?

PostgreSQL is a relational database management system based on [Structured Query Language (SQL)](https://en.wikipedia.org/wiki/SQL). PostgreSQL supports a rich set of SQL query capabilities and offers excellent performance through storage engines optimized for transactional and non-transactional workloads, in-memory processing, and robust server configuration through modules. Its low total cost of ownership (TCO) makes it extremely popular with many organizations. Customers can use existing frameworks and languages to connect easily with PostgreSQL databases. Reference the latest [PostgreSQL Documentation](https://dev.PostgreSQL.com/doc/refman/8.0/en/features.html) for a more in-depth review of PostgreSQL's features.  

One of PostgreSQL databases' common use cases is the data store for web applications. Due to PostgreSQL's scalability, popular content management systems (CMS), such as [WordPress](https://wordpress.org/) and [Drupal](https://www.drupal.org/), utilize it for their data persistence needs. More broadly, [LAMP](https://en.wikipedia.org/wiki/LAMP_(software_bundle)) apps, which integrate Linux, Apache, PostgreSQL, and PHP, leverage scalable web servers, languages, and database engines to serve many global web services.

## Comparison with other RDBMS offerings

Though PostgreSQL has a distinct set of advantages, it does compete with other typical relational database offerings. Though the emphasis of this guide is operating PostgreSQL on Azure to architect scalable applications, it is important to be aware of other potential offerings such as [MariaDB](https://mariadb.org/). MariaDB is a fork from the original PostgreSQL code base that occurred when [Oracle purchased Sun Microsystems](https://www.oracle.com/webfolder/college-recruiting/projects/PostgreSQL.html#.YexR-P7ML8o). Organizations can easily host MariaDB in Azure through [Azure Database for MariaDB.](https://azure.microsoft.com/services/mariadb/)

While MariaDB is compatible with the PostgreSQL protocol, the project is not managed by Oracle, and its maintainers claim that this allows them to better compete with other proprietary databases. Although there are several different options to choose from, PostgreSQL has over twenty years of development experience backing it, and businesses appreciate the platform's maturity.

Another popular open-source PostgreSQL competitor is [PostgreSQL](https://www.postgresql.org/). PostgreSQL supports many of the advanced features of PostgreSQL, such as JSON storage, replication and failover, and partitioning, in an easy-to-use manner. Microsoft offers a cloud-hosted [Azure Database for PostgreSQL Flexible Server](https://learn.microsoft.com/azure/postgresql/flexible-server/overview), which can be compared with cloud-hosted PostgreSQL [in Microsoft Learn.](https://docs.microsoft.com/learn/modules/deploy-mariadb-PostgreSQL-postgresql-azure/2-describe-open-source-offerings)

## PostgreSQL hosting options

Like other DBMS systems, PostgreSQL has multiple deployment options for development and production environments.

### On-premises

PostgreSQL is a cross-platform offering, and corporations can utilize their on-premises hardware to deploy highly-available PostgreSQL configurations. PostgreSQL on-premises deployments are highly configurable, but they require significant upfront hardware capital expenditure and have the disadvantages of hardware/OS maintenance.

One benefit to choosing a cloud-hosted environment over on-premises configurations is there are no significant upfront costs. Organizations can choose to pay monthly subscription fees as pay-as-you-go or to commit to a certain usage level for discounts. Maintenance, OS software updates, security, and support all fall into the responsibility of the cloud provider so IT staff are not required to utilize precious time troubleshooting hardware or software issues.

**Pros**

- Highly configurable environment

**Cons**

- Upfront capital expenditures
- OS and hardware maintenance
- Increased operation center and labor costs
- Time to deploy and scale new solutions

### Cloud IaaS (in a VM)

Migrating an organization's infrastructure to an IaaS solution helps reduce maintenance of on-premises data centers, save money on hardware costs, and gain real-time business insights. IaaS solutions allow IT resources to scale up and down with demand. They also help to quickly provision new applications and increase the reliability of the existing underlying infrastructure.

IaaS lets organizations bypass the cost and complexity of buying and managing physical servers and datacenter infrastructure. Each resource is offered as a separate service component and only requires paying for resources for as long as they are needed. A cloud computing service provider like Microsoft Azure manages the infrastructure, while organizations purchase, install, configure, and manage their own software—including operating systems, middleware, and applications.

**Pros**

- Highly configurable environment
- Fast deployment of additional servers
- Reduction in operation center costs

**Cons**

- OS and middleware administration costs

### Containers

While much more lightweight, containers are similar to VMs and can be started and stopped in a few seconds. Containers also offer tremendous portability, making them ideal for developing an application locally on a development machine and then hosting it in the cloud, in test, and later in production. Containers can even run  on-premises or in other clouds. This flexibility is possible because the development environment machine travels with the container. The application runs in a consistent manner. Containerized applications are flexible, cost-effective, and deploy quickly.

PostgreSQL offers a [Docker image](https://hub.docker.com/_/PostgreSQL) to operate PostgreSQL in customized and containerized applications. A container-based PostgreSQL instance can persist data to the hosting environment via the container runtime, allowing for high availability across container instances and environments.

**Pros**

- Application scalability
- Portability between environments
- Automated light-weight fast deployments
- Reduced operating costs

**Cons**

- Networking and configuration complexity
- Container monitoring

### Cloud PaaS

PostgreSQL databases can be deployed on public cloud platforms by utilizing VMs, container runtimes, and Kubernetes. However, these platforms require a middle ground of customer management.  If a fully managed environment is required, cloud providers offer their own managed PostgreSQL products, such as Amazon RDS for PostgreSQL and Google Cloud SQL for PostgreSQL.  Microsoft Azure offers Azure Database for PostgreSQL Flexible Server.
