# 01 / Azure PostgreSQL Developer Guide

Welcome to THE comprehensive guide to developing [PostgreSQL]-based
applications on [Microsoft Azure]! Whether creating a production
application or improving an existing enterprise system, this guide will
take developers and architects through the fundamentals of PostgreSQL
application development to more advanced architecture and design. From
beginning to end, it is a content journey designed to help ensure
current or future PostgreSQL systems are performing at their best even
as their usage grows and expands.

![The diagram shows the progression of development evolution in the
guide.]

The topics and flow contained in this guide cover the advantages of
migrating to or leveraging various simple to use, valuable Azure cloud
services in PostgreSQL architectures. Be prepared to learn how easy and
quick it is to create applications backed by [Azure Database for
PostgreSQL Flexible Server]. In addition to building customized
services, developers will also be able to leverage the vast number of
value-add services available in the [Azure Marketplace]. Throughout this
developer journey, strive to leverage the vast number of resources
presented rather than going at it alone!

Because every company and project is unique, this guide provides
insightful service descriptions and tool comparisons to allow the reader
to make choices that fit their environment, system, and budget needs.
Proven industry architecture examples provide best practice jumpstarts
allowing for solid architecture foundations and addressing potential
compliance needs.

Development teams will understand best practices and efficient
architecture and security practices -- avoiding the problems and costs
of poor design. Teams will gain the knowledge to automate builds,
package, test, and deliver applications based on PostgreSQL to various
hosting environments. By leveraging continuous integration and
deployment (CI/CD), costs related to manual deployment tasks can be
reduced or completely removed.

Many steps in the application lifecycle go beyond simply building and
deploying an application. This guide will cover how easy it is to
monitor system uptime and performance in the various Azure services.
Administrators will appreciate the realistic and straightforward
troubleshooting tips that help keep downtime to a minimum and users
happy.

The ultimate goal is to successfully deploy a stable, performant
PostgreSQL application running securely in Microsoft Azure using cloud
best practices. Let's start the journey!

# 02 / Introduction to Azure Database for PostgreSQL Flexible Server

Before jumping into Azure Database for PostgreSQL Flexible Server, it is
important to understand some PostgreSQL history. Also, it is important
to cover the various PostgreSQL hosting options and their pros and cons.
As part of this guide, we will cover Artificial Intelligence (AI) and
how Azure Database for PostgreSQL Flexible Server plays in this exciting
space.

## What is PostgreSQL?

[PostgreSQL] is an open source object-relational database management
system based on [Structured Query Language (SQL)]. PostgreSQL supports a
rich set of SQL query capabilities and offers excellent performance and
security for multiple data workloads. Its ability to run on all major
operating systems combined with the abilty to extend via addons have
made PostgreSQL a popular option with many organizations. Customers can
use existing programming frameworks and languages to connect easily with
PostgreSQL databases. Reference the latest [PostgreSQL Feature Matrix]
for a more in-depth review of PostgreSQL's features.

## Comparison with other RDBMS offerings

Though PostgreSQL has a distinct set of advantages, it does compete with
other typical relational database offerings. Though the emphasis of this
guide is operating PostgreSQL on Azure to architect scalable
applications, it is important to be aware of other potential offerings
such as [MySQL] and [MariaDB].

In addition to the most popular relational database systems, new
products have emerged to support vector-based systems for AI purposes.
Because PostgresSQL also has this capability, it will be important to
review these other offerings and how PostgreSQL compares to them.

## PostgreSQL hosting options

Like other DBMS systems, PostgreSQL has multiple deployment options for
development and production environments.

### On-premises

PostgreSQL is a cross-platform offering, and corporations can utilize
their on-premises hardware to deploy highly-available PostgreSQL
configurations. PostgreSQL on-premises deployments are highly
configurable, but they require upfront hardware capital expenditure and
have the disadvantages of hardware/OS maintenance.

One benefit to choosing a cloud-hosted environment over on-premises
configurations is there are no significant upfront costs. Organizations
can choose to pay monthly subscription fees as pay-as-you-go or to
commit to a certain usage level for discounts. Maintenance, OS software
updates, security, and support all fall into the responsibility of the
cloud provider so IT staff are not required to utilize precious time
troubleshooting hardware or software issues.

**Pros**

-   Highly configurable environment

**Cons**

-   Upfront capital expenditures
-   OS and hardware maintenance
-   Increased operation center and labor costs
-   Time to deploy and scale new solutions

### Cloud IaaS (in a VM)

Migrating an organization's infrastructure to an IaaS solution helps
reduce maintenance of on-premises data centers, save money on hardware
costs, and gain real-time business insights. IaaS solutions allow IT
resources to scale up and down with demand. They also help to quickly
provision new applications and increase the reliability of the existing
underlying infrastructure.

IaaS lets organizations bypass the cost and complexity of buying and
managing physical servers and datacenter infrastructure. Each resource
is offered as a separate service component and only requires paying for
resources for as long as they are needed. A cloud computing service
provider like Microsoft Azure manages the infrastructure, while
organizations purchase, install, configure, and manage their own
software---including operating systems, middleware, and applications.

**Pros**

-   Highly configurable environment
-   Fast deployment of additional servers
-   Reduction in operation center costs

**Cons**

-   OS and middleware administration costs

### Containers

While much more lightweight, containers are similar to VMs and can be
started and stopped in a few seconds. Containers also offer tremendous
portability, making them ideal for developing an application locally on
a development machine and then hosting it in the cloud, in test, and
later in production. Containers can even run on-premises or in other
clouds. This flexibility is possible because the development environment
machine travels with the container. The application runs in a consistent
manner. Containerized applications are flexible, cost-effective, and
deploy quickly.

PostgreSQL offers a [Docker image] to operate PostgreSQL in customized
and containerized applications. A container-based PostgreSQL instance
can persist data to the hosting environment via the container runtime,
allowing for high availability across container instances and
environments.

**Pros**

-   Application scalability
-   Portability between environments
-   Automated light-weight fast deployments
-   Reduced operating costs

**Cons**

-   Networking and configuration complexity
-   Container monitoring

### Cloud PaaS

PostgreSQL databases can be deployed on public cloud platforms by
utilizing VMs, container runtimes, and Kubernetes. However, these
platforms require a middle ground of customer management. If a fully
managed environment is required, cloud providers offer their own managed
PostgreSQL products, such as Amazon RDS for PostgreSQL and Google Cloud
SQL for PostgreSQL. Microsoft Azure offers Azure Database for PostgreSQL
Flexible Server.

## Hosting PostgreSQL on Azure - benefits and options

Now that the benefits of PostgreSQL and a few common deployment models
have been presented, this section explains approaches to hosting
PostgreSQL specifically on Microsoft Azure and the many advantages of
the Microsoft Azure platform.

### Advantages of choosing Azure

Millions of customers worldwide trust the Azure platform, and there are
over 90,000 Cloud Solution Providers (CSPs) partnered with Microsoft to
add extra benefits and services to the Azure platform. By leveraging
Azure, organizations can easily modernize their applications, expedite
application development, and adapt application requirements to meet the
demands of their users.

By offering solutions on Azure, ISVs can access one of the largest B2B
markets in the world. Through the [Azure Partner Builder's Program],
Microsoft assists ISVs with the tools and platform to offer their
solutions for customers to evaluate, purchase, and deploy with just a
few clicks of the mouse.

Microsoft's development suite includes such tools as the various [Visual
Studio] products, [Azure DevOps], [GitHub], and low-code [Power Apps].
All of these contribute to Azure's success and growth through their
tight integrations with the Azure platform. Organizations that adopt
modern tools are 65% more innovative, according to a [2020 McKinsey &
Company report.]

![This image demonstrates common development tools on the Microsoft
cloud platform to expedite application development.]

To facilitate developers' adoption of Azure, Microsoft offers a [free
subscription] with \$200 credit, applicable for thirty days; year-long
access to free quotas for popular services, including Azure Database for
PostgreSQL Flexible Server; and access to always free Azure service
tiers. Create an Azure free account and get access to [750 hours of
Azure Database for PostgreSQL Flexible Server on a Burstable B1MS
instance with 32GB storage for free].

### PostgreSQL on Azure hosting options

The concepts Infrastructure as a Service (IaaS) and Platform as a
Service (PaaS) typically define the public cloud provider and the
enterprise customer resource responsibilities. Both approaches are
common ways to host PostgreSQL on Azure.

![This diagram shows the cloud adoption strategy.]

#### IaaS (VMs)

In the IaaS model, organizations deploy PostgreSQL on Azure Virtual
Machines. This model allows the customer to choose when to patch the VM
OS, the PostgreSQL engine, and install other software such as antivirus
utilities when required. Microsoft is responsible for the underlying VM
hardware that constitutes the Azure infrastructure. Customers are
responsible for all other maintenance.

Because IaaS PostgreSQL hosting gives greater control over the
PostgreSQL database engine and the OS, many organizations choose to lift
and shift on-premises solutions while minimizing capital expenditure.

#### IaaS (Containers)

Although VMs are typically considered the primary IaaS approach,
containerizing PostgreSQL instances and applications can also be
included in this approach. Modernizing applications allows for more
opportunities for deployment and management with Kubernetes and
container hosting environments coming into the picture. Azure provides
Azure Kubernetes Service (AKS) and, as explored below, several other
PaaS-based approaches to hosting PostgreSQL and application containers.

#### PaaS (DBaaS)

In the PaaS model, organizations deploy a fully managed PostgreSQL
environment on Azure. Unlike IaaS, they cede control over patching the
PostgreSQL engine and OS to the Azure platform, and Azure automates many
administrative tasks, like providing high availability, backups, and
protecting data.

Like IaaS, customers are still responsible for managing query
performance, database access, and database objects, such as indexes.
PaaS is suitable for applications where the PostgreSQL configuration
exposed by Azure is sufficient, and access to the OS and filesystem is
unnecessary.

The Azure DBaaS PostgreSQL offering is [Azure Database for PostgreSQL
Flexible Server][17]. It supports many of the common administration
tools and programming languages.

#### PaaS (Containers)

In addition to the IaaS and PaaS options mentioned above, it is possible
to choose to host container based instances inside PaaS-based services
such as Azure Container Instances and Azure App Services.

#### Video reference

For a video comparison of cloud hosting models, please refer to
[Microsoft Learn.]

## Introduction to Azure resource management

With a firm understanding of why millions of organizations choose Azure,
and the database deployment models (IaaS vs. PaaS), the next step is to
provide more detail about **how** developers interact with Azure.

The [Azure Fundamentals Microsoft Learn Module] demonstrates how IaaS
and PaaS classifies Azure services. Moreover, Azure empowers flexible
*hybrid cloud* deployments and supports a variety of common tools, such
as Visual Studio, PowerShell, and the Azure CLI, to manage Azure
environments.

![IaaS and PaaS Azure service classification and categories]

The following table outlines some of the Azure services used in
application developer scenarios that will be discussed in further detail
in later sections of this guide.

-   **[Virtual Machines (IaaS)]**: Begin by running a PHP sample
    application on an Azure Windows Server Virtual Machine.
-   **[Azure App Service (PaaS)]**: Deploy the PHP application to Azure
    App Service, a flexible, simple-to-use application hosting service.
-   **[Azure Container Instances (PaaS)]**: *Containerize* apps on the
    VM to operate in an environment isolated from other development
    tools installed on the system. Azure Container Instances provides a
    managed environment to operate containers.
-   **[Azure Kubernetes Service (PaaS)]**: AKS also hosts containerized
    apps, but it is optimized for more advanced orchestration scenarios,
    such as high availability.

For a more comprehensive view, consult the [Azure Fundamentals Microsoft
Learn] module.

### The Azure resource management hierarchy

Azure provides a flexible resource hierarchy to simplify cost management
and security. This hierarchy consists of four levels:

-   **[Management groups]**: Management groups consolidate multiple
    Azure subscriptions for compliance and security purposes.
-   **Subscriptions**: Subscriptions govern cost control and access
    management. Azure users cannot provision Azure resources without a
    subscription.
-   **[Resource groups]**: Resource groups consolidate the individual
    Azure resources for a given deployment. All provisioned Azure
    resources belong to one resource group. In this guide, it will be
    required to provision a *resource group* in an *subscription* to
    hold the required resources.
    -   Resource groups are placed in a geographic location that
        determines where metadata about that resource group is stored.
-   **Resources**: An Azure resource is an instance of a service. An
    Azure resource belongs to one resource group located in one
    subscription.
    -   Most Azure resources are provisioned in a particular region.

    ![This image shows Azure resource scopes.]

### Create landing zone

An [Azure landing zone] is the target environment defined as the final
resting place of a cloud migration project. In most projects, the
landing zone should be scripted via ARM templates for its initial setup.
Finally, it should be customized with PowerShell or the Azure Portal to
fit the workload's needs. First-time Azure users will find creating and
deploying to DEV and TEST environments easy.

To help organizations quickly move to Azure, Microsoft provides the
Azure landing zone accelerator, which generates a landing zone ARM
template according to an organization's core needs, governance
requirements, and automation setup. The landing zone accelerator is
available in the Azure portal.

![This image demonstrates the Azure landing zone accelerator in the
Azure portal, and how organizations can optimize Azure for their needs
and innovate.]

### Automating and managing Azure services

When it comes to managing Azure resources, there are many potential
options. [Azure Resource Manager] is the deployment and management
service for Azure. It provides a management layer that enables users to
create, update, and delete resources in Azure subscriptions. Use
management features, like access control, locks, and tags, to secure and
organize resources after deployment.

All Azure management tools, including the [Azure CLI], [Azure
PowerShell] module, [Azure REST API], and browser-based Portal, interact
with the Azure Resource Manager layer and [Identity and access
management (IAM)] security controls.

![This image demonstrates how the Azure Resource Manager provides a
robust, secure interface to Azure resources.]

Access control to all Azure services is offered via the [Azure
role-based access control (Azure
RBAC)][Identity and access management (IAM)] natively built into the
management platform. Azure RBAC is a system that provides fine-grained
access management of Azure resources. Using Azure RBAC, it is possible
to segregate duties within teams and grant only the amount of access to
users that they need to perform their jobs.

### Azure management tools

The flexibility and variety of Azure's management tools make it
intuitive for any user, irrespective of their skill level with specific
technologies. As an individual's skill level and administration needs
mature, Azure has the right tools to match those needs.

![Azure service management tool maturity progression.]

#### Azure portal

As a new Azure user, the first resource a person will be exposed to is
the Azure Portal. The **Azure Portal** gives developers and architects a
view of the state of their Azure resources. It supports extensive user
configuration and simplifies reporting. The **[Azure mobile app]**
provides similar features for users that are away from their main
desktop or laptop.

![The picture shows the initial Azure service list.]

Azure runs on a common framework of backend resource services, and every
action taken in the Azure portal translates into a call to a set of
backend APIs developed by the respective engineering team to read,
create, modify, or delete resources.

##### Azure Marketplace

[Azure Marketplace][18] is an online store that contains thousands of IT
software applications and services built by industry-leading technology
companies. In Azure Marketplace, it is possible to find, try, buy, and
deploy the software and services needed to build new solutions and
manage the cloud infrastructure. The catalog includes solutions for
different industries and technical areas, free trials, and consulting
services from Microsoft partners.

![The picture shows an example of Azure Marketplace search results.]

##### Evolving

Moving workloads to Azure alleviates some administrative burdens, but
not all. Even though there is no need to worry about the data center,
there is still a responsibility for service configuration and user
access. Applications will need resource authorization.

Using the existing command-line tools and REST APIs, it is possible to
build custom tools to automate and report resource configurations that
do not meet organizational requirements.

#### Azure PowerShell and CLI

**Azure PowerShell** and the **Azure CLI** (for Bash shell users) are
useful for automating tasks that cannot be performed in the Azure
portal. Both tools follow an *imperative* approach, meaning that users
must explicitly script the creation of resources in the correct order.

![Shows an example of the Azure CLI.]

There are subtle differences between how each of these tools operates
and the actions that can be accomplished. Use the [Azure command-line
tool guide] to determine the right tool to meet the target goal.

#### Azure CLI

It is possible to run the Azure CLI and Azure PowerShell from the [Azure
Cloud Shell], but it does have some limitations. It is also possible to
run these tools locally.

To use the Azure CLI, [download the CLI tools from Microsoft.]

To use the Azure PowerShell cmdlets, install the `Az` module from the
PowerShell Gallery, as described in the [installation document.]

##### Azure Cloud Shell

The Azure Cloud Shell provides Bash and PowerShell environments for
managing Azure resources imperatively. It also includes standard
development tools, like Visual Studio Code, and files are persisted in
an Azure Files share.

Launch the Cloud Shell in a browser at <https://shell.azure.com>.

#### PowerShell Module

The Azure portal and Windows PowerShell can be used for managing the
Azure Database for PostgreSQL Flexible Server. To get started with Azure
PowerShell, install the [Azure PowerShell cmdlets] for PostgreSQL with
the following PowerShell command in an administrator-level PowerShell
window:

``` powershell
Install-Module -Name Az.PostgreSQL
```

#### Infrastructure as Code

[Infrastructure as Code (IaC)] provides a way to describe or declare
what infrastructure looks like using descriptive code. The
infrastructure code is the desired state. The environment will be built
when the code runs and completes. One of the main benefits of IaC is
that it is human readable. Once the environment code is proven and
tested, it can be versioned and saved into source code control.
Developers can review the environment changes over time.

##### ARM templates

[ARM templates] can deploy Azure resources in a *declarative* manner.
Azure Resource Manager can potentially create the resources in an ARM
template in parallel. ARM templates can be used to create multiple
identical environments, such as development, staging, and production
environments.

![The picture shows an example of an ARM template JSON export.]

##### Bicep

Reading, updating, and managing the ARM template JSON code can be
difficult for a reasonably sized environment. What if there was a tool
that translates simple declarative statements into ARM templates? Better
yet, what if there was a tool that took existing ARM templates and
translated them into a simple configuration? [Bicep] is a
domain-specific language (DSL) that uses a declarative syntax to deploy
Azure resources. Bicep files define the infrastructure to deploy to
Azure and then use that file throughout the development lifecycle to
repeatedly deploy infrastructure changes. Resources are deployed
consistently.

By using the Azure CLI it is possible to decompile ARM templates to
Bicep using the following:

``` powershell
az bicep decompile --file template.json
```

Additionally, the [Bicep playground] tool can perform similar
decompilation of ARM templates.

[Explore the Bicep template benefits]

![This image demonstrates part of a sample Bicep template for
provisioning Azure Database for PostgreSQL Flexible Server.]

##### Terraform

[Hashicorp Terraform] is an open-source tool for provisioning and
managing cloud infrastructure. [Terraform] is adept at deploying
infrastructure across multiple cloud providers. It enables developers to
use consistent tooling to manage each infrastructure definition.

![This image demonstrates part of a sample Terraform template for
provisioning Azure Database for PostgreSQL Flexible Server.]

#### Other tips

Azure administrators should consult with cloud architects and financial
and security personnel to develop an effective organizational hierarchy
of resources. Here are some best practices to follow for Azure
deployments.

-   **Utilize Management Groups** Create at least three levels of
    management groups.
-   **Adopt a naming convention:** Names in Azure should include
    business details, such as the organization department, and
    operational details for IT personnel, like the workload.
-   **Adopt other Azure governance tools:** Azure provides mechanisms
    such as [resource tags] and [resource locks] to facilitate
    compliance, cost management, and security.

### Azure deployment resources

#### Support

Azure provides [multiple support plans for businesses], depending on
their business continuity requirements. There is also a large user
community:

-   [StackOverflow Azure Tag]
-   [Azure on Twitter]
-   Move to Azure efficiently with customized guidance from Azure
    engineers. [FastTrack for Azure]

#### Training

-   [Azure Certifications and Exams]
-   [Microsoft Learn]
    -   [Azure Fundamentals (AZ-900) Learning Path]

## Introduction to Azure Database for PostgreSQL Flexible Server

Developers can deploy PostgreSQL on Azure through Virtual Machines
(IaaS) or Azure Database for PostgreSQL Flexible Server (PaaS). Azure
Database for PostgreSQL Flexible Server offers high availability,
automated backups, and meets compliance requirements. Operational
administrators do not have the operational overhead of managing the OS
and the DB engine. They do not need to worry about OS patching, database
backups, or server security. Administrators only need to manage the
applications and data. Developers can focus on schema design, building
queries, and optimizing query performance.

Azure Database for PostgreSQL Flexible Server supports PostgreSQL
Community Editions 11 through 16, making it flexible for most
migrations.

**Control Plane** As the image below demonstrates, Azure Resource
Manager handles resource configuration, meaning that standard Azure
management tools, such as the CLI, PowerShell, and ARM templates, are
still applicable. This is commonly referred to as the *control plane*.

**Data Plane** For managing database objects and access controls at the
server and database levels, standard PostgreSQL management tools, such
as [pgAdmin][19], still apply. This is known as the *data plane*.

![This image demonstrates the control and data plane for Azure Database
for PostgreSQL Flexible Server.]

### Azure Database for PostgreSQL Flexible Server deployment options

Azure Database for PostgreSQL Flexible Server provides two options for
deployment: Single Server and Flexible Server. Below is a summary of
these offerings. For a more comprehensive comparison table, please
consult the article [Choose the right PostgreSQL Server option in
Azure].

> ![Note] **Note:** This guide will be focused on Flexible Server and
> will not explore Single Server or the Cosmos DB database for
> PostgresSQL.

##### Flexible Server video introduction

> ![Watch icon] **Watch:** [Introduction to Azure Database for
> PostgreSQL Flexible Server][20]

### Cost management

Cost management is one of the advantages of Flexible Server: it supports
a [*burstable* tier], which is based on the B-series Azure VM tier and
is optimized for workloads that do not continually use the CPU.
[Flexible Server instances can also be paused]. The image below shows
how Flexible Server works for a non-high availability arrangement.

> *Locally-redundant storage* replicates data within a single
> [availability zone]. *Availability zones* are present within a single
> Azure region (such as East US) and are geographically isolated. All
> Azure regions that support availability zones have at least three
> zones.

![This image demonstrates how PostgreSQL Flexible Server works, with
compute, storage, and backup storage.]

Here are a few other notable advantages of Flexible Server.

-   [User-scheduled service maintenance:] Flexible Server allows
    database administrators to set a day of the week and a time for
    Azure to perform service maintenance and upgrades, **per server**.
    Providing notifications five days before a planned maintenance
    event, Flexible Server caters to the needs of IT operations
    personnel.

    ![This image demonstrates how to set a custom maintenance schedule
    in Flexible Server.]

-   [Network security:] Applications access Flexible Server through the
    public Internet (though access is governed by firewall ACLs), or
    through private IP addresses in an Azure Virtual Network. Moreover,
    TLS support keeps traffic encrypted, irrespective of the chosen
    network access model.

-   [Automatic backups:] Azure automates database backups, encrypts
    them, and stores them for a configurable period.

    ![This image demonstrates how to configure Flexible Server automatic
    backups.]

-   [Read replicas:] Read replicas help teams scale their applications
    by providing read-only copies of the data updated on the master
    node. Often, applications that run on elastic, autoscaling services,
    like Azure App Service, couple well with read replicas.

-   [Input-output operations per second (IOPS):] IOPS can be configured
    based on your performance needs.

    ![This image demonstrates server IOPS configuration.]

##### Flexible Server pricing & TCO

The PostgreSQL Flexible Server tiers offer a storage range between 32
GiB and 32 TiB and the same backup retention period range of 1-35 days.
However, they differ in core count and memory per vCore. Choosing a
compute tier affects the database IOPS and pricing.

-   **Burstable**: This tier corresponds to a B-series Azure VM.
    Instances provisioned in this tier have 1-20 vCores. It is ideal for
    applications that do not utilize the CPU consistently.
-   **General Purpose**: This tier corresponds to a Ddsv4-series Azure
    VM. Instances provisioned in this tier have 2-96 vCores and 4 GiB
    memory per vCore. It is ideal for most enterprise applications
    requiring a strong balance between memory and vCore count.
-   **Memory Optimized**: This tier corresponds to an Edsv4-series Azure
    VM. Instances provisioned in this tier have 2-96 vCores and 8 GiB
    memory per vCore. It is ideal for high-performance or real-time
    workloads that depend on in-memory processing.

To estimate the TCO for Azure Database for PostgreSQL Flexible Server:

1.  Use the [Azure Pricing Calculator].

    > ![Note icon][Note] **Note:** The [Azure TCO Calculator] can be
    > used to estimate the cost savings of deploying PaaS Azure
    > PostgreSQL over the same deployment in an on-premises data center.

2.  Indicate the configuration of on-premises hardware and the Azure
    landing zone, adjust calculation parameters, like the cost of
    electricity, and observe the potential savings.

##### Flexible Server Unsupported Features

Azure provides a [detailed list of the limitations of Flexible Server].
Here are a few notable ones.

-   Users are not provided host or OS access to view or modify
    configuration files such as postgresql.conf
-   You can't create or load your own extension in Azure Database for
    PostgreSQL.

## Migrate to Azure Database for Flexible Server

### From Single Server to Flexible Server

As Single Server will be retired in the future, you will at some point
need to move your instances to Flexible Server. There are several ways
to do this including:

-   Database tools
    -   [Azure Database Migration Service (DMS)]
    -   [pgcopydb]
    -   [pg_dump and dp_restore]
-   [Azure Portal]
-   [Azure CLI][21]

When migrating, to Flexible Server, you will need to ensure you have met
all the [migration prerequisites].

### From on-premises to Flexible Server

Like the migration from Single Server, migrations from sources running
on-premises will require the movement of database artifacts and data.

Again, verify that the source system meets the migration requirements
listed in the [Azure documentation][migration prerequisites].

In addition to the migration pre-requisities, you must also ensure that
a network path exists between the on-premises instance/tool and the
remote Azure Database for PostgreSQL instance. This can be more
complicated than at first glance depending on a number of different
network topology possibilies.

### Offline vs Online migrations

For smaller and less used databases, the migration process is likely to
be quick and effortless. However, in larger and more heavily used
environments, the choice of how you migrate will be a vital decision to
ensure applications and end users are not subject to lengty downtime and
productivity loss.

You can choose between the two following paths:

-   **Offline Migration** -- In an offline migration, all applications
    connecting to your single server are stopped and the database(s) is
    copied to flexible server.

-   **Online Migration** - In an online migration, applications
    connecting to your single server aren't stopped while database(s)
    are copied to flexible server. The initial copy of the databases is
    followed by replication to keep flexible server in sync with the
    single server. A cutover is performed when the flexible server is in
    complete sync with the single server resulting in minimal downtime.

## 02 / Summary

This module explained everyday use cases for PostgreSQL and illustrated
the typical IaaS and PaaS deployment approaches. Additional hybrid
approaches to hosting PostgreSQL applications and databases on Microsoft
Azure were discussed as well. The reader was introduced to the core
approaches to managing Microsoft Azure resources, including imperative
tools (like the Azure CLI and Azure PowerShell) and declarative tools
(like ARM templates and Terraform).

Using one or more of the various tools presented, will assist in getting
the database instance(s) migrated to Azure Database for PostgreSQL in
the most efficient manner possible.

The emphasis of this guide will continue to be on the advantages of
Azure Database for PostgreSQL Flexible Server. Flexible Server is the
most commonly recommended Azure Database for PostgreSQL offering.

# 03 / Getting Started - Setup and Tools

With a firm understanding of PostgreSQL and other offerings available in
Azure, it is time to review how to start using these various services in
applications. In this chapter, we explore how to get Azure subscriptions
configured and ready to host PostgreSQL applications. Common PostgreSQL
application types and the various tools to simplify their deployment
will reviewed. Sample code will make it easier to get started faster and
understand high-level concepts.

## Azure free account

Azure offers a [\$200 free credit for developers to trial Azure] or jump
right into a Pay-as-you-go subscription. The free account includes
credits for 750 compute hours of Azure Database for PostgreSQL Flexible
Server - Flexible Server. [Innovate faster with fully managed PostgreSQL
and an Azure free
account.][750 hours of Azure Database for PostgreSQL Flexible Server on a Burstable B1MS instance with 32GB storage for free]

## Azure subscriptions and limits

As explained in the [Introduction to Azure resource management][22],
subscriptions are a critical component of the Azure hierarchy: resources
cannot be provisioned without an Azure subscription, and although the
cloud is highly scalable, it is not possible to provision an unlimited
number of resources. A set of initial limits applies to all Azure
subscriptions. However, the limits for some Azure services can be
raised, assuming that the Azure subscription is not a free trial.
Organizations can raise these limits by submitting support tickets
through the Azure Portal. Limit increase requests help tell Microsoft
capacity planning teams to understand if they need to provide more
capacity when needed.

Since most Azure services are provisioned in regions, some limits apply
at the regional level. Developers must consider both global and regional
subscription limits when developing and deploying applications.

Consult [Azure's comprehensive list of service and subscription limits]
for more details.

## Azure authentication

As mentioned previously, Azure Database for PostgreSQL Flexible Server
consists of a data plane (data storage and data manipulation) and a
control plane (management of the Azure resource). Authentication is
separated between the control plane and the data plane as well.

In the control plane, Microsoft Entra authenticates users and determines
whether users are authorized to operate against an Azure resource.
Review Azure RBAC in the [Introduction to Azure resource management][23]
section for more information.

The built-in PostgreSQL account management system governs access for
administrator and non-administrator users in the data plane. Moreover,
Azure Database for PostgreSQL supports security principals in Microsoft
Entra, like users and groups, for data-plane access management. Using
AAD data-plane access management allows organizations to enforce
credential policies, specify authentication modes, and more. Refer to
the [Microsoft docs] for more information.

## Development editor tools

Developers have various code editor tools to choose from to complete
their IT projects. Commercial organizations and OSS communities have
produced tools and plug-ins making Azure application development
efficient and rapid. A very popular tool is Visual Studio Code (VS
Code). VS Code is an open-source, cross-platform text editor. It offers
useful utilities for various languages through extensions. Download VS
Code from the [Microsoft download page.]

![A simple screenshot of Visual Studio Code.]

The [PostgreSQL][24] extension allows developers to:

-   Connect to PostgreSQL instances
-   Manage connection profiles
-   Connect to a different Postgres instance or database in each tab
-   View object DDL with 'Go to Definition' and 'Peek Definition'
-   Write queries with IntelliSense
-   Run queries and save results as JSON, csv, or Excel

Consider adding it to Visual Studio Code environment to make working
with PostgreSQL instances more efficient.

When you are done developing for the day, you can stop Flexible Server.
This feature helps keep the organizational costs low.

## Resources

-   [App Service overview][Azure App Service (PaaS)]

-   [Azure App Service plan overview]

-   [Plan and manage costs for Azure App Service]

## Create a Flexible Server database

The focus of this guide is on demonstrating practical uses of PostgreSQL
Flexible Server, such as querying Flexible Server with common languages
and administrative tools. This section illustrates how to deploy
PostgreSQL Flexible Server using various Azure management tools in
preparation to follow the guide application samples.

### Azure portal

Azure provides a [Quickstart document] for users who want to use the
Azure portal to provision Flexible Server. While this is a great
opportunity to explore the configuration parameters of Azure Database
for Flexible Server, IaC approaches, like the imperative Azure CLI or
the declarative ARM template, are preferable to create deployments that
can easily be replicated in other environments.

### Azure CLI

The Azure CLI `az postgresql flexible-server` set of commands is very
robust. [Azure's quickstart guide] demonstrates how the
`az postgresql flexible-server create` and
`az postgresql flexible-server db create` commands can automatically
populate server parameters.

> ![Note icon][Note] **Note:** It is possible to exercise greater
> control over these commands by reviewing the documentation for the
> [`flexible-server create`] and [`flexible-server db create`] commands.

Running the CLI commands from [Azure Cloud Shell] is preferable, as the
context is already authenticated with Azure.

### ARM template

Azure provides a [Quickstart document][25] with a basic ARM template for
a Flexible Server deployment. We have also provided an ARM template to
support the applications explored in this guide
(https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-0-create-development-vm/basic-template/template.json).
The Azure sample template requires additional parameters to run. It can
be deployed with the `New-AzResourceGroupDeployment` PowerShell command
in the Quickstart or the `az deployment group create` CLI command.

### Bicep

Bicep is a declarative language for describing and deploying Azure
resources. It offers concise syntax, reliable type safety, and support
for code reuse. Bicep is a domain-specific language (DSL) used to deploy
Azure resources declaratively. It is a transparent abstraction over
Azure Resource Manager (ARM) templates. Bicep uses the same template
language as ARM and JSON but with a cleaner syntax and improved type
safety. Bicep is a great way to deploy Azure resources, including Azure
Database for PostgreSQL Flexible Server. Azure provides a [Quickstart
document][26] with Bicep code for a Flexible Server deployment.

### Terraform

Terraform is a third-party open-source infrastructure as code software
tool that enables you to safely and predictably create, change, and
improve infrastructure. Azure documentation provides an [article]
outlining Terraform code for a Flexible Server deployment.

## Connect, create and query Azure Database for PostgreSQL Flexible Server using pgAdmin

This section explains how to connect to and perform queries against
Azure Database for PostgreSQL Flexible Server using PostgreSQL pgAdmin,
a UI-based management tool.

There are multiple ways of accomplishing each database task in pgAdmin,
including (but limited to), GUI-based forms, the query tool and the
interactive shell (PSQL tool). This section will demonstrate the use of
many of these tools within pgAdmin.

### Setup

Follow one of the methods in the [Create a Flexible Server database][27]
document to create a Flexible Server resource. Remember the admin
username and password for the Flexible Server resource for use later in
this section.

Download pgAdmin tool from the [pgAdmin Downloads]. Alternatively, you
can use a package manager like [Chocolatey] and [WinGet] for
Windows-based machines, as well as [Homebrew] for macOS. For Linux-based
machines, you can use **yum** or **apt-get** to install pgAdmin.

![The pgAdmin splash screen.]

### Connect pgAdmin to Azure Database for PostgreSQL Flexible Server

1.  In the [Azure Portal][28], navigate to the Flexible Server resource
    created in the previous section.

2.  From the left-hand menu, select **Connect**.

3.  On the **Connect** screen, locate and expand the **pgAmin 4**
    section to find instructions on how to add a connection to the
    server in the pgAdmin software.

    ![pgAdmin instructions are displayed on the Connect screen of the
    Flexible Server resource in the Azure Portal.]

4.  On your desktop, open the pgAdmin application and follow the
    instructions from the Azure Portal.

    ![The pgAdmin application displays with a connection to the Azure
    Database for PostgreSQL Flexible Server.]

### Create and connect to a new database in the Flexible Server instance using the Query Tool

1.  In the pgAdmin application, expand the **Servers** node in the
    Object Explorer pane.

2.  Expand the Flexible Server resource node.

3.  Expand the **Databases** node.

4.  Right-click on the **postgres** admin database and select **Query
    Tool**.

    ![The pgAdmin Object explorer displays with the context menu open on
    the postgres database. Query Tool is selected in the context menu.]

5.  This will open a query window. Paste the following SQL statement
    into the query window and click the **Execute script** button to
    create a new database named **inventory**.

    ``` sql
    CREATE DATABASE inventory;
    ```

    ![The pgAdmin Query Tool displays with the SQL statement to create a
    new database having executed successfully.]

6.  In the Object Explorer, right-click on the **Databases** node and
    select **Refresh**. The `inventory` database will display. Expand
    the **inventory** node to establish a connection into the new
    database.

    ![The pgAdmin Object Explorer displays with the inventory database
    expanded to show the database objects.]

7.  Close the query tool tab that is connected to the **postgres**
    database. Do not save the changes.

### Create a table in the inventory database using the interactive shell (PSQL Tool)

1.  In the Object Explorer, right-click on the **inventory** database
    and select **PSQL Tool**.

    ![The pgAdmin Object Explorer displays with the context menu open on
    the inventory database. PSQL Tool is selected in the context menu.]

2.  At the shell prompt, paste the following code and press
    `<kbd>`{=html}Enter`</kbd>`{=html}. The shell will output
    `CREATE TABLE` indicating the successful operation.

    ``` sql
    CREATE TABLE products (id serial PRIMARY KEY, name VARCHAR(50), quantity INTEGER);
    ```

    ![The pgAdmin PSQL Tool displays with the SQL statement to create a
    new table having executed successfully.]

3.  In the Object Explorer, right-click the **inventory** database and
    select **Refresh**. Expand the **Schemas** item and the **public**
    node. The `products` table will display under **Tables**. Expand the
    **products** node to view the table columns.

    ![The pgAdmin Object Explorer displays with the inventory database
    expanded to show the products table.]

4.  Keep the PSQL Tool window open for use in the next section.

### Insert data into the inventory table using the PSQL Tool

1.  In the PSQL Tool window, paste the following code and press
    `<kbd>`{=html}Enter`</kbd>`{=html}. The shell will output
    `INSERT 0 1` indicating the successful operation.

    ``` sql
    INSERT INTO products (name, quantity) VALUES ('banana', 150);
    ```

2.  Repeat the previous step to insert the following records into the
    `products` table.

    ``` sql
    INSERT INTO products (name, quantity) VALUES ('orange', 154);
    INSERT INTO products (name, quantity) VALUES ('apple', 100);
    INSERT INTO products (name, quantity) VALUES ('kiwi', 200);
    ```

    ![The pgAdmin PSQL Tool displays with the SQL statements inserting
    new records having executed successfully.]

3.  Close the PSQL Tool tab.

### Query the inventory table using the Query Tool

1.  In Object Explorer, right-click the **products** table and select
    **Query Tool**.

2.  In the query window, enter the following query and then select the
    **Execute script** button.

    ``` sql
    SELECT * FROM products;
    ```

    ![The pgAdmin Query Tool displays with the SQL statement to query
    the products table having executed successfully.]

3.  Keep the Query Tool window open for use in the next section.

### Update data in the inventory table using the Query Tool results grid

The output of the previous query displays ther results in a
spreadsheet-like format. This data is editable in-line.

1.  Double-click the quantity value for the `orange` record and change
    the value to `125`. Changed values will be bolded.

2.  Select the **Save data changes** button to commit the changes back
    to the database.

    ![The Query Tool displays with the value for orange having been
    changed to 125. The Save data changes button is highlighted.]

3.  Keep the Query Tool tab open for use in the next section.

### Delete data from the inventory table using the Query Tool

1.  In the Query Tool window, replace the content with the following
    query and then select the **Execute script** button.

    ``` sql
    DELETE FROM products WHERE name = 'kiwi';
    ```

    ![The pgAdmin Query Tool displays with the SQL statement to delete a
    record from the products table having executed successfully.]

2.  Change the query to a select query and notice the `kiwi` record is
    no longer present.

    ``` sql
    SELECT * FROM products;
    ```

    ![The pgAdmin Query Tool displays with the SQL statement to query
    the products table having executed successfully.][29]

3.  Close the Query Tool tab.

### Clean up - Delete the database using the pgAdmin Object Explorer

1.  Right-click on the **inventory** database, and select **Delete**.

    ![The inventory database context window displays with the Delete
    item highlighted.]

2.  Select **Yes** on the Delete Database confirmation modal dialog.

3.  In Object Explorer, notice the **inventory** database is no longer
    present.

## Connect and query Azure Database for PostgreSQL Flexible Server using the Azure CLI

pgAdmin is not the only method of running queries against your
PostgreSQL database. This section explains how to perform queries
against Azure Database for PostgreSQL Flexible Server using the Azure
CLI and the `az postgresql flexible-server` utilities and references the
steps in the [Quickstart: Connect and query with Azure CLI with Azure
Database for PostgreSQL Flexible Server - Flexible Server] article.

### Setup

While the Azure article demonstrates how to provision a Flexible Server
instance using the CLI, any of the presented provisioning methods in the
[Create a Flexible Server database][30] section are possible.

### Instructions

The Azure CLI supports running queries interactively, via the
`az postgresql flexible-server connect` command, which is similar to
running queries interactively against a PostgreSQL instance through the
PostgreSQL CLI. It is also possible to run an individual SQL query or a
SQL file using the `az postgresql flexible-server execute` command.

> ![Note icon][Note] **Note:** These commands require the
> `rdbms-connect` CLI extension, which is automatically installed if it
> is not present. If permissions errors are encountered from the Azure
> Cloud Shell, execute the commands from a local installation of the
> Azure CLI.

In addition to the queries in the document, it is also possible to run
basic admin queries. The statements below create a new user `analyst`
that can read data from all tables in `newdatabase`.

``` sql
USE newdatabase;
CREATE USER 'analyst'@'%' IDENTIFIED BY '[SECURE PASSWORD]';
GRANT SELECT ON newdatabase.* TO 'analyst'@'%';
FLUSH PRIVILEGES;
```

The new `analyst` user can also connect to `newdatabase` in the Flexible
Server instance. The new user can only query tables in `newdatabase`.

![This image demonstrates running queries against the Flexible Server
instance using the Azure CLI.]

> For more details on creating databases and users in Flexible Server,
> consult [this document.] Note that it uses the `PostgreSQL` CLI.

## Language support

Once an editor is selected, the next step is to pick a development
language or platform. Below are some quick links:

[PHP]

[Java]

[Python]

[Other notable languages for PostgreSQL apps]

### PHP

This section describes tools to interact with Azure Database for
PostgreSQL Flexible Server through PHP.

#### Connect and query

##### Setup

Follow one of the methods in the [Create a Flexible Server database][30]
document to create a Flexible Server instance with a database.

Moreover, install PHP from the [downloads page.] These instructions were
tested with PHP 8.0.13 (any PHP 8.0 version should work).

> The `php.ini` file needs to uncomment the `extension=PostgreSQLi` and
> `extension=openssl` lines for these steps to work.

A text editor such as Visual Studio Code may also be useful.

Lastly, download the [connection certificate] that is used for SSL
connections with the PostgreSQL Flexible Server instance. In these
snippets, the certificate is saved to `C:\Tools` on Windows. Adjust this
if necessary.

##### Instructions

Microsoft's [Quickstart guide] performs standard CRUD operations against
the PostgreSQL instance from a console app. This document modifies the
code segments from the guide to provide an encrypted connection to the
Flexible Server instance.

The first code snippet creates a table called `Products` with four
columns, including a primary key. Adjust the `host`, `username` (most
likely `sqlroot`), `password`, and `db_name` (most likely `newdatabase`)
parameters to the values used during provisioning. Moreover, adjust the
certificate path in the `PostgreSQLi_ssl_set()` method.

``` php
<?php
$host = '[SERVER NAME].postgres.database.azure.com';
$username = 'sqlroot';
$password = '[PASSWORD]';
$db_name = 'newdatabase';

//Establishes the connection
$conn = PostgreSQLi_init();
PostgreSQLi_ssl_set($conn, NULL, NULL, "C:\Tools\DigiCertGlobalRootCA.crt.pem", NULL, NULL);
PostgreSQLi_real_connect($conn, $host, $username, $password, $db_name, 5432, PostgreSQLI_CLIENT_SSL);
if (PostgreSQLi_connect_errno()) {
die('Failed to connect to PostgreSQL: '.PostgreSQLi_connect_error());
}

// Run the create table query
if (pg_query($conn, '
CREATE TABLE Products (
`Id` INT NOT NULL AUTO_INCREMENT ,
`ProductName` VARCHAR(200) NOT NULL ,
`Color` VARCHAR(50) NOT NULL ,
`Price` DOUBLE NOT NULL ,
PRIMARY KEY (`Id`)
);
')) {
printf("Table created\n");
}

//Close the connection
PostgreSQLi_close($conn);
?>
```

Console output with the message `Table created` should be displayed.

The second code snippet uses the same logic to start and close an
SSL-secured connection. This time, it leverages a prepared insert
statement with bound parameters.

``` php
<?php
$host = '[SERVER NAME].postgres.database.azure.com';
$username = 'sqlroot';
$password = '[PASSWORD]';
$db_name = 'newdatabase';

//Establishes the connection
$conn = PostgreSQLi_init();
PostgreSQLi_ssl_set($conn, NULL, NULL, "C:\Tools\DigiCertGlobalRootCA.crt.pem", NULL, NULL);
PostgreSQLi_real_connect($conn, $host, $username, $password, $db_name, 5432, PostgreSQLI_CLIENT_SSL);
if (PostgreSQLi_connect_errno()) {
die('Failed to connect to PostgreSQL: '.PostgreSQLi_connect_error());
}

//Create an Insert prepared statement and run it
$product_name = 'BrandNewProduct';
$product_color = 'Blue';
$product_price = 15.5;
if ($stmt = PostgreSQLi_prepare($conn, "INSERT INTO Products (ProductName, Color, Price) VALUES (?, ?, ?)")) {
PostgreSQLi_stmt_bind_param($stmt, 'ssd', $product_name, $product_color, $product_price);
PostgreSQLi_stmt_execute($stmt);
printf("Insert: Affected %d rows\n", PostgreSQLi_stmt_affected_rows($stmt));
PostgreSQLi_stmt_close($stmt);
}

//Close the connection
PostgreSQLi_close($conn);
?>
```

The console output message `Insert: Affected 1 rows` should be
displayed.

The third code snippet utilizes the `pg_query()` method, just like the
first code snippet. However, it also utilizes the
`PostgreSQLi_fetch_assoc()` method to parse the result set.

``` php
<?php
$host = '[SERVER NAME].postgres.database.azure.com';
$username = 'sqlroot';
$password = '[PASSWORD]';
$db_name = 'newdatabase';

//Establishes the connection
$conn = PostgreSQLi_init();
PostgreSQLi_ssl_set($conn, NULL, NULL, "C:\Tools\DigiCertGlobalRootCA.crt.pem", NULL, NULL);
PostgreSQLi_real_connect($conn, $host, $username, $password, $db_name, 5432, PostgreSQLI_CLIENT_SSL);
if (PostgreSQLi_connect_errno()) {
die('Failed to connect to PostgreSQL: '.PostgreSQLi_connect_error());
}

//Run the Select query
printf("Reading data from table: \n");
$res = pg_query($conn, 'SELECT * FROM Products');
while ($row = PostgreSQLi_fetch_assoc($res)) {
var_dump($row);
}

//Close the connection
PostgreSQLi_close($conn);
?>
```

PHP returns an array with the column values for the row inserted in the
previous snippet.

The next snippet uses a prepared update statement with bound parameters.
It modifies the `Price` column of the record.

``` php
<?php
$host = '[SERVER NAME].postgres.database.azure.com';
$username = 'sqlroot';
$password = '[PASSWORD]';
$db_name = 'newdatabase';

//Establishes the connection
$conn = PostgreSQLi_init();
PostgreSQLi_ssl_set($conn, NULL, NULL, "C:\Tools\DigiCertGlobalRootCA.crt.pem", NULL, NULL);
PostgreSQLi_real_connect($conn, $host, $username, $password, $db_name, 5432, PostgreSQLI_CLIENT_SSL);
if (PostgreSQLi_connect_errno()) {
die('Failed to connect to PostgreSQL: '.PostgreSQLi_connect_error());
}

//Run the Update statement
$product_name = 'BrandNewProduct';
$new_product_price = 15.1;
if ($stmt = PostgreSQLi_prepare($conn, "UPDATE Products SET Price = ? WHERE ProductName = ?")) {
PostgreSQLi_stmt_bind_param($stmt, 'ds', $new_product_price, $product_name);
PostgreSQLi_stmt_execute($stmt);
printf("Update: Affected %d rows\n", PostgreSQLi_stmt_affected_rows($stmt));

//Close the connection
PostgreSQLi_stmt_close($stmt);
}

//Close the connection
PostgreSQLi_close($conn);
?>
```

After executing these commands, the message `Update: Affected 1 rows`
should be displayed.

The final code snippet deletes a row from the table using the
`ProductName` column value. It again uses a prepared statement with
bound parameters.

``` php
<?php
$host = '[SERVER NAME].postgres.database.azure.com';
$username = 'sqlroot';
$password = '[PASSWORD]';
$db_name = 'newdatabase';

//Establishes the connection
$conn = PostgreSQLi_init();
PostgreSQLi_ssl_set($conn, NULL, NULL, "C:\Tools\DigiCertGlobalRootCA.crt.pem", NULL, NULL);
PostgreSQLi_real_connect($conn, $host, $username, $password, $db_name, 5432, PostgreSQLI_CLIENT_SSL);
if (PostgreSQLi_connect_errno()) {
die('Failed to connect to PostgreSQL: '.PostgreSQLi_connect_error());
}

//Run the Delete statement
$product_name = 'BrandNewProduct';
if ($stmt = PostgreSQLi_prepare($conn, "DELETE FROM Products WHERE ProductName = ?")) {
PostgreSQLi_stmt_bind_param($stmt, 's', $product_name);
PostgreSQLi_stmt_execute($stmt);
printf("Delete: Affected %d rows\n", PostgreSQLi_stmt_affected_rows($stmt));
PostgreSQLi_stmt_close($stmt);
}

//Close the connection
PostgreSQLi_close($conn);
?>
```

Congratulations. An SSL-secured connection with Flexible Server was
demonstrated, a table was created (DDL), and some CRUD operations were
performed against that table (DML).

#### Application connectors

There are two major APIs to interact with PostgreSQL in PHP:

-   *PostgreSQLi*, *PostgreSQLi* is an improvement over the earlier
    *PostgreSQL* API, which does not meet the security needs of modern
    applications.
-   *PDO*, or *PHP Data Objects*, allows applications to access
    databases in PHP through abstractions, standardizing data access for
    different databases. PDO works with a database-specific driver, like
    *PDO_PostgreSQL*.

> ![Tip] **Tip:** *PostgreSQLi* and *PDO* are wrappers over the
> *PostgreSQLnd* or *libPostgreSQLclient* C libraries: it is highly
> recommended to use *PostgreSQLnd* as the default backend library due
> to its more advanced features. *PostgreSQLnd* is the default backend
> provided with PHP.

Flexible Server and Single Server are compatible with all PHP client
utilities for PostgreSQL Community Edition.

#### Resources

1.  [Create a PHP web app in Azure App Service]
2.  [Backend libraries for PostgreSQLi and PDO_PostgreSQL]
3.  [Introduction to PDO]
4.  [PDO_PostgreSQL Reference]
5.  [Configure a PHP app for Azure App Service]
6.  The [php.ini directives] allow for the customization of the PHP
    environment.

### Java

This section describes tools to interact with Azure Database for
PostgreSQL Flexible Server through Java.

#### Connect and query

Refer to the [Quickstart: Use Java and JDBC with Azure Database for
PostgreSQL Flexible Server]

#### Application connectors

*PostgreSQL Connector/J* is a JDBC-compatible API that natively
implements the PostgreSQL protocol in Java, rather than utilizing client
libraries. The Connect and Query sample does not directly utilize
*PostgreSQL Connector/J*, but Microsoft provides a sample that uses this
technology.

Developers use persistence frameworks like Spring Data JPA to accelerate
development. They can focus on the application business logic, not basic
database communication. Spring Data JPA extends the JPA specification,
which governs *object-relational mapping* (ORM) technologies in Java. It
functions on top of JPA implementations, like the Hibernate ORM. The
Connect and Query sample leverages Spring Data JPA and *PostgreSQL
Connector/J* to access the Azure PostgreSQL instance and expose data
through a web API.

Flexible Server is compatible with all Java client utilities for
PostgreSQL Community Edition. However, Microsoft has only validated
*PostgreSQL Connector/J* for use with Single Server due to its network
connectivity setup. Refer to the [PostgreSQL drivers and management
tools compatible with Azure Database for PostgreSQL Flexible Server]
article for more information about drivers compatible with Single
Server.

#### Resources

1.  [PostgreSQL Connector/J Introduction]
2.  PostgreSQL Connector/J Microsoft Samples
    -   [Flexible Server]
    -   [Single Server]
3.  [Introduction to Spring Data JPA]
4.  [Hibernate ORM]

#### Tooling

##### IntelliJ IDEA

Currently, Single Server is supported.

##### Eclipse

Eclipse is another popular IDE for Java development. It supports
extensions for enterprise Java development, including powerful utilities
for Spring applications. Moreover, through the Azure Toolkit for
Eclipse, developers can quickly deploy their applications to Azure
directly from Eclipse.

**Tool-Specific Resources**

1.  [Installing the Azure Toolkit for Eclipse]
2.  [Create a Hello World web app for Azure App Service using Eclipse]

##### Maven

Maven improves the productivity of Java developers by managing builds,
dependencies, releases, documentation, and more. Maven projects are
created from archetypes. Microsoft provides the Maven Plugins for Azure
to help Java developers work with Azure Functions, Azure App Service,
and Azure Spring Cloud from their Maven workflows.

> ![Note icon][Note] **Note:** Application patterns with Azure
> Functions, Azure App Service, and Azure Spring Cloud are addressed in
> the [04 / End to End application development][31] story.

**Tool-Specific Resources**

1.  [Azure for Java developer documentation]
2.  [Maven Introduction]
3.  [Develop Java web app on Azure using Maven (App Service)]
4.  [Deploy Spring microservices to Azure (Spring Cloud)]
5.  [Develop Java serverless Functions on Azure using Maven]

### Python

This section describes tools to interact with Azure Database for
PostgreSQL Flexible Server through Python.

#### Connect and query

##### Setup

This section will demonstrate how to query Azure Database for PostgreSQL
Flexible Server using the `PostgreSQL-connector-python` library on
Python 3.

Follow one of the methods in the [Create a Flexible Server database][30]
document to create a Flexible Server instance with a database.

Moreover, install Python 3.7 or above from the [Downloads page]. This
sample was tested using Python 3.8.

A text editor like Visual Studio Code will greatly help.

Though a Python Virtual Environment is not necessary for the sample to
run, using one will avoid conflicts with packages installed globally on
the development system. The commands below will create a Virtual
Environment called `venv` and activate it on Windows. Instructions will
differ for other OS.

``` cmd
python -m venv venv
.\venv\Scripts\activate
```

##### Instructions

This section is based on [Microsoft's sample].

The first code snippet creates a table, `inventory`, with three columns.
It uses raw queries to create the `inventory` table and insert three
rows. If the snippet succeeds, the following output will be displayed.

``` python
Connection established
Finished dropping table (if existed).
Finished creating table.
Inserted 1 row(s) of data.
Inserted 1 row(s) of data.
Inserted 1 row(s) of data.
Done.
```

> ![Note icon][Note] **Note:** The sample establishes an SSL connection
> with the PostgreSQL instance. Use the statement below (placed before
> `cursor` and `conn` are closed) to validate the use of SSL.

``` python
cursor.execute("SHOW STATUS LIKE 'Ssl_cipher'")
print(cursor.fetchone())
```

It is recommended to bind the [SSL public
certificate][connection certificate] with connections to Flexible
Server. Download the public certificate to a location on the development
machine (such as `C:\Tools`). Then, edit the `config` dictionary to add
the `ssl_ca` key and the file path of the certificate as the value.

``` python
config = {
  'host':'[SERVER].postgres.database.azure.com',
  'user':'sqlroot',
  'password':'[PASSWORD]',
  'database':'newdatabase',
  'ssl_ca': 'C:\Tools\DigiCertGlobalRootCA.crt.pem'
}
```

The second code snippet connects to the PostgreSQL instance and executes
a raw query to SELECT all rows from the `inventory` table. This time, it
uses the `fetchall()` method to parse the result set into a Python
iterable. An output like the one below should display:

``` python
Connection established
Read 3 row(s) of data.
Data row = (1, banana, 150)
Data row = (2, orange, 154)
Data row = (3, apple, 100)
Done.
```

The third code snippet executes an UPDATE statement to change the
`quantity` value of the record identified by `name`. An output like the
one below should display:

``` python
Connection established
Updated 1 row(s) of data.
Done.
```

The final snippet executes a raw DELETE statement against the
`inventory` table targeting records identified by `name`. An output like
the one below should display:

``` python
Connection established
Deleted 1 row(s) of data.
Done.
```

At this point, a successfully opened connection to Flexible Server was
established, a table was created (DDL), and CRUD operations were
performed (DML) against data in the table.

If a Python Virtual Environment was created, simply enter `deactivate`
into the console to remove it. .

#### Application connectors

*PostgreSQL Connector/Python* offers a Python Database API
specification-compatible driver for PostgreSQL database access (PEP
249). It does not depend on a PostgreSQL client library. The Python
Connect and Query sample utilizes *PostgreSQL Connector/Python*.

An alternative connector is *PyPostgreSQL*. It is also PEP
249-compliant.

Django is a popular web application framework for Python. The Django ORM
officially supports PostgreSQL through (1) the *PostgreSQLclient* Python
wrapper for the native PostgreSQL driver or (2) the *PostgreSQL
Connector/Python* API. *PostgreSQLclient* is recommended for use with
the Django ORM.

Flexible Server is compatible with all Python client utilities for
PostgreSQL Community Edition. However, Microsoft has only validated
*PostgreSQL Connector/Python* and *PyPostgreSQL* for use with Single
Server due to its network connectivity setup. Refer to
[this][PostgreSQL drivers and management tools compatible with Azure Database for PostgreSQL Flexible Server]
document for more information about drivers compatible with Single
Server.

#### Resources

1.  [Introduction to PostgreSQL Connector/Python]
2.  [PyPostgreSQL Samples]
3.  [PostgreSQLdb (PostgreSQLclient) User's Guide]
4.  [Django ORM Support for PostgreSQL]

### Other notable languages for PostgreSQL apps

Like the other language support guides, Flexible Server is compatible
with all PostgreSQL clients that support PostgreSQL Community Edition.
Microsoft provides a [curated list of compatible clients for PostgreSQL
Single
Server][PostgreSQL drivers and management tools compatible with Azure Database for PostgreSQL Flexible Server].

#### .NET

.NET applications typically use ORMs to access databases and improve
portability: two of the most popular ORMs are Entity Framework (Core)
and Dapper.

Using PostgreSQL with Entity Framework (Core) requires [PostgreSQL
Connector/NET], which is compatible with Single Server. Learn more [from
the PostgreSQL documentation] about support for Entity Framework (Core).

Microsoft has also validated that PostgreSQL Single Server is compatible
with the [Async PostgreSQL Connector for .NET]. This connector works
with both Dapper and Entity Framework (Core).

#### Ruby

The [*PostgreSQL2*] library, compatible with Single Server, provides
PostgreSQL connectivity in Ruby by referencing C implementations of the
PostgreSQL connector.

## 03 / Summary

This module augmented an understanding of Flexible Server through
practical examples of how modern applications access Flexible Server.
Flexible Server supports all standard PostgreSQL clients. Previously
presented information Microsoft Azure deployment tools and concepts were
utilized to provision a Flexible Server instance to run the included
code examples.

In the next section, the Contoso NoshNow Sample Application provides a
starting point for the entire developer journey. It provides high-level
concepts and shows how PostgreSQL apps can be evolved into a scalable
modern applications.

# 04 / End to End application development

The previous chapters provided some basic Azure hands-on experience. It
is important to understand high-level concepts before moving to more
advanced examples and concepts. Once you have reviewed the building
block concepts, you will learn about how to set up your Azure
development environment, and get some hands-on architecture experience
by working through the tutorial journey. The guide provides experience
with Windows and Linux infrastructures.

With a configured development environment available, it is time to
explore the various architecture and deployment options available when
deploying an application and its corresponding PostgreSQL database.

This chapter focuses on these subjects:

![This image explains the progression of topics in this chapter.]

## Common Azure development services overview

This section explains common cloud application architectures and Azure
services. While these services are not directly related to PostgreSQL,
they are often used in modern Azure applications. This content provides
a fundamental understanding of the common Azure development resources.
Subsequent material will reference these Azure services heavily.

### Web Apps

Developers can deploy PostgreSQL-backed apps to Azure on a Windows or
Linux environment through [Azure App Service,][Azure App Service (PaaS)]
a PaaS platform that supports popular frameworks, including .NET, PHP,
Java, Python, Docker containers, and more. App Service is compatible
with manual deployment mechanisms, including ZIP files, FTP, and local
Git repositories. It also supports automated mechanisms, like GitHub
Actions, to deploy faster and minimize issues. Coupled with powerful
management tools, like the Kudu console, App Service is suitable for
many enterprise apps.

#### Resources

-   [App Service overview][Azure App Service (PaaS)]
-   PHP and PostgreSQL Flexible Server sample app:
    -   Manual deployment: [Running the sample application][32]
    -   Scripted deployment: [Cloud Deployment to Azure App Service][33]

### Serverless Compute

[Azure Functions] and [Azure Logic Apps] are serverless platforms,
meaning that customers are billed only for the execution time of their
code. Azure automatically scales compute resources up and down in
response to demand.

### Azure Functions

An Azure Functions instance consists of individual functions that
execute in response to a *trigger*, like a cron job or an HTTP request.
These functions interface with other Azure resources, like Cosmos DB,
through bindings, though resources without default bindings, like Azure
Database for PostgreSQL Flexible Server, can be accessed through
language-specific connectors.

Like Azure App Service, Function Apps support multiple programming
languages. Developers can extend support to unsupported languages
through [custom handlers.]

For long-running, stateful serverless architectures, such as when human
intervention is necessary, Azure provides the Durable Functions
extension. Consult the [documentation] for more information about
architectures with Durable Functions.

#### Resources

-   [Introduction to Azure Functions][Azure Functions]
-   [Azure Functions hosting options]
-   Azure Functions with PostgreSQL Flexible Server samples:
    -   .NET: [Azure Function with PostgreSQL (.NET)][34]
    -   Python: [Azure Function with PostgreSQL (Python)][35]

### Azure Logic Apps

Azure Logic Apps provide integration services for enterprises,
connecting applications that reside on-premises and in the cloud. Azure
Logic Apps *workflows* execute *actions* after a *trigger* is fired.

Azure Logic Apps interface with external systems through *managed
connectors*. Microsoft provides a managed connector for PostgreSQL
databases, but this connector cannot easily be used for Azure Database
for PostgreSQL Flexible Server, as the PostgreSQL managed connector
accesses local PostgreSQL databases through a data gateway.

#### Resources

-   [What is a Azure Logic App?][Azure Logic Apps]
-   [Compare Azure Functions and Azure Logic Apps]
-   [Logic Apps with PostgreSQL][36]

### Microservices

Organizations deploy microservices architectures to offer resilient,
scalable, developer-friendly applications. Unlike traditional monolithic
apps, each service operates independently and can be updated without
redeploying the app. Each service also manages its own persistence
layer, meaning that service teams can perform database schema updates
without affecting other services.

While microservices apps offer major benefits, they require advanced
tools and knowledge of distributed systems. Organizations utilize domain
analysis to define optimal boundaries between services.

On Azure, organizations often deploy microservices to Azure Kubernetes
Service through CI/CD platforms, such as GitHub Actions.

#### Resources

-   [Build microservices on Azure]
-   [Using domain analysis to model microservices]
-   [Deploying a Laravel app backed by a Java REST API to AKS][37]

### API Management

Azure API Management allows organizations to manage and securely expose
their APIs hosted in diverse environments from a central service. API
Management simplifies legacy API modernization, API exposure to multiple
platforms, and data interchange between businesses. Applications call
APIs through an *API gateway* that validates credentials, enforces
quotas, serializes requests in different protocols, and more. Developers
operate their API Management instances through the management plane, and
they expose API documentation for internal and external users through
the Developer portal.

Like other Azure resources, API Management offers comprehensive RBAC
support, accommodating internal administrative and development staff and
external users. Moreover, as API Management integrates with APIs hosted
in environments outside Azure, organizations can self-host the API
gateway while retaining the Azure management plane APIs.

#### Resources

-   [About API Management]
-   [Self-hosted gateway overview]

### Event-driven - Azure Event Grid vs. Service Bus vs. Event Hubs

Event-driven apps create, ingest, and process events (state changes) in
real-time. Event producers and event consumers are loosely-coupled, and
every consumer sees every event. Event-driven architectures can perform
complex event handling, such as aggregations over time, and operate with
large volumes of data produced rapidly.

Azure provides different services for relaying *messages* and *events*.
When one system sends a message to another, it expects the receiving
system to handle the message in a particular way and respond. However,
with events, the publisher does not care how the event is handled.

#### Azure Event Grid

Azure Event Grid is a serverless publish-subscribe system that
integrates well with Azure and non-Azure services. As an event-based
system, it simply relays state changes to subscribers; it does not
contain the actual data that was changed.

#### Azure Service Bus

Azure Service Bus provides a *queue* capability to pass each message to
one consumer (first-in-first-out queue). Moreover, Service Bus includes
pub-sub functionality, allowing more than one consumer to receive a
message.

#### Azure Event Hubs

Azure Event Hubs facilitates the ingestion and replay of event data. It
is optimized for processing millions of events per second. Event Hubs
supports multiple consumers through *consumer groups*, which point to
certain locations in the stream.

#### Example Solution

An e-commerce site can use Service Bus to process an order, Event Hubs
to capture site telemetry, and Event Grid to respond to events like an
item was shipped.

### Cron jobs

Developers use cron jobs to run operations on a schedule. They are often
useful for administrative tasks, like taking site backups. Azure
Functions and Logic Apps support cron jobs:

-   [Azure Functions:] The timer trigger executes a function on a
    schedule. Azure Functions supports more complex scheduling tasks,
    like specifying the cron job time precision.
-   [Logic Apps:] Logic Apps supports Recurrence triggers and Sliding
    Window triggers. Recurrence triggers run Logic Apps on a schedule,
    while Sliding Window triggers extend Recurrence triggers by
    executing occurrences that were missed (e.g. the Logic App was
    disabled).

### WebJobs

Azure WebJobs, like Azure Functions, processes events in Azure services.
WebJobs executes code in an App Service instance, and it works best with
the WebJobs SDK. However, WebJobs with the WebJobs SDK only supports C#.

Azure Functions is built on the WebJobs SDK. It offers more developer
flexibility than WebJobs and serverless execution. However, WebJobs
provides more control over how events are received than what Azure
Functions exposes.

### Advanced orchestration - Azure Data Factory

Azure Data Factory supports serverless data integration at scale. Users
author data integration *pipelines* that consist of multiple
*activities*. Activities operate on *datasets* (data sources and sinks).
Data Factory compute environments are known as *integration runtimes*.
Integration runtimes can be hosted in Azure or on-premises.

Azure Data Factory supports both Azure PaaS and generic (on-premises)
PostgreSQL instances.

Developers can execute Data Factory pipelines manually, on a schedule,
or in response to Azure events through the Event Grid integration.

![Read more icon] [Copy activity performance and scalability guide]

## Introduction to the Sample Application

Instead of learning multiple sample applications, the guide focuses on
evolving an architecture and deployment strategies. Readers should learn
the sample application structure once and focus on how the application
will need to be modified to fit the deployment model and architecture
evolution.

### Sample Application overview and story

Contoso NoshNow is a delivery service and logistics company focused on
making delicious food accessible to its customers no matter where they
are located. The company started with a simple web application they
could easily maintain and add features to as the business grew. A few
years later, their CIO realized the application performance and their
current on-premises environment were not meeting their business's
growing demand. The application deployment process took hours, yielded
unreliable results, and the admin team could not easily find production
issues quickly. During the busy hours, customers complained the web
application was slow.

The development team knew migrating to Azure could help with these
issues.

### Solution architecture

This is the base application that will be evolved in the future sample
scripts. This PaaS architecture is a couple of steps ahead of the
Classic architecture. The Classic architecture is meant to be an example
of an existing on-premises environment that might be migrated to the
Azure cloud. If you have a new application, you most likely will start
with the PaaS architecture depicted below. This is the easiest path for
a user looking to understand the Azure basics.

![This image shows a sample architecture involving a PHP App Service
instance and a Flexible Server instance.]

### Site map

The web application is simple, but covers the fundamentals.

![This image shows the sample app site map.]

### Running the sample lab

You will find the steps to run the lab in the artifacts repo here:
[Sample application tutorial]

## Deployment evolution options

Let us discuss the journey overview. The journey will start with a
classic deployment to a typical web and database server on a `physical`
or `virtualized` host operating system. Next, explore the evolution of
the potential deployment options from a simple web app deployed to App
Service through a complex progression ending with the application
running as containers in Azure Kubernetes Service (AKS) with Azure
Database for PostgreSQL Flexible Server hosting the database.

The following scenarios will be discussed and demonstrated as part of
this Azure PostgreSQL developer's guide. All of the following
deployments will utilize the same application and database backend and
what is needed to modify the application to support the targets. Topics
will be discussed in the following simple to complex architecture order.

### Deployment option TOC

1.  [Classic deployment][38]
2.  [Azure VM Deployment][39]
3.  [Simple App Service deployment with Azure Database for PostgreSQL
    Flexible Server][40]
4.  \[App Service with In-App PostgreSQL\]
5.  [Continuous Integration (CI) and Continuous Delivery (CD)][41]
6.  [Containerizing layers with Docker][42]
7.  [Azure Container Instances (ACI)][43]
8.  [App Service Containers][44]
9.  [Azure Kubernetes Service (AKS)][45]
10. [AKS with PostgreSQL Flexible Server][46]

## Classic deployment

In a classic deployment, development and operations staff will typically
set up a web server (such as Internet Information Services (IIS),
Apache, or NGINX) on physical or virtualized **on-premises** hardware.

Some web servers are relatively easier to set up than others. The
complexity depends on what the target operating system is and what
features the application and database are using, for example, SSL/TLS.

In addition to the web server, it is also necessary to install and
configure the physical PostgreSQL database server. This includes
creating the schema and the application users that will be used to
access the target database(s).

As part of our sample application and supporting Azure Landing zone
created by the ARM templates, most of this gets set up automatically.
Once the software is installed and configured, it is up to the developer
to deploy the application and database on the system. Classical
deployments tend to be manual such that the files are copied to the
target production web server and then deploy the database schema and
supported data via PostgreSQL tools or the pgAdmin tool.

The biggest advantage of a classic on-premises deployment is the
infrastructure team will have full control of the environment. The
biggest weakness is they must also maintain every aspect of the
environment as well.

## Azure VM deployment

An Azure VM Deployment is very similar to a classical deployment but
rather than deploying to physical hardware, deployment is to virtualized
hardware in the Azure cloud. The operating system and software will be
the same as in a classic deployment, but to open the system to external
apps and users, the virtual networking must be modified to allow
database access to the web server. This is known as the IaaS
(infrastructure as a service) approach.

The advantages of using Azure to host virtual machines include the
ability to enable backup and restore services, disk encryption, and
scaling options that require no upfront costs and provide flexibility in
configuration options with just a few clicks of the mouse. This is in
contrast to the relatively complex and extra work needed to enable these
types of services on-premises.

## Simple App Service deployment with Azure Database for PostgreSQL Flexible Server

If supporting the operating system and the various other software is not
a preferred approach, the next evolutionary path is to remove the
operating system and web server from the list of setup and configuration
steps. This can be accomplished by utilizing the Platform as a Service
(PaaS) offerings of Azure App Service and Azure Database for PostgreSQL
Flexible Server.

However, modernizing an application and migrating them to these
aforementioned services may introduce some relatively small application
changes.

## Continuous Integration (CI) and Continuous Delivery (CD)

Doing manual deployments every time a change is made can be a very
time-consuming endeavor. Utilizing an automated deployment approach can
save a lot of time and effort. Azure DevOps and Github Actions can be
used to automatically deploy code and databases each time a new commit
occurs in the codebase.

Whether using Azure DevOps or Github, there will be some setup work to
support the deployments. This typically includes creating credentials
that can connect to the target environment and deploy the release
artifacts.

## Containerizing layers with Docker

By building the application and database with a specific target
environment in mind, it will need to be assumed that the operations team
will have deployed and configured that same environment to support the
application and data workload. If they missed any items, the application
will either not load or may error during runtime.

Containers solve the potential issue of misconfiguration of the target
environment. By containerizing the application and data, the application
will run exactly as intended. Containers can also more easily be scaled
using tools such as Kubernetes.

Containerizing an application and data layer can be relatively complex,
but once the build environment is set up and working, it is possible to
push container updates very quickly to multi-region load-balanced
environments.

## Azure Container Instances (ACI)

After application and data layers are migrated to containers, a hosting
target must be selected to run the containers. A simple way to deploy a
container is to use Azure Container Instances (ACI).

Azure Container Instances can deploy one container at a time or multiple
containers to keep the application, API, and data contained in the same
resource.

## App Service Containers

Developers can extend the benefits of App Service, like scalability,
elasticity, and simple CI/CD integration, to their containerized apps
using App Service for Containers. This offering supports individual
containers and multi-container apps through Docker Compose files.
Containers give teams added flexibility beyond the platforms supported
directly by App Service.

## Azure Kubernetes Service (AKS)

ACI and App Service Container hosting are effective ways to run
containers, but they do not provide many enterprise features: deployment
across nodes that live in multiple regions, load balancing, automatic
restarts, redeployment, and more.

Moving to Azure Kubernetes Service (AKS) will enable the application to
inherit all the enterprise features provided by AKS. Moreover,
Kubernetes apps that persist data in PostgreSQL Flexible Server unlock
numerous benefits:

-   In supported regions, co-locating Flexible Server and AKS nodes in
    the same availability zone minimizes latency.

## AKS with PostgreSQL Flexible Server

Running the database layer in a container is better than running it in a
VM, but not as great as removing all the operating system and software
management components.

## Start the hands-on-tutorial developer journey

### Development environment setup

The first step to exploring the evolution of PostgreSQL Application
development is to get the environment set up and configure the
infrastructure.

We provided two ARM templates that can be deployed that will set up the
environment. The template is a JavaScript Object Notation (JSON) file
that defines the infrastructure and configuration for your project. In
the template, you specify the resources to deploy and the properties for
those resources.

One is a **basic deployment** of services that are exposed to the
internet and the other is a more secure environment that utilizes
private endpoints and VNet integrations. It also includes items like
Azure Firewall and other security-related configurations.

The basic template is the cheaper way to go and should work without any
configuration. The **secure template** will have much higher costs and
will require special configuration and changes to get the samples to
work properly.

#### How to deploy a local ARM template

Below are two methods of deploying an ARM template:

**Azure Portal**

-   Login into the Azure Portal and choose a valid Subscription.
-   Search for 'Deploy a custom template'.

![This image shows how to enter the Deploy a custom template wizard in
the Azure portal.]

-   Select 'Build your own template in the editor'.

![This image shows the Build your own template in the editor button.]

-   Load the ARM template file from your local drive.

![This image shows how to load the ARM template from the local drive.]

-   Navigate to the **template.json** file.
-   Save the template.

![This image shows how to save the ARM template in the editor.]

-   Enter the template parameters.
-   Select the **Review + create** button.
-   Check for validation errors. For example, you may have exceeded your
    quota for that subscription and region.

Another option for deploying infrastructure using a template is to use
Azure CLI or PowerShell. Here is a tutorial guide:

[Tutorial: Deploy a local ARM template]

#### Step 1 - Build the development environment - deploy one of the templates below

This is an optional step if you have your development environment
already set up. You will need to install the basic Azure development
packages.

-   [Basic Template]
-   [Secure Template]

#### Step 2 - Explore the development environment

Once the template has been deployed, several resources will be deployed
to support the developer journey. Not all of these will be used but are
provided in case other paths would like to be explored.

As part of the deployment, a **pgsqldevSUFFIX-paw1** virtual machine has
been deployed that will be used to perform all the activities. Login to
this virtual machine by doing the following:

-   Open Azure Portal
-   Browse to your resource group
-   Select the **pgsqldevSUFFIX-paw1** virtual machine
-   Select **Connect-\>RDP**
-   Select **Download RDP file**
-   Open the downloaded file, select **Connect**
-   For the username, type **wsuser**
-   For the password, type **Solliance123**

Once in the virtual machine, notice that all the necessary development
tools have already been installed. Additionally, the supporting GitHub
repository has been downloaded that includes all the artifacts needed to
start the developer journey. These files can be found on the
**pgsqldevSUFFIX-paw1** machine in the
`C:\labfiles\microsoft-postgresql-developer-guide` folder.

#### Step 3 - Start your journey

To reiterate, it is recommended to follow the developer journey from
start to finish in the following order:

##### Deployment option tutorial lab links

Click the links to complete each journey before going to the next.

1.  [Classic deployment][47]
2.  [Azure VM Deployment][48]
3.  [Simple App Service Deployment with Azure Database for PostgreSQL
    Flexible Server][33]
4.  [Continuous Integration / Continuous Delivery]
5.  [Containerizing layers with Docker][49]
6.  [Azure Container Instances (ACI)][50]
7.  [App Service Containers][51]
8.  [Azure Kubernetes Service (AKS)][52]
9.  [AKS with PostgreSQL Flexible Server][53]

##### Compute and orchestration tutorial lab links

Additionally, some applications are more than just a web application
with a database backend. Microsoft Azure provides several compute
engines with varying degrees of features and administrative abilities.

It is recommended that each of the above scenarios is executed in the
order shown so that a full picture of the steps involved in the
development evolution is understood. This will also ensure the necessary
pre-requisite Azure services and resources are available for the reader
to progress to the more complex deployment examples.

-   [Azure Functions]
    -   [Dotnet][34]
    -   [Python][35]
    -   [AKS]
    -   [Secured with MSI]
-   [Logic Apps][36]
-   [Azure Data Factory]
-   [Azure Synapse Analytics]
-   [Azure Batch]

### Sample Application evolution

The Sample Application is written as a two-tier application. This
architecture is great for a proof of concept or an application that has
limited performance needs. Scaling this type of application is difficult
and costly. Developers should consider separating their application's
business logic and data concerns into a [microservice] layer. For more
information on design patterns, review: [Design patterns for
microservices].

After reviewing the need for microservice architecture and the typical
design patterns, you can see how the Sample Application architecture
changed when it utilizes a Java REST microservice architecture.

![Read more icon] [Deploying a Laravel app backed by a Java REST API to
AKS][54].

## Application continuous integration and deployment

Manually deploying an application is not efficient and changes to the
environment need to be tested. Microsoft recommends automating build and
deployment processes to minimize application errors and the time to
release new features. This practice is often termed CI/CD. Below are the
common terms and definitions:

-   **Continuous Integration (CI):** CI tools automatically build, test,
    and merge code that developers push to version control systems. CI
    pipelines run code analysis tools to enforce style guidelines, unit
    tests, integration tests, and more. By constantly merging
    developers' contributions to a shared branch, CI tools improve
    developer efficiency.

-   **Continuous Delivery (CD):** Continuous delivery tools package
    applications in a format that operations teams can deploy to
    production. This typically involves pushing a container image to a
    container registry.

-   **Continuous Deployment (CD):** Continuous deployment automates the
    production deployment process; it does not require an operations
    team to intervene. Continuous deployment processes extend continuous
    delivery.

Implementing build and deployment automation means that development
teams can rapidly serve small features and fixes in production, rather
than waiting for one large, error-prone manual deployment.

### CI/CD tools

Below are some common CI/CD tool options.

#### Jenkins

There are a plethora of CI/CD tools available for local Git
repositories, such as Jenkins. Jenkins is an open-source project that
supports over 1,500 extensions and offers advanced features, such as
parallel test execution.

#### Local Git

Azure App Service supports automated deployments from local Git
repositories: developers simply need to push their code to an App
Service remote repository. Consult the [Running the sample
application][32] for a step-by-step App Service deployment from a local
Git repository.

#### App Service Deployment Slots

App Service instances in the Standard tier or higher support *deployment
slots*, which are separate instances of an app accessible on different
hostnames. Developers can validate app updates in a staging slot before
swapping the updates into the production slot. After swapping an app
from a staging slot to the production slot, the staging slot holds the
old production app, allowing teams to quickly roll back unsuccessful
changes. Swapping a slot has no downtime.

#### App Service Deployment Center

The Deployment Center provides a summary of the deployment methods for
an App Service instance. It also allows developers to quickly create
CI/CD pipelines for code stored in version control systems. App Service
executes pipelines on multiple targets, including GitHub Actions, Azure
Pipelines, and built-in Kudu.

#### GitHub Actions

GitHub Actions runs automated pipelines after an event occurs, such as
when a developer pushes to a repository branch or opens a PR. As GitHub
Actions integrates with GitHub repositories, pipelines can respond to
other repository events, such as when a new issue is opened.

A GitHub repository can have multiple *workflows* (pipelines) written in
[YAML.] At their most basic level, workflows consist of *actions* that
perform some basic task, such as initializing a build tool. Teams can
run GitHub Actions on GitHub runners or self-hosted runners for greater
flexibility.

#### Azure DevOps

Azure DevOps includes multiple tools to improve team collaboration and
automate building, testing, and deploying apps.

-   [Azure Boards:] Azure Boards helps teams plan and track work items.
    It supports multiple [processes.]
-   [Azure Pipelines:] Azure Pipelines is Microsoft's CI/CD pipeline
    platform. It supports deployment to PaaS services, virtual machines,
    and container registries in Azure, other cloud platforms, and
    on-premises. Azure Pipelines integrates with common version control
    systems, like GitHub, GitLab, and Azure Repos.
-   [Azure Test Plans:] Azure Test Plans allows development teams to
    create manual tests, for feedback from developers and stakeholders,
    and automated tests, which are necessary for any CI/CD pipeline.
-   [Azure Repos:] Azure Repos provides Microsoft-hosted public and
    private Git repositories.
-   [Azure Artifacts:] Azure Artifacts allows organizations to share
    packages, such as NuGet and npm packages, internally and publicly.
    Azure Artifacts integrates with Azure Pipelines.

Organizations can quickly start exploring Azure DevOps by creating a
free organization. Azure DevOps' suite of project management, CI/CD, and
testing tools empowers organizations to deploy more frequently, more
quickly, and with fewer failures.

### Infrastructure as Code (IaC)

Infrastructure as Code is a declarative approach to infrastructure
management. Imperative approaches, like Azure PowerShell, are also
supported, though declarative techniques are preferred for their
flexibility. IaC integrates well with CI/CD pipelines, as it ensures
that all application environments are consistent: IaC artifacts, such as
ARM templates and Bicep files, are stored in version control systems.
When development teams make environment changes, they edit IaC
environment definitions, and pipelines automatically alter the cloud
environment to fit the new requirements, irrespective of the existing
state of the cloud environment (*idempotence*).

Both [Azure Pipelines] and [GitHub Actions] support automated ARM
template deployments. Moreover, through the [Azure Service Operator],
development teams can provision Azure resources from Kubernetes,
integrating infrastructure management into existing Kubernetes release
pipelines. [Here] is a Microsoft sample provisioning Flexible Server
from Kubernetes.

## 04 / Summary

This module was designed to bring all the elements of the modernization
and cloud adoption journey together via a progressive set of examples
and learning paths. After completing all of the samples in this module,
a developer will have an understanding of where an application sits in
the modernization process and how to take it to the next level via
containers and container hosting environments.

Although this guide did not go into detail about how to host
applications across multiple cloud providers, this would be the next
logical step in the evolution of PostgreSQL applications and databases.
Several Microsoft partners and vendors (such as Hashicorp), provide
tools and services that help facilitate this final step.

As the world of microservices continues to change and evolve through
more innovative technologies (such as blockchain, other patterns and
steps may emerge in the future that will change the evolutionary course
of your architecture(s).

By using containers, developers can be assured the code will run
consistently for specific target environments.However, when multiple
containers are involved or are moved from one environment to another
(such as AKS to Azure Service Fabric or some other container cloud
provider), resources may not run well or at all. The management plane
may not be configured properly to support the containers. Following the
approaches defined in this section will help developers understand the
tools available and what they should be looking for when designing
microservices.

### Checklist

-   Understand the basic Azure fundamental services.
-   Understand the phases in the developer evolution journey.
-   Be able to evaluate where your application architecture fits in the
    journey.
-   Be cognizant of the changes that are needed for applications to move
    to the next state.
-   Utilize modern development and deployment methodologies.

## Vectors

Dimension: The dimension of a vector is the number of elements that it
contains. In the example above, vector1 and vector2 are both
two-dimensional since they each have two elements. You can only
visualize vectors with three dimensions or less, but generally, vectors
can have any number of dimensions. In fact, as you'll see later, vectors
that encode words and text tend to have hundreds or thousands of
dimensions.

Magnitude: The magnitude of a vector is a non-negative number that
represents the vector's size or length. You can also refer to the
magnitude of a vector as the norm, and you can denote it with \|\|v\|\|
or \|v\|. There are many different definitions of magnitude or norm, but
the most common is the Euclidean norm or 2-norm. You'll learn how to
compute this later.

Unit vector: A unit vector is a vector with a magnitude of one. In the
example above, vector1 and vector2 are unit vectors.

Direction: The direction of a vector specifies the line along which the
vector points. You can represent direction using angles, unit vectors,
or coordinates in different coordinate systems.

Dot product (scalar product): The dot product of two vectors, u and v,
is a number given by u ⋅ v = \|\|u\|\| \|\|v\|\| cos(θ), where θ is the
angle between the two vectors. Another way to compute the dot product is
to do an element-wise multiplication of u and v and sum the results. The
dot product is one of the most important and widely used vector
operations because it measures the similarity between two vectors.
You'll see more of this later on.

Orthogonal vectors: Vectors are orthogonal if their dot product is zero,
meaning that they're at a 90 degree angle to each other. You can think
of orthogonal vectors as being completely unrelated to each other.

Dense vector: A vector is considered dense if most of its elements are
non-zero. Later on, you'll see that words and text are most usefully
represented with dense vectors because each dimension encodes meaningful
information.

## Vector Similarity

Euclidean distance -- The straight-line distance between points. L1
(Manhattan) distance -- The sum of the differences of all of the vector
components. L1 distance measures how many orthogonal city blocks you
need to traverse from point A to point B. L-infinity (chessboard)
distance -- The number of moves a King would make on an n-dimensional
chessboard. It's different than Euclidean distance on the diagonals---a
diagonal step on a 2-dimensional chessboard is 1.41 Euclidean units
away, but 2 L-infinity units away. Inner product -- The product of the
magnitudes of two vectors and the cosine of the angle between them.
Usually used for natural language processing (NLP) vector similarity.
Cosine similarity -- The cosine of the angle between two vectors in a
vector space. Hamming distance -- For binary-coded vectors, the number
of bits that differ between the two vectors.

## Embeddings

### Text

### Voice

### Image

# References - DELETE

https://realpython.com/chromadb-vector-database/

## Standard Patterns

### RAG

### CoT

### ReAct

### Prompt Engineering

## Large Languange Models (LLMs)

## Small Language Models (SLMs)

## Responsible AI

TODO \## Prompt Engineering

TODO

### What is a prompt

### What is prompt engineering

### Anatomy of a prompt

### Zero-shot

### Few-shot

# Generative AI

# Chat Applications

# Image Generation

# Low Code Applciations

# External Applications with function calling

# Azure Database for PostgreSQL AI

## pgvector

TODO

## Azure extension

TODO

## embedding performance

TODO

## Other vector databases

TODO \# 05 / Monitoring

Once the application and database are deployed, the next phase is to
manage the new cloud-based data workload and supporting resources.
Microsoft proactively performs the necessary monitoring and actions to
ensure the databases are highly available and performed at the expecting
level.

## Overview

Proper monitoring management helps with the following:

-   Understanding the resource utilization
-   Workload connection metric analysis
-   Failure analysis and remediation
-   Environment performance analysis and scaling adjustments
-   Historical performance review

Azure can to monitor all of these types of operational activities using
tools such as [Azure Monitor], [Log Analytics], and [Azure Sentinel]. In
addition to the Azure-based tools, external security information and
event management (SIEM) systems can be configured to consume these logs
as well.

Alerts should be created to warn administrators of outages, operational
performance problems, or suspicious activities. If a particular alert
event has a well-defined remediation path, alerts can automatically fire
[Azure runbooks] to address and resolve the event.

This chapter will be focused on these monitoring concepts:

-   Azure Monitor overview and strategy

-   Application monitoring

-   Database monitoring

-   Alerts and strategies

![This image explains the Azure Monitor workflow.]

### Azure Monitor overview

Azure Monitor is the Azure native platform service that provides a
centralized area for monitoring your Azure resources. It monitors all
layers of the Azure stack, starting with tenant services, such as
Microsoft Entra, subscription-level events, and Azure Service Health.

At the lower levels, it monitors infrastructure resources, such as VMs,
storage, and network resources. Administrators and developers employ
Azure Monitor to consolidate metrics about the performance and
reliability of their various cloud layers, including Azure Database for
PostgreSQL Flexible Server instances. Management tools, such as
Microsoft Defender for Cloud and Azure Automation, also push log data to
Azure Monitor. The service aggregates and stores this telemetry in a log
data store optimized for cost and performance.

![This image clarifies how Azure Monitor integrates with various Azure
data sources and management tools.]

For more information on what can be monitored, read: [What is monitored
by Azure Monitor?]

## Define your monitoring strategy

Administrators should [plan their monitoring strategy] and resource
configuration for the best results. Some data collection and features
are free, while others have associated costs. Focus on maximizing your
applications' performance and reliability. Identify the data and logs
that indicate the highest potential signs of failure to optimize costs.
See [Azure Monitor Pricing] for more information on planning monitoring
costs.

## Azure Monitor options

![This image shows the Azure Monitor Metrics icon.]

Azure Monitor Metrics is a feature of Azure Monitor that collects
numeric data from monitored resources into a time-series database.
Metrics in Azure Monitor are lightweight and capable of supporting near
real-time scenarios, so they are helpful for alerting and detecting
issues. You can analyze them interactively by using Metrics Explorer, be
proactively notified with an alert when a value crosses a threshold, or
visualize them in a workbook or dashboard.

[Azure Monitor Metrics overview]

![This image shows the Activity Logs icon.]

The Activity log is a [platform log] in Azure that provides insight into
subscription-level events. The Activity log includes information like
when a resource is modified or when a virtual machine was started.

Event examples:

-   Start or stop a VM.
-   Start or stop an App Service.

[Azure Activity log]

![This image shows the Azure Log Analytics icon.]

Log Analytics is a tool in the Azure portal used to edit and run log
queries with data in Azure Monitor Logs. You can use Log Analytics
queries to retrieve records that match particular criteria. Use the
query results to identify trends, analyze patterns, and provide
insights. Users can create charts to visualize important data in the
portal.

Query examples:

-   HTTP URL requests in the last hour.
-   HTTP status codes in the two days.
-   Call duration and result code.

[Overview of Log Analytics in Azure Monitor]

[Log Analytics tutorial]

![This image shows the Azure Monitor Workbooks icon.]

Workbooks provide a flexible canvas for data analysis and the creation
of rich visual reports within the Azure portal. They allow you to tap
into multiple Azure data sources and combine them into unified
interactive experiences. Visualize data in one interactive report.

[Azure Monitor Workbooks]

![This image shows the Azure Resource Health icon.]

Azure Resource Health helps you diagnose and get support for service
problems that affect your Azure resources. It reports on the current and
past health of your resources. Resource Health can help you diagnose the
root event causes.

Multiple Azure infrastructure components can trigger Platform events.
The events include both scheduled actions (planned maintenance) and
unexpected incidents (unplanned host reboot or degraded hosted hardware
that is predicted to fail after a specified time window).

Resource Health provides additional details about the event and the
recovery process. **It also enables you to contact Microsoft Support,
even if you don't have an active support agreement.**

Resource issue examples:

-   Unplanned events, for example an unexpected host reboot
-   Planned events, like scheduled host OS updates
-   Events triggered by user actions, for example a user rebooting a
    virtual machine

[Resource Health overview]

## Application monitoring

It is important to monitor the uptime, performance, and understand usage
patterns once an application has been deployed. [Application Insights]
is a feature that provides extensible application performance management
(APM) and monitoring for web-based applications.

Application insights monitoring is very flexible in that it supports a
wide variety of platforms, including .NET, Node.js, Java, and Python as
well as apps hosted on-premises or on any public cloud. Just about any
application can take advantage of this powerful monitoring tool.

Using Application Insights:

-   Install a small instrumentation package (SDK) in your app
-   Or enable Application Insights by using the Application Insights
    agent in Azure.

![][55]

The instrumentation code directs telemetry data to an Application
Insights resource by using a unique instrumentation key and URL.

Example steps to configure WordPress monitoring:

-   Install Application Insights plugin from WordPress Plugins.

-   Create Application Insights.

-   Copy the Instrumentation Key from created Application Insights.

-   Then go to **Settings** and Application Insights inside WordPress,
    and add the key there.

-   Access the website and look for details.

> ![Tip] **Tip**: [Connection Strings] are recommended over
> instrumentation keys.

### Azure Metrics Explorer

[Azure Metrics Explorer] makes it easy to capture performance counters
for resources quickly without adding instrumentation to your application
code. As the following diagram shows, you simply select the resource and
metric and then apply your filters:

![The Azure Metrics workflow is displayed.]

For example, to capture performance counters for a PHP App Service
resource, simply follow these steps.

-   Determine your scope. Navigate to the App Service in the Azure
    Portal.

-   In the **Monitoring** section, select the **Metrics** item.

-   Select your time range.

    ![The picture shows the time frame options for metric filtering.]

-   Select your **Metric** from the dropdown.

    ![The picture shows the Metric category filter options.]

-   Select your chart choice for the chosen metric.

    ![The Azure Metric request count example is displayed.]

-   Create a rule by selecting **New alert rule**.

    ![The Azure Metrics new alert rule is displayed.]

### Application Insights cost management

Application Insights comes with a free allowance that tends to be
relatively large enough to cover the development and publishing of an
app for a small number of users. As a best practice, setting a limit can
prevent more data than necessary from being processed and keep costs
low.

Larger volumes of telemetry are charged by the gigabyte and should be
monitored closely to ensure your finance department does not get a
larger than expected Azure invoice. [Manage usage and costs for
Application Insights]

## Monitoring database operations

Azure can be configured to monitor the Flexible server database as well.

> ![Watch icon] **Watch:** [Monitoring \[7 of 16\] \| Azure Database for
> PostgreSQL Flexible Server - Beginners Series][56]

### Azure Database for PostgreSQL Flexible Server overview

The Azure Portal resource overview excellent overview of the PostgreSQL
metrics. This high-level dashboard provides insight into the typical
database monitoring counters, like CPU, IO, Query Count, etc.

![This image shows PostgreSQL metrics in the Azure portal.]

### Metrics

For more specific metrics, navigate to the **Monitoring** section.
Select **Metrics**. More custom granular metrics can be configured and
displayed.

![This image shows Metrics on the Monitoring tab in the Azure portal.]

![Read more icon] [Monitor Azure Database for PostgreSQL Flexible
Servers with built-in metrics]

### Diagnostic settings

Diagnostic settings allow you to route platform logs and metrics
continuously to other storage and ingestion endpoints.

![This image shows how to graph metrics in the Azure portal Monitoring
tab.]

![Read more icon] [Set up diagnostics]

### Log Analytics

Once you configure your Diagnostic Settings, you can navigate to the Log
Analytics workspace. You can perform specific filtered queries on
interesting categories. Are you looking for slow queries?

![This image shows a KQL query.]

Now, you can review the results from your query. There is a wealth of
information about the category.

![This image shows KQL query results.]

PostgreSQL audit log information is also available.

![This image shows a KQL query that polls the PostgreSQL audit log.]

![Read more icon] [View query insights by using Log Analytics]

### Workbooks

As mentioned previously, Workbooks is a simple canvas to visualize data
from different sources, like Log Analytics workspace. It is possible to
view performance and storage metrics all in a single pane.

![This image shows Azure Monitor Workbooks visualizations.]

CPU, IOPS, and other common monitoring metrics are available. You can
also access Query Performance Insight.

![This image shows QPI in the Azure portal.]

In addition to the fundamental server monitoring aspects, Azure provides
tools to monitor application query performance. Correcting or improving
queries can lead to significant increases in the query throughput. Use
the [Query Performance Insight tool] to:

-   Analyze the longest-running queries and determine if it is possible
    to cache those items.
-   If they are deterministic within a set period, modify the queries to
    increase their performance.

In addition to the query performance insight tool, `Wait statistics`
provides a view of the wait events that occur during the execution of a
specific query.

> ![Warning] **Warning**: Wait statistics are meant for troubleshooting
> query performance issues. It is recommended to be turned on only for
> troubleshooting purposes.

Finally, the `slow_query_log` can be set to show slow queries in the
PostgreSQL log files (default is OFF). The `long_query_time` server
parameter can be used to log long-running queries (default long query
time is 10 sec).

![Read more icon] [Monitor Azure Database for PostgreSQL Flexible Server
by using Azure Monitor workbooks]

### Resource health

It is essential to know if the PostgreSQL service has experienced a
downtime and the related details. Resource health can assist with this
information. If you need additional assistance, a helpful contact
support link available.

![This image shows Azure Resource Health.]

### Activity logs

This area captures the administrative events captured over a period of
time.

![This image shows administrative events in the Azure Activity Log.]

The event details can be viewed as well. These details can be extremely
helpful when troubleshooting.

![This image shows the details of an Activity Log event.]

### Creating alerts

You can create alerts in a couple of ways. Navigate to the **Alerts**
menu item in the portal and create it manually.

![This image shows how to create resource alerts in the Azure portal.]

You can also create alerts from the Metrics section.

![This image shows how to create resource alerts from the Metrics
section in the Azure portal.]

Once the alert has been configured, you can create an action group to
send a notification to the operations team.

![Read more icon] [Set up alerts on metrics for Azure Database for
PostgreSQL Flexible Server-Flexible Server]

### Server Logs

Server logs from Azure Database for PostgreSQL Flexible Server can also
be extracted through the Azure platform *resource logs*, which track
data plane events. Azure can route these logs to Log Analytics
workspaces for manipulation and visualization through KQL.

In addition to Log Analytics, the data can also be routed to Event Hubs
for third-party integrations and Azure storage for long-term backup.

### PostgreSQL audit logs

PostgreSQL has a robust built-in audit log feature. This [audit log
feature is disabled] in Azure Database for PostgreSQL Flexible Server by
default. Server level logging can be enabled by changing the
`audit_log_enabled` server parameter. Once enabled, logs can be accessed
through [Azure Monitor] and [Log Analytics] by turning on [diagnostic
logging][Set up diagnostics].

In addition to metrics, it is also possible to enable PostgreSQL logs to
be ingested into Azure Monitor. While metrics are better suited for
real-time decision-making, logs are also useful for deriving insights.
One source of logs generated by Flexible Server is PostgreSQL *audit
logs*, which indicate connections, DDL and DML operations, and more.
Many businesses utilize audit logs to meet compliance requirements, but
they can impact performance.

> ![Warning] **Warning**: Excessive audit logging can degrade server
> performance, so be mindful of the events and users configured for
> logging.

### Enabling audit logs

Audit logging is controlled by the `audit_log_enabled` server parameter
in Flexible Server. Azure provides granularity over the events logged
(`audit_log_events`). User fields include the database users subject to
logging (`audit_log_include_users`), and an explicit list of the
database users exempt from logging (`audit_log_exclude_users`).

> For more details about the logging server parameters, including the
> type of events that can be logged, consult [the
> documentation.][audit log feature is disabled]

## Alerting guidelines

Once monitoring data is configured to flow into Azure Monitor or Log
Analytics, the next step would to be to create alerts when issue data is
generated. The operations team will want to know as quickly as possible
when a pending outage or system issue is developing. Understanding the
symptoms is critical. *"You can't fix what you don't know is broken."*

Alert creation and remediation will take fine-tuning to ensure that
alert fatigue does not set in. Focus less on integrating monitoring with
IT Service Management (ITSM) systems for Incident Management, and seize
on opportunities to let cloud automation replace more expensive service
management processes, thereby eliminating time spent on easily
automatically resolvable alerts and incidents.

**Consider the following principles for determining whether a symptom is
an appropriate candidate for alerting:**

-   Does it matter? Is the issue symptomatic of a real problem or issue
    influencing the overall health of the application? For example, does
    it matter whether the CPU utilization is high on the resource? Or
    that a particular SQL query running on a SQL database instance on
    that resource is consuming high CPU utilization over a sustained
    period? If the CPU utilization condition is a real issue, alerts
    should be fired when it occurs. Although an alert will fire, the
    team will still need to determine what is causing the alert
    condition in the first place. Alerting and notifying on the SQL
    query process utilization issue is both relevant and actionable.

-   Is it urgent? Is the issue real, and does it need urgent attention?
    If so, the responsible team should be immediately notified.

-   Are your customers affected? Are users of the service or application
    affected as a result of the issue?

-   Are other dependent systems affected? Are there alerts from
    dependencies that are interrelated and that can possibly be
    correlated to avoid notifying different teams all working on the
    same problem?

Test and validate the assumptions in a nonproduction environment, and
then deploy them into production. Monitoring configurations are derived
from known failure modes, test results of simulated failures, and
experiences from different members of the team.

Consider automating the remediation steps in Azure.

![Read more icon] [Successful alerting strategy]

### Azure alerting concepts

#### Metric alerts

Metric alerts assess metric time-series according to defined conditions
and take action. They consist of the following parts:

-   **Alert rules** define the alert conditions. They require the
    following information:

    -   The metric to monitor (e.g. `aborted_connections`)
    -   An aggregation for the selected metric (e.g. `total`)
    -   A threshold for the aggregated value (e.g. `10 connections`)
    -   A time window for the aggregation (e.g. `30 minutes`)
    -   A polling frequency to determine if the previous conditions are
        met (e.g. `5 minutes`)

-   **Action groups** define notification actions, such as emailing or
    texting an administrator, and other actions to take, like calling a
    webhook or [Azure Automation Runbooks]

-   **Alert processing rules** is a *preview* feature that filters
    alerts as they are generated to modify the actions taken in response
    to that alert (i.e. by disabling action groups)

Refer to [Microsoft's
tutorial][Set up alerts on metrics for Azure Database for PostgreSQL Flexible Server-Flexible Server]
explaining the configuration of a metric alert for a Flexible Server
instance.

### Best Practices with Alerting Metrics

Here are some scenarios of how aggregating metrics over time generates
insights. Read the [Microsoft blog] for more examples.

-   If there were **10** or more failed connections (total of
    `aborted_connections` in Flexible Server) in the last **30**
    minutes, then send an email alert
    -   This may indicate incorrect credentials or an SSL issue in the
        application
-   If IOPS is **90%** or more of capacity (average of
    `io_consumption_percent` in Flexible Server) for at least **1**
    hour, then call a webhook
    -   Excessive IO usage affects the performance of transactional
        workloads, so [scale storage to increase IOPS capacity or
        provision additional IOPS]
    -   See the linked CLI examples for automatic scaling based on
        metrics

### Webhooks

Webhook action groups send POST requests to configured webhook
endpoints. Action groups can use the [common alert schema] for webhook
calls, or custom JSON payloads. This feature allows Azure Monitor to
[integrate with incident management systems like PagerDuty], [call Logic
Apps], and [execute Azure Automation runbooks].

### Metrics resources

#### Azure CLI

Azure CLI provides the `az monitor` series of commands to manipulate
action groups (`az monitor action-group`), alert rules and metrics
(`az monitor metrics`), and more.

-   [Azure CLI reference commands for Azure Monitor]
-   [Monitor and scale an Azure Database for PostgreSQL Flexible Server
    using Azure CLI]

#### Azure Portal

While the Azure Portal does not provide automation capabilities like the
CLI or the REST API, it does support configurable dashboards and
provides a strong introduction to monitoring metrics in PostgreSQL.

-   [Set up alerts on metrics for Azure Database for PostgreSQL Flexible
    Server-Flexible Server]
-   [Tutorial: Analyze metrics for an Azure resource]

#### Azure Monitor REST API

The REST API allows applications to access metric values for integration
with other monitoring systems like external SIEM systems. It also allows
applications to manipulate alert rules externally.

To interact with the REST API, applications first need to obtain an
authentication token from Microsoft Entra and then use that token in API
requests.

-   [REST API Walkthrough]
-   [Azure Monitor REST API Reference]

### Azure Service Health

[Azure Service Health] notifies administrators about Azure service
incidents and planned maintenance so actions can be taken to mitigate
downtime. Configure customizable cloud alerts and use personalized
dashboards to analyze health issues, monitor the impact on cloud
resources, get guidance and support, and share details and updates.

## 05 / Summary

Monitoring the performance of your environment is a vital final step
after deployment. This section described how Azure Monitor and Log
Analytics are essential tools to assist in monitoring your applications.

Both the control and data plane should be considered in your monitoring
activities. Platform administrators and database administrators should
be notified of issues before or when they start to happen.

With cloud-based systems, being proactive is a better strategy then
being reactive.

### Checklist

-   Define a monitoring strategy to provide useful insights without
    deteriorating application performance and incurring excessive costs.
    For example, storing slow query logs on Flexible Server instances
    without proper management consumes storage space, affects database
    performance.
-   Configure your Azure resources to emit strategic logs (like
    PostgreSQL Flexible Server slow query logs) and route them to Azure
    destinations, like Log Analytics workspaces.
-   Develop KQL queries to record database performance, query
    performance, and DDL/DML activity.
-   If necessary, configure alert rules for metrics and logs. Azure can
    automatically respond to fired alerts through Azure Automation
    runbooks.
-   Visualize data in Workbooks.

## Recommended content

-   [Best practices for alerting on metrics with Azure Database for
    PostgreSQL Flexible Server monitoring][Microsoft blog]

-   [Configure audit logs (Azure portal)]

-   [Azure Monitor best practices]

-   [Cloud monitoring guide: Collect the right data]

-   [Configure and access audit logs in the Azure CLI]

-   [Write your first query with Kusto Query Language (Microsoft Learn)]

-   [Azure Monitor Logs Overview]

-   [Application Monitoring for Azure App Service Overview]

-   [Configure and access audit logs for Azure Database for PostgreSQL
    Flexible Server in the Azure Portal]

-   [Kusto Query Language (KQL)]

-   [SQL Kusto cheat sheet]

-   [Get started with log queries in Azure Monitor]

-   [Monitor Azure Database for PostgreSQL Flexible Server using Percona
    Monitoring and Management (PMM)]

# 06 / Networking and Security

The Azure Database for PostgreSQL Flexible Server network configuration
can adversely affect security, application performance (latency), and
compliance. This section explains the fundamentals of Azure Database for
PostgreSQL Flexible Server networking concepts.

Azure Database for PostgreSQL Flexible Server provides several
mechanisms to secure the networking layers by limiting access to only
authorized users, applications, and devices.

> ![Watch icon] **Watch:** [Networking and Security \[6 of 16\] \| Azure
> Database for PostgreSQL Flexible Server - Beginners Series][57]

## Public vs. Private Access

As with any cloud-based resources, it can be exposed to the Internet or
be locked down to only be accessible by Azure connections resources.
However, it does not have to be just Azure-based resources. VPNs and
Express route circuits can be used to provide access to Azure resources
from on-premises environments. The following section describes how to
configure Azure Database for PostgreSQL Flexible Server instances for
network connectivity.

### Public Access

By default, Azure Database for PostgreSQL Flexible Server allows access
to internet-based clients, including other Azure services. If this is an
undesirable state, firewall access control lists (ACLs) can limit access
to hosts that fall within the allowed trusted IP address ranges.

The first line of defense for protecting a PostgreSQL instance access is
to implement [firewall rules]. IP addresses can be limited to only valid
locations when accessing the instance via internal or external IPs. If a
PostgreSQL instance's purpose is to serve internal applications, then
[restrict public access].

![This image shows how PostgreSQL Flexible Server instances evaluate
firewall rules.]

Firewall rules are set at the server level, meaning that they govern
network access to all databases on the server instance. While it is best
practice to create rules that allow specific IP addresses or ranges to
access the instance, developers can also enable network access from all
Azure resources. This feature is useful for Azure services without fixed
public IP addresses, such as [Azure Functions] that use public networks
to access the server and databases.

> ![Note icon][Note] **Note:** Restricting access to Azure public IP
> addresses still provides network access to the instance to public IPs
> owned by other Azure customers.

-   Flexible Server
    -   [Manage firewall rules for Azure Database for PostgreSQL
        Flexible Server - Flexible Server using the Azure portal]
    -   [Manage firewall rules for Azure Database for PostgreSQL
        Flexible Server - Flexible Server using Azure CLI]
    -   [ARM Reference for Firewall Rules]
-   Single Server
    -   [Create and manage Azure Database for PostgreSQL Flexible Server
        firewall rules by using the Azure portal]
    -   [Create and manage Azure Database for PostgreSQL Flexible Server
        firewall rules by using the Azure CLI]
    -   [ARM Reference for Firewall Rules][58]

### Private Access

As mentioned, Azure Database for PostgreSQL Flexible Server supports
public connectivity by default. However, most organizations will utilize
private connectivity to limit access to Azure virtual networks and
resources.

> **Note:** There are many other [basic Azure Networking considerations]
> that must be taken into account that are not the focus of this guide.

## Virtual Network Hierarchy

An Azure virtual network is similar to a on-premises network. It
provides network isolation for workloads. Each virtual network has a
private IP allocation block. Choosing an allocation block is an
important consideration, especially if the environment requires multiple
virtual networks to be joined.

> ![Warning][59] **Warning:** The allocation blocks of the virtual
> networks cannot overlap. It is best practice to choose allocation
> blocks from [RFC 1918.]

> **Note**: When deploying a resource such as a VM into a virtual
> network, the virtual network must be located in the same region and
> Azure subscription as the Azure resource. Review the [Introduction to
> Azure] document for more information about regions and subscriptions.

Each virtual network is further segmented into subnets. Subnets improve
virtual network organization and security, just as they do on-premises.

When moving an application to Azure along with the PostgreSQL workload,
there will likely multiple virtual networks set up in a hub and spoke
pattern that will require [Virtual Network Peering] to be configured.
Virtual networks are joined through *peering*. The peered virtual
networks can reside in the same or different Azure regions.

Lastly, it is possible to access resources in a virtual network from
on-premises. Some organizations opt to use VPN connections through
[Azure VPN Gateway], which sends encrypted traffic over the Internet.
Others opt for [Azure ExpressRoute], which establishes a private
connection to Azure through a service provider.

For more information on Virtual Networks, reference the following:

-   [Introduction to Azure Virtual Networks]
-   Creating virtual networks
    -   [Portal]
    -   [PowerShell]
    -   [CLI]
    -   [ARM Template]

### Flexible Server

Flexible Server supports deployment into a virtual network for secure
access. When enabling virtual network integration, the target virtual
network subnet must be *delegated*, meaning that it can only contain
Flexible Server instances. Because Flexible Server is deployed in a
subnet, it will receive a private IP address. To resolve the DNS names
of Azure Database for PostgreSQL Flexible Server instances, the virtual
networks are integrated with a private DNS zone to support domain name
resolution for the Flexible Server instances.

> ![Note icon][Note] **Note:** If the Flexible Server client, such as a
> VM, is located in a peered virtual network, then the private DNS zone
> created for the Flexible Server must also be integrated with the
> peered virtual network.

> ![Note icon][Note] **Note:** Private DNS zone names must end with
> PostgreSQL.database.azure.com. If you are connecting to the Azure
> Database for PostgreSQL Flexible Server - Flexible sever with SSL and
> are using an option to perform full verification
> (sslmode=VERIFY_IDENTITY) with certificate subject name, use
> `<servername>`{=html}.postgres.database.azure.com in your connection
> string.

![Read more icon] [Private DNS zone overview]

For more information on configuring Private Access for Flexible Server,
reference the following:

-   [Azure Portal][60]
-   [Azure CLI][61]

## Networking best practices for Flexible Server

-   If deploying an application in an Azure region that supports
    *Availability Zones*, deploy the application and the Flexible Server
    instance in the same zone to minimize latency.

> For a review of availability zones, consult the [Introduction to Azure
> Database for PostgreSQL Flexible Server][62] document.

-   Organize the components of the application into multiple virtual
    networks, such as in a [hub and spoke configuration.] Employ virtual
    network peering or VPN Gateways to join the application's virtual
    networks.

-   Configure data protection at rest and in motion (see the [Security
    and Compliance document]).

-   [General Azure Networking Best Practices]

    -   Determine IP addressing and subnetting.
    -   Determine DNS setup and whether forwarders are needed.
    -   Employ tools like network security groups to secure traffic
        within and between subnets.

## Security

Moving to cloud-based services does not mean the entire Internet will
have access to it at all times. Azure provides best-in-class security
that ensures data workloads are continually protected from bad actors
and rogue programs. Additionally, Azure provides several certifications
that ensure your resources are compliant with local and industry
regulations, an important factor for many organizations today.

Organizations must take proactive security measures to protect their
workloads in today's geopolitical environment. Azure simplifies many of
these complex tasks and requirements through the various security and
compliance resources provided out of the box. This section will focus on
many of these tools.

### Encryption

Azure Database for PostgreSQL Flexible Server offers various encryption
features, including encryption for data, backups, and temporary files
created during query execution.

Data stored in the Azure Database for PostgreSQL Flexible Server
instances are encrypted at rest by default. Any automated backups are
also encrypted to prevent potential leakage of data to unauthorized
parties. This encryption is typically performed with a key generated
when the Azure Database for PostgreSQL Flexible Server instance is
created.

In addition to be encrypted at rest, data can be encrypted during
transit using SSL/TLS. SSL/TLS is enabled by default. As previously
discussed, it may be necessary to [modify the applications] to support
this change and configure the appropriate TLS validation settings. It is
possible to allow insecure connections for legacy applications or
enforce a minimum TLS version for connections, **but this should be used
sparingly and in highly network-protected environments**. Flexible
Server's TLS enforcement status can be set through the
`require_secure_transport` PostgreSQL server parameter. Consult the
guides below.

-   [Flexible Server][63]

### Microsoft Sentinel

Many of the items discussed thus far operate in their sphere of
influence and are not designed to work directly with each other. Every
secure feature provided by Microsoft Azure and corresponding
applications, like Microsoft Entra, contains a piece of the security
puzzle.

Disparate components require a holistic solution to provide a complete
picture of the security posture and the automated event remediation
options.

[Microsoft Sentinel][Azure Sentinel] is the security tool that provides
the needed connectors to bring all your security log data into one place
and then provide a view into how an attack may have started.

Microsoft Sentinel works with Azure Log Analytics and other Microsoft
security services to provide a log storage, query, and alerting
solution. Through machine learning, artificial intelligence, and user
behavior analytics (UEBA), Microsoft Sentinel provides a higher
understanding of potential issues or incidents that may not have seen
with a disconnected environment.

### Microsoft Purview

Data privacy has evolved into a organizational priority over the past
few years. Determining where sensitive information lives across your
data estate is a requirement in today's privacy-centered society.

[Microsoft Purview] can scan your data estate, including your Azure
Database for PostgreSQL Flexible Server instances, to find personally
identifiable information or other sensitive information types. This data
can then be analyzed, classified and lineage defined across your
cloud-based resources.

### Security baselines

In addition to all the topics discussed above, the Azure Database for
PostgreSQL Flexible Server [security baseline] is a basic set of
potential tasks that can be implemented on your Azure Database for
PostgreSQL Flexible Server instances to further solidify your security
posture.

## 06 / Summary

Protecting the data and control plane is just another piece to the
puzzle of having a robust, secure and performant application
environment.

Deciding what risks the organization can accept will typically help
guide what security features discussed in this section should be enabled
and paid for.

If the data is vital, important and business critical, everything
possible should be done to ensure its protected and secure.

This section discussed many tools Microsoft Azure provided to give an
organization peace of mind that the cloud-based workload will be just as
secure as if running it on-premises.

## Security checklist

-   Utilize the most robust possible authentication mechanisms such as
    Microsoft Entra.
-   Enable Advanced Threat Protection and Microsoft Defender for Cloud.
-   Enable all auditing features.
-   Enable encryption at every layer that supports it.
-   Consider a Bring-Your-Own-Key (BYOK) strategy, where supported.
-   Implement firewall rules.
-   Utilize private endpoints for workloads that do not travel over the
    Internet.
-   Integrate Microsoft Sentinel for advanced SIEM and SOAR.
-   Utilize private endpoints and virtual network integration where
    possible.

# 07 / Testing

Testing is a crucial part of the application development lifecycle.
Architects, developers, and administrators should continually assess and
evaluate their applications for *availability* (minimal downtime) and
*resiliency* (recovery from failure). Microsoft recommends performing
tests regularly and highly suggests automating them to minimize any
errors in the process or setup. Tests can be run in the application
build or deployment process.

This chapter discusses the various types of tests you can run against
Azure Database for PostgreSQL Flexible Server application and database.
Running tests ensures the optimal performance of your application and
database deployments.

## Approaches

Let's discuss the types of approaches and tools.

### Functional testing

Functional testing ensures that an app functions as documented in the
user and business requirements. Testers do not know how software systems
function; they ensure systems perform the business functions specified
in the documentation. Functional tests validate things like data limits
(field lengths and validation) and that specific actions are taken in
response to various triggers. The tests usually involve some type of
application user interface. It is usually the most complete type of
testing for UI applications.

#### Function testing tools

[Selenium] automates functional tests for web apps. Developers can
create web application test scripts in several supported languages, like
Ruby, Java, Python, and C#. Once scripts are developed, the Selenium
WebDriver executes the scripts using browser-specific APIs. Teams can
operate parallel Selenium tests on different devices using [Selenium
Grid].

To get started with Selenium, developers can install the [Selenium IDE]
to generate testing scripts from browser interactions. The Selenium IDE
is not intended for production tests. Still, it can speed up the
development of your test script development tasks.

Teams can include [Selenium tests in Azure DevOps.]. The screenshot
below demonstrates a Selenium test running in a DevOps Pipeline.

![This image demonstrates screenshots from a Selenium test in Azure
DevOps.]

### Resiliency and version testing

Testers can only execute so many test cases within a time period. Users
tend to test application functionality not imagined by the development
or test teams. Allowing real users to test the application while
limiting deployment downtime and version risk can be difficult. One
strategy to test for resiliency is the `blue-green` method. The latest
version of an application operates in a second production environment.
Developers test the most recent version in the second production
environment by adding some production users to the new version. If the
new version functions adequately, the second environment begins handling
more production user requests. Developers can roll back the application
by serving requests from the older environment if an unexpected error
occurs.

![This image shows how to implement a Blue/Green test using Azure
Traffic Manager.]

> ![Tip] **Tip**: Newer versions of an application often require
> database updates. It is recommended to update the database to support
> the new and previous versions of the software before deploying
> application updates to the second environment.

Azure has the capability to support this type of testing via Deployment
Center, Azure Traffic Manager, and other tools.

The following links provide resources on Blue-green deployment options:

-   [Deployment Center example]
-   [Azure Traffic Manager example]
-   [Application Gateway example]

### Performance testing

#### Load testing

Load testing determines an application's performance as load increases.
Load testing tools typically simulate users or requests, and they help
companies meet their user and business SLAs. Proper load testing
requires knowledge of the load a production system normally experiences
and potential Azure service limits (e.g. [Event Hub throughput by
tier]).

#### Stress testing

Stress testing determines the maximum load a system can handle before
failure. A proper stress testing approach would be to perform stress
testing at different Azure service tiers and determine appropriate
thresholds when scaling within those tiers. This will give
administrators an idea of how to build alerts for monitoring if the
application starts to approach these known limits. Knowing your
acceptable low and high stress range levels is necessary to minimize
costs (by selecting the appropriate tier and scaling) and thereby
provide a positive user experience.

#### Performance testing tools

### Apache JMeter

[Apache JMeter] is an open source tool to test that systems function and
perform well under load. It can test web applications, REST APIs,
databases, and more. JMeter provides a GUI and a CLI, and it can export
test results in a variety of formats, including HTML and JSON.

The image below demonstrates one approach to operating JMeter at scale
using Azure Container Instances. The `jmeter-load-test` pipeline manages
the test infrastructure and provides the test definition to the **JMeter
Controller**.

![This image demonstrates how to perform a load test at scale using
CI/CD, JMeter, and ACI.]

It is also possible to run JMeter load tests using [Azure Load Testing
Preview.]

### K6

[Grafana K6] is a load testing tool hosted locally or in the cloud.
Developers script tests using ES6 JavaScript. Supporting over 20
integrations, including [Azure DevOps Pipelines], K6 is a popular choice
for many teams.

## Testing data capture tools

### Azure Monitor

Azure Monitor allows developers to collect, analyze, and act on
telemetry. *Application Insights*, a subset of Azure Monitor, tracks
application performance, usage patterns, and issues. It integrates with
common development tools, like Visual Studio. Similarly, *Container
insights* measures the performance of container workloads running on
Kubernetes clusters. These powerful tools are backed by Azure Log
Analytics workspaces and the Azure Monitor metrics store.

The image below demonstrates container logs from a containerized
deployment of the ContosoNoshNow sample app running in AKS. These logs
are analyzed in the cluster's Log Analytics workspace.

![This image demonstrates container logs in the AKS cluster's Log
Analytics workspace.]

The image below demonstrates the cluster's maximum CPU usage over a
half-hour period. It utilizes metrics provided by AKS, though more
granular metrics from Container insights can also be used.

![This image demonstrates the maximum CPU usage of the AKS cluster's
nodes, a feature provided by metrics from AKS.]

#### Resources

-   [Supported languages for Azure App Insights]
-   Comparison of *metrics* and *logs* in Azure Monitor
    -   [Azure Monitor Metrics overview]
    -   [Azure Monitor Logs overview]
-   [Monitoring Azure Kubernetes Service (AKS) with Azure Monitor]

### Grafana and Prometheus

Prometheus is a powerful tool for developers to capture metrics, store
them in a time-series database on disk, and analyze them through a
custom query language. However, due to the storage of metrics on disk,
Prometheus is not ideal for long-term retention.

Grafana is a visualization tool to create customizable dashboards from
time-series databases. These visualizations supplement the raw metrics
exposed by services such as Prometheus.

The image below demonstrates two charts in Grafana demonstrating the CPU
usage of a Laravel pod in the Contoso Nosh Now AKS deployment. The
`requests` and `limits` values were supplied in the Kubernetes
deployment file.

![This image demonstrates a dashboard in Grafana showing CPU usage for a
pod.]

### Recommended content

The following resources are helpful for exploring various approaches to
using the previously mentioned tools and concepts.

-   [Using Azure Kubernetes Service with Grafana and Prometheus]

-   [Prometheus Overview]

-   [What is Grafana OSS]

-   [Store Prometheus Metrics with Thanos, Azure Storage and Azure
    Kubernetes Service (AKS)]

-   [What are Azure Pipelines?]

-   [What is Azure Load Testing?]

## 07 / Summary

Testing your applications after they have been deployed to an existing
or a new environment is a vital step in the development cycle. It could
prevent unwanted downtime or lost of application functionality.

### Checklist

-   Perform functional testing on applications and databases.
-   Perform performance testing on applications and databases.
-   Utilize industry standard tools and benchmarks to ensure accurate
    and comparable results.
-   Integrate reporting tools such as Azure Monitor, Grafana or
    Prometheus into your testing suites.

# 08 / Performance and Optimization

After organizations migrate their PostgreSQL workloads to Azure, they
unlock turnkey performance monitoring solutions, scalability, and the
benefits of Azure's global footprint. Operation teams must establish
performance baselines before fine-tuning their PostgreSQL instances to
ensure that changes, especially those that require application downtime,
are worth doing. If you can, **simulate your workload in a test
environment** and make adjustments in test before implementing changes
in a production environment.

Before jumping into specific and time consuming performance
enhancements/investigation, there are some general tips that can improve
performance in your environment that this section will explore.

## General performance tips

The following are some basic tips for how to increase or ensure the
performance of your Azure Database for PostgreSQL Flexible Server
applications and database workloads:

-   Ensure the input/output operations per second (IOPS) are sufficient
    for the application needs. Keep the IO latency low.
-   Create and tune the table indexes. Avoid full table scans.
-   Performance regular database maintenance.
-   Make sure the application/clients (e.g. App Service) are physically
    located as close as possible to the database. Reduce network
    latency.
-   Use accelerated networking for the application server if you use a
    Azure virtual machine, Azure Kubernetes, or App Services.
-   Use connection pooling when possible. Avoid creating new connections
    for each application request. ProxySQL for built-in connection
    pooling and load balancing. Balance your workload to multiple read
    replicas as demand requires without any changes in application code.
-   Set timeouts when creating transactions.
-   Set up a [read replica] for read-only queries and analytics.
-   Consider using query caching solution like Heimdall Data Proxy.
    Limit connections based on per user and per database. Protect the
    database from being overwhelmed by a single application or feature.
-   Temporarily scale your Azure Database for PostgreSQL Flexible Server
    resources for taxing tasks. Once your task is complete, scale it
    down.

See [Best practices for optimal performance of your Azure Database for
PostgreSQL Flexible Server]

## Monitoring hardware and query performance

As previously discussed in the monitoring section of this guide,
monitoring metrics such as the `cpu_percent` or `memory_percent` can be
important when deciding to upgrade the database tier. Consistently high
values for extended periods of time could indicate a tier upgrade is
necessary.

If CPU and memory do not seem to be the issue, administrators can
explore database-based options such as indexing and query modifications
for poor-performing queries.

To find poor-performing queries, run the following:

``` kql
AzureDiagnostics
| where ResourceProvider == "MICROSOFT.DBFORPostgreSQL"
| where Category == 'PostgreSQLSlowLogs'
| project TimeGenerated, LogicalServerName_s, event_class_s, start_time_t , query_time_d, sql_text_s
| top 5 by query_time_d desc
```

## Upgrading the tier

*Know your workload!* The Azure portal and the CLI can be used to scale
between the `Burstable`, `General Purpose`, and `Memory Optimized`
tiers. Tier scaling requires restarting the Flexible Server instance,
causing 60-120 seconds of downtime. If your application does not require
a significant compute, use the `Burstable` SKU. When your application
requires more performance during certain times, Azure Database for
PostgreSQL Flexible Server can increase performance automatically and
reduce when you do not need it. Organizations can save operational
costs.

## Scaling the server

Within the tier, it is possible to scale cores and memory to the minimum
and maximum [limits] allowed in that tier. If monitoring shows a
continual maxing out of CPU or memory, scale up to meet demand.

You can also adjust the IOPS for better transactions per second (TPS)
performance. You can use an [Azure CLI
script][Monitor and scale an Azure Database for PostgreSQL Flexible Server using Azure CLI]
to monitor relevant metrics and scale the server.

## Azure Database for PostgreSQL Flexible Server memory recommendations

An Azure Database for PostgreSQL Flexible Server performance best
practice is to allocate enough RAM so that your working set resides
almost completely in memory. Check if the memory percentage used is
reaching the limits.

Do not be surprised. Set up alerts on thresholds to ensure that
notifications can be sent to administrators before servers reach limits.
Based on the defined limits, check if scaling the database SKU to a
higher compute size or to a better pricing tier increases performance
enough to meet the workload requirements.

For information on monitoring a DB instance's metrics, see [PostgreSQL
DB Metrics].

## Moving regions

It is possible to move a geo-redundant Flexible Server instance to a
[paired Azure region] through geo-restore. Geo-restore creates a new
Flexible Server instance in the paired Azure region based on the current
state of the database.

> ![Note icon][Note] **Note:** Point-in-time restore is not supported.

Geo-restore can be used to recover from a service outage in the primary
region. However, the Flexible Server instance created in the paired
region can only be configured with locally redundant storage, as its
paired region (the old primary region) is down.

To minimize downtime, Flexible Server configuration settings can be kept
intact.

## Server parameters

![This image shows PostgreSQL server parameters in the Azure portal.]

As part of the migration, the on-premises [server parameters][64] were
likely modified to support a fast egress. Also, modifications were made
to the Azure Database for PostgreSQL Flexible Server parameters to
support a fast ingress. The Azure server parameters should be set back
to their original on-premises workload-optimized values after the
migration.

However, be sure to review and make server parameter changes that are
appropriate for the workload and the environment. Some values that were
great for an on-premises environment may not be optimal for a
cloud-based environment. When migrating the current on-premises
parameters to Azure, verify that they can be set.

Some Azure Database for PostgreSQL Flexible Server parameters cannot be
modified. Verify the strategy before making environment assumptions.

## Upgrade Azure Database for PostgreSQL Flexible Server versions

Sometimes, just upgrading versions may be the solution to an issue.
Flexible Server supports PostgreSQL versions 5.7 and 8.0. Migrating from
on-premises PostgreSQL 5.x to PostgreSQL Flexible Server 5.7 or 8.0
delivers major performance improvements. Consult the [Microsoft
documentation] for more information regarding PostgreSQL Azure
migrations, including major version changes.

## Customizing the container runtime

When using containers for your PostgreSQL and PHP application, the
platform choice has a huge impact on your performance limits. In most
cases, creating a custom PHP container can improve performance up to 6x
over the out-of-the-box official PHP containers. It is important to
determine if the effort of building a custom image will be worth the
performance gain from the work. Also, keep in mind recent versions of
PHP tend to perform better than older versions.

Custom environments can be tested against standard workloads by running
various benchmarks using the [PHPBench tool].

![Read more icon] [Container insights overview]

## Running PostgreSQL Benchmarks

There are several tools that can be used to benchmark PostgreSQL
environments. Here are a few that can be used to determine how well an
instance is performing:

-   [DBT2 Benchmark] - DBT2 is an open source benchmark that mimics an
    OLTP application for a company owning large amounts of warehouses.
    It contains transactions to handle New Orders, Order Entry, Order
    Status, Payment and Stock handling

-   [SysBench Benchmark Tool] - Sysbench is a popular open source
    benchmark to test open source DBMSs.

More Common sets of tests typically utilize TPC benchmarks such as
[TPC-H] but there are many more [types of tests] that can be run against
the PostgreSQL environment to test against specific workloads and
patterns.

## Instrumenting vital server resources

The [PostgreSQL Performance Schema] **sys_schema** provides a way to
inspect internal server execution events at runtime. The PostgreSQL
performance_schema provides instrumentation for many vital server
resources such as memory allocation, stored programs, metadata locking,
etc. However, the performance_schema contains more than 80 tables and
getting the necessary information often requires joining tables within
the performance_schema, and tables from the information_schema. Building
on both performance_schema and information_schema, the sys_schema
provides a powerful collection of user-friendly views in a read-only
database and is fully enabled in Azure Database for PostgreSQL Flexible
Server version 5.7.

![This image shows how to use tables in the sys schema to optimize
PostgreSQL queries.]

> ![Warning] **Warning**: The Performance Schema avoids using mutexes to
> collect or produce data, so there are no guarantees of consistency and
> results can sometimes be incorrect. Event values in performance_schema
> tables are non-deterministic and unrepeatable.

## Server Parameters

PostgreSQL server parameters allow database architects and developers to
optimize the PostgreSQL engine for their specific application workloads.
One of the advantages of Flexible Server is the large number of server
parameters exposed by the service. Some important exposed parameters are
listed below, but storage and compute tiers affect the possible
parameter values. Consult the [Microsoft documentation][64] for more
information.

Some parameters that cannot be configured at the server level can be
configured at the connection level. Moreover, *dynamic* parameters can
be changed without restarting the server, while modifying *static*
parameters warrants a restart.

-   [log_bin_trust_function_creators] is enabled by default and
    indicates whether users can create triggers

-   [innodb_buffer_pool_size] indicates the size of the buffer pool, a
    cache for tables and indexes

    > For this parameter, consult the [Microsoft documentation][64], as
    > the database compute tier affects the parameter value range

-   [innodb_file_per_table] affects where table and index data are
    stored

### Tools to Set Server Parameters

Standard Azure management tools, like the Azure portal, Azure CLI, and
Azure PowerShell, allow for configuring server parameters.

-   [Use Azure portal to configure server parameters]
-   [User Azure CLI to configure server parameters]

### Server Parameters best practices

The server parameters below may provide performance improvements for an
application workload; however, before modifying these values in
production, verify that they yield performance improvements without
compromising application stability.

-   Enable thread pooling by setting `thread_handling` to
    `pool-of-threads`. Thread pooling improves concurrency by serving
    connections through a pool of worker threads, instead of creating a
    new thread to serve each connection. Enabling thread pooling
    improves performance for transactional workloads, as connections are
    short-lived

    -   The degree of concurrency is set through the `thread_pool_size`
        parameter
    -   Only supported in PostgreSQL 8.0

    ![This graph demonstrates the performance benefits of thread pooling
    for a Flexible Server instance.]

    The graph above reflects the performance improvements of thread
    pooling for a 16 vCore, 64 GiB memory Flexible Server instance. The
    x-axis represents the number of connections, and the y-axis
    represents the number of queries served per second (QPS). Read the
    associated [Microsoft TechCommunity post] for more details

-   Enable InnoDB buffer pool warmup by setting
    `innodb_buffer_pool_dump_at_shutdown` to `ON`: InnoDB buffer pool
    warmup loads data files from disk after a restart and before
    receiving queries on that data. This change improves the latency of
    the first queries executed against the database after a restart, but
    it does increase the server's start-up time

    -   Microsoft only recommends this change for database instances
        with more than 335 GB of provisioned storage
    -   Learn more from the [Microsoft
        documentation][Best practices for optimal performance of your Azure Database for PostgreSQL Flexible Server]

## Caching

Utilizing resources such as CPU, memory, disk (read/write access) and
network can factor into how long an application request takes to
process. Being able to remove deterministic actions (ex: the same
function/API call does not change) within a certain set of time is an
important pattern to implement in your various application layers.
Caching reduces the latency and contention that is associated with
handling large volumes of concurrent requests in the original data
store.

Caching is a common technique that aims to improve the performance and
scalability of a system. It does this by temporarily copying frequently
accessed data to fast storage that's located close to the application.

![Read more icon] [Caching guidance]

### Disk cache

When memory is not readily available or some items are just too big to
stream over a network connection due to latency issues, it may be
appropriate to copy data to disk. It is important to test whether a
repeated operation takes more time to access from disk than it does to
do the operation.

This caching option is a common pattern for when applications have users
scattered all over the world. By distributing the same files and content
to locations that are closest to those users, the users will see
improved latency and perceived application performance.

### Memory cache

Access to data in memory is much faster compared to retrieving data from
disk. It is an effective means for storing modest amounts of static
data, since the size of a cache is typically constrained by the amount
of memory available on the machine hosting the process.

#### Local memory

If an application has access to local memory, it can utilize that memory
to cache its data and access it more quickly than going to disk or over
the network. However, if the memory available to the application is less
than ideal (potentially driven by operating system or hardware limits),
another caching option must be chosen. If the application requires
exceptionally low access rates, it will be necessary to send the data to
a memory server.

#### Redis Cache

A common piece of software that helps with caching is called [Redis
cache]. As with all pieces of software, it can be run on-premises, in a
virtual machine in the cloud (IaaS), or even as a platform-as-a-service
offering (PaaS).

Redis cache works by putting data into memory via key/value pairs. The
application will typically serialize the data and then hand it off to
Redis for quick retrieval later. The Redis cache should be located close
to the application. Query results should be retrieved and forwarded
quickly.

[Azure Cache for Redis] is a platform as a service Microsoft
Azure-hosted Redis environment that provides several levels of service
such as [Enterprise, Premium, Standard, and Basic tiers].

## Azure Content Delivery Network

An Azure Content Delivery Network (CDN) utilizes distributed
point-of-presence (POP) servers to serve cached static web content and
optimize the delivery of dynamic content to users. As shown in the
diagram below, users request static content from their nearest POP,
which will serve content from its cache. If the local POP servers do not
have the desired asset, they will request the site (origin) web server
and cache it for the time-to-live (TTL) period.

![This image demonstrates how Azure CDN POPs optimize content delivery.]

Azure CDN also supports dynamic site acceleration, optimizing the
network path from clients to the server through POP sites, pre-fetches
images and scripts, and more.

### Using Azure CDN in Web Apps

Azure App Service natively supports integrating with Azure CDN. Refer to
the digital marketing sample in the [12 / PostgreSQL architectures][65]
section for a practical example involving Azure CDN and a content
management system. For non-App Service workloads, Azure CDN is
compatible with any public web server.

## 08 / Summary

After developers benchmark their PostgreSQL Flexible Server workloads,
they can tune server parameters, scale compute tiers, and optimize their
application containers to improve performance. Through Azure Monitor and
KQL queries, teams monitor the performance of their workloads.

Caching is a very common way to increase the performance of
applications. Through disk or memory-based cache, a developer and
architect should always be on the lookout for deterministic areas that
can be cached. Azure CDN provides caching via POP servers to users of
global-scale web apps.

Lastly, an important balance should be struck between performance of the
cache and costs.

### Checklist

-   Monitor for slow queries.
-   Periodically review the Performance Insight dashboard.
-   Utilize monitoring to drive tier upgrades and scale decisions.
-   Consider moving regions if the users' or application's needs change.
-   Adjust server parameters for the running workload.
-   Utilize caching techniques to increase performance.
-   Get data closer to users by implementing content delivery networks.

# 09 / Troubleshooting

As applications are running and executing in cloud environments, it is
always a possibility that something unexpected can occur. This chapter
covers a few common issues and the troubleshooting steps for each issue.

## Common PostgreSQL issues

Debugging operational support issues can be time consuming. Configuring
the right monitoring and alerting can help provide useful error messages
and clues to the potential problem area(s).

### Connectivity issues

Both server misconfiguration issues and network access issues can
prevent clients from connecting to an Azure Database for PostgreSQL
Flexible Server instance. For some helpful connectivity suggestions,
reference the [Troubleshoot connection issues to Azure Database for
PostgreSQL Flexible Server] and [Handle transient errors and connect
efficiently to Azure Database for PostgreSQL Flexible Server] articles.

#### Misconfiguration

-   [Error 1184][]: This error occurs after a user authenticates with
    the database instance, but before they execute SQL statements. The
    `init_connect` server parameter includes statements that execute
    before sessions are initiated. Consequently, erroneous SQL
    statements in `init_connect` prevent clients from connecting.
    -   **Resolution**: Reset the value of `init_connect` using the
        Azure portal or SQL.
-   Administrators use the database admin user specified during server
    creation to create new databases and add new users. If the admin
    user credentials were not recorded, administrators can easily reset
    the admin password using the Azure portal.
    -   Logging in with the administrator account can help debug other
        access issues, like confirming if a given user exists.

#### Network access issues

-   By default, Flexible Server only supports encrypted connections
    through the TLS 1.2 protocol; clients using TLS 1.0 or 1.1 will be
    unable to connect unless explicitly enabled. If it is not possible
    to change the TLS protocol used by an application, then [change the
    Flexible Server instance's supported TLS versions.][63]

-   If connecting to Flexible Server via public access, ensure that
    firewall ACLs permit access from the client.

-   Ensure that corporate firewalls do not block outbound connections to
    port 5432.

-   Use a fully qualified domain name instead of an IP address in
    connection strings. This type of configuration is especially
    important with Azure Database for PostgreSQL Flexible Server Single
    Server instances, which use gateways to route incoming requests to
    database servers. It is possible to use the gateway public IP
    address in your applications.

    > ![Warning] **Warning:** However, as Microsoft plans to [retire
    > older gateways], you are responsible for updating the gateway IP
    > address in your applications. It is less error-prone to work with
    > the FQDN.

-   Use [Azure Network Watcher] to debug traffic flows in virtual
    networks.

    > ![Note icon][Note] **Note:** It does not support PaaS services,
    > but it is still a helpful tool for IaaS configurations

    -   Network Watcher works well with other networking utilities, like
        the Unix `traceroute` tool

### Resource issues

If the application experiences transient connectivity issues, perhaps
the resources of the Azure Database for PostgreSQL Flexible Server
instance are constrained. Monitor resource usage and determine whether
the instance needs to be scaled up.

### Unsupported PostgreSQL features

Operating in a cloud environment means that certain features that
function on-premises are incompatible with Azure Database for PostgreSQL
Flexible Server instances. While Flexible Server has better feature
parity with on-premises PostgreSQL than Single Server, it is important
to be aware of any limitations.

-   Azure Database for PostgreSQL Flexible Server does not support the
    PostgreSQL `SUPER` privilege and the `DBA` role. This may affect how
    some applications operate.

    -   [Error 1419][]: By default, PostgreSQL instances with binary
        logging enabled for replication require function creators to
        have the `SUPER` privilege to avoid privilege escalation
        attacks.
        -   **Resolution**: The Azure suggested setting is to set the
            `log_bin_trust_function_creators` parameter to `1`. Azure
            insulates against threats that exploit the binary log.
    -   [Error 1227][]: This error occurs when creating stored
        procedures or views with `DEFINER` statements.
        -   **Resolution**: If you encounter this error while migrating
            schema objects from an on-premises PostgreSQL instance,
            remove the `DEFINER` statements manually from the database
            dump.

-   Direct file system access is not available to clients. This means
    that `SELECT ... INTO OUTFILE` commands are unsupported.

-   Only the `InnoDB` and `MEMORY` storage engines are supported. This
    may affect older data warehousing and web applications based on the
    non-transactional `MyISAM` engine. Consult the [PostgreSQL
    documentation] to learn how to convert your MyISAM tables to InnoDB
    and make them run optimally.

### Platform issues

-   On occasion, Azure experiences outages. Use [Azure Service Health]
    to determine if an Azure outage impacts PostgreSQL workloads in your
    region or datacenter.

-   Azure's periodic updates can impact the availability of
    applications. Flexible Server allows administrators [to set custom
    maintenance schedules.]

-   Implement retry logic in your applications to mitigate transient
    connectivity issues:

    -   To provide resiliency against more severe failures, like Azure
        service outages, implement the [circuit breaker pattern] to
        avoid wasting application resources on operations that are
        likely to fail

## Troubleshoot app issues in Azure App Service

-   **Enable web logging.** Azure provides built-in diagnostics to
    assist with [debugging an App Service app].

-   Network requests taking a long time? [Troubleshoot slow app
    performance issues in Azure App Service]

-   In Azure App Service, certain settings are available to the
    deployment or runtime environment as environment variables. Some of
    these settings can be customized when configuring the app settings.
    [Environment variables and app settings in Azure App Service]

-   [Azure App Service on Linux FAQ]

## App debugging

Following software development best practices makes your code simpler to
develop, test, debug, and deploy. Here are some strategies to resolve
application issues.

-   Use logging utilities wisely to help troubleshoot failures without
    impairing app performance. Structured logging utilities, like PHP's
    native logging functions or third-party tools, such as [KLogger],
    can write logs to the console, to files, or to central repositories.
    Monitoring tools can parse these logs and alert anomalies.

-   In development environments, remote debugging tools like [XDebug]
    may be useful. You can set breakpoints and step through code
    execution. [Apps running on Azure App Service PHP and Container
    instances can take advantage of XDebug.]

    -   Users of Visual Studio Code can install XDebug's [PHP Debug
        extension].

-   To debug slow PHP applications, consider using Application
    Performance Monitoring solutions like [Azure Application
    Insights][Application Insights], which integrates with Azure
    Monitor. Here are a few common culprits for low-performing PHP apps.

    -   Executing database queries against tables that are indexed
        inefficiently
    -   Configuring web servers poorly, such as by choosing a suboptimal
        number of worker processes to serve user requests
    -   Disabling [opcode caching], requiring PHP to compile code files
        to opcodes every request

-   Write tests to ensure that applications function as intended when
    code is modified. Review the [07 / Testing][66] document for more
    information about different testing strategies. Tests should be
    included in automated release processes.

-   Generally, all cloud applications should include connection [retry
    logic], which typically responds to transient issues by initiating
    subsequent connections after a delay.

### Additional support

-   In the Azure portal, navigate to the **Diagnose and solve problems**
    tab of your Azure Database for PostgreSQL Flexible Server instance
    for suggestions regarding common connectivity, performance, and
    availability issues.

    ![This image demonstrates the Diagnose and solve problems tab of a
    Flexible Server instance in the Azure portal.]

    This experience integrates with Azure Resource Health to demonstrate
    how Azure outages affect your provisioned resources.

    ![This image demonstrates how Azure Resource Health correlates Azure
    service outages with the customer's provisioned resources.]

-   If none of the above resolve the issue with the PostgreSQL instance,
    [send a support request from the Azure portal.]

### Opening a support ticket

If you need assistance with an Azure Database for PostgreSQL Flexible
Server issue, [open an Azure support
ticket][send a support request from the Azure portal.] with Microsoft.
Be sure to select the correct product and provide as much information as
possible, so the proper resources is assigned to your ticket.

![This image shows how to open a detailed support ticket for Microsoft
from the Azure portal.]

### Recommended content

-   [Troubleshoot connection issues to Azure Database for PostgreSQL
    Flexible Server]

-   [Handle transient errors and connect efficiently to Azure Database
    for PostgreSQL Flexible Server]

-   [Troubleshoot errors commonly encountered during or post migration
    to Azure Database for PostgreSQL Flexible Server]

-   [Troubleshoot data encryption in Azure Database for PostgreSQL
    Flexible Server]

-   [Azure Community Support] Ask questions, get answers, and connect
    with Microsoft engineers and Azure community experts

## 09 / Summary

This section helped pinpoint some of the most common issues a team may
run into when hosting your PostgreSQL based applications in the cloud.
These included items from connectivity, deployment, and performance.

### Checklist

-   Understand the OSI model and how it can help troubleshoot issues.
-   Start at the bottom of the OSI model and work your way up.
-   Network connectivity issues can exist anywhere between client and
    server.
-   Be sure a clear plan of attack has been developed for resolving
    issues.
-   Utilize logging to assist in troubleshooting activities.

# 10 / Business Continuity and Disaster Recovery

Businesses implement *business continuity* (BC) and *disaster recovery*
(DR) strategies to minimize disruptions. While *business continuity*
emphasizes preserving business operations through policies, *disaster
recovery* explains how IT teams will restore access to data and
services.

## High availability

Flexible Server implements high availability by provisioning another VM
to serve as a standby. It is possible to provision this secondary
Flexible Server VM in another availability zone, as shown below. This HA
option is only supported for Azure regions with availability zones.
While this option does provide redundancy against zonal failure, there
is more latency between the zones that affects replication.

> ![Watch icon] **Watch:** [High Availability \[9 of 16\] \| Azure
> Database for PostgreSQL Flexible Server - Beginners Series][67]

![This image demonstrates Zone-Redundant HA for PostgreSQL Flexible
Server.]

Azure provides HA within a single zone to compensate for the latency
challenges. In this configuration, both the primary node and the standby
node are in the same zone. All Azure regions support this configuration.
Of course, it does not insulate against zonal failure.

![This image demonstrates HA for PostgreSQL Flexible Server in a single
zone.]

Both of these HA solutions have transparent failover. In a failover
event, the standby server becomes the primary server, and DNS records
point to the new primary. If the old primary comes back online, it
becomes the secondary.

> ![Note icon][Note] **Note:** Replication is not synchronous to avoid
> the performance penalty of synchronous replication. A transaction
> committed to the primary node is not necessarily committed to the
> secondary node; the secondary node is brought up to the latest
> committed transaction during failover.

To learn more about HA with PostgreSQL Flexible Server, consult the
[documentation.]

### Implementing cross-region high availability

Flexible Server does not currently support cross-region high
availability. However, it is possible to achieve this using PostgreSQL
native replication instead of replicating log files at the Azure storage
level. The image below demonstrates two Flexible Server instances
deployed in two virtual networks in two Azure regions.

![This image demonstrates a possible cross-region HA scenario using two
virtual networks.]

The virtual networks are peered to provide network connectivity for
PostgreSQL native replication. As the image indicates, developers can
employ PostgreSQL native replication for scenarios like replicating from
an on-premises primary to an Azure secondary.

One disadvantage of this architecture is that it is customer-managed.

## Replication

Replication in Flexible Server allows applications to scale by providing
**read-only** replicas to serve queries while dedicating write
operations to the main Flexible Server instance.

> ![Watch icon] **Watch:** [Replication \[10 of 16\] \| Azure Database
> for PostgreSQL Flexible Server - Beginners Series][68]

Replication from the main instance to the read replicas is asynchronous.
Consequently, there is a lag between the source instance and the
replicas. Microsoft estimates that this lag typically ranges between a
few seconds to a few minutes.

> ![Warning][69] **Warning:** Replication is not a high availability
> strategy. Consult the BCDR document for more details. Replication is
> designed to improve application performance, so **it does not support
> automatic failover or bringing replicas up to the latest committed
> transaction during failover**.

Replication is only supported in the General Purpose and Memory
Optimized tiers of Flexible Server. Also, it is possible to promote a
read replica to being a read-write instance. However, that severs the
replication link between the main instance and the former replica, as
the former replica cannot return to being a replica.

## Read replicas

[Read replicas][Read replicas:] can be used to increase the PostgreSQL
read throughput, improve performance for regional users, and implement
disaster recovery. There is a cost. When creating one or more read
replicas, be aware that additional charges will apply for the same
compute and storage as the primary server.

## Deleted servers

> ![Warning][69] **Warning:** If an administrator or bad actor deletes
> the server in the Azure Portal or via automated methods, all backups
> and read replicas will also be deleted. [Resource locks][70] must be
> created on the Azure Database for PostgreSQL Flexible Server resource
> group to add an extra layer of deletion prevention to the instances.

## Regional failure

In case of a rare regional failure event, geo-redundant backups or a
read replica can be used to get the data workloads running again. It is
best to have both geo-replication and a read replica available for the
best protection against unexpected regional failures.

> ![Note icon][Note] **Note:** Changing the database server region also
> means the endpoint will change and application configurations will
> need to be updated accordingly.

### Use fully qualified domain names in connection strings

-   Use a fully qualified domain name instead of an IP address in
    connection strings. If network changes are made causing IP addresses
    to change, your application should be operational. Administrators
    should not have to locate and change dependent application
    configuration, especially during a recovery event.

## Load Balancers

If the application is made up of many different instances around the
world, it may not be feasible to update all of the clients. A load
balancer may assist in this challenge. Load balancing focuses on
distributing load (incoming network traffic) across a group of backend
resources or servers. Utilize an [Azure Load Balancer] or [Application
Gateway] to implement a seamless failover functionality. Although
helpful and time-saving, these tools are not required for regional
failover capability.

### Use cases

#### Load balancer

Often, developers use load balancers, like ProxySQL, to direct read
operations to read replicas automatically. ProxySQL can [run on an Azure
VM] or [Azure Kubernetes Service.]

> ![Tip][71] **Tip:** Moreover, analytical systems often benefit from
> read replicas. BI tools can connect to read replicas, while data is
> written to the main instance and replicated to the read replicas
> asynchronously.

#### Read replicas

Using read replicas also helps with microservice architecture
implementations. The image below demonstrates how APIs that require
read-only access data can connect to read replicas. APIs that modify
data can use the primary database instance.

![This image demonstrates a possible microservices architecture with
PostgreSQL read replicas.]

## Flexible Server resources

-   [Azure Portal][72]
-   [Azure CLI][73]

## Backup and restore

As with any mission-critical system, having a backup and restore as well
as a disaster recovery (BCDR) strategy is an important part of the
overall system design.

> ![Watch icon] **Watch:** [Backup and Restore \[8 of 16\] \| Azure
> Database for PostgreSQL Flexible Server - Beginners Series][74]

If an unforeseen event occurs, administrators should have the ability to
restore data to a point in time called the Recovery Point Objective
(RPO) and in a reasonable amount of time called the Recovery Time
Objective (RTO).

### Backup

Azure Database for PostgreSQL Flexible Server takes automatic backups of
data and transaction log files. These backups can be stored in
locally-redundant storage (replicated multiple times in a datacenter);
zone-redundant storage (multiple copies are stored in two separate
availability zones in a region); and geo-redundant storage (multiple
copies are stored in two separate Azure regions).

Azure Database for PostgreSQL Flexible Server supports automatic backups
for 7 days by default. It may be appropriate to modify this to the
current maximum of 35 days. It is important to be aware that if the
value is changed to 35 days, there will be charges for any extra backup
storage over 1x of the storage allocated. Data file backups are taken
once daily, while transaction log backups are taken every five minutes.

Find additional storage pricing details for Flexible Server [here.]

There are several current limitations to the database backup feature as
described in the [Backup and restore in Azure Database for PostgreSQL
Flexible Server] docs article. It is important to understand them when
deciding what additional strategies should be implemented.

Some items to be aware of include:

-   No direct access to the backups
-   Tiers that allow up to 4TB have a full backup once per week,
    differential twice a day, and logs every five minutes
-   Tiers that allow up to 16TB have snapshot-based backups

> ![Note icon][Note] **Note:** [Some regions] do not yet support storage
> up to 16TB.

### Restore

Redundancy (local or geo) must be configured during server creation.
However, a geo-restore can be performed and allows the modification of
these options during the restore process. Performing a restore operation
will temporarily stop connectivity, and any applications will be down
during the restore process.

During a database restore, any supporting items outside of the database
will also need to be restored. Review the migration process. See
[Perform post-restore tasks] for more information.

Lastly, note that performing a restore from a backup provisions a new
Flexible Server instance. Most of the new server's configuration is
inherited from the old server, though it depends on the type of restore
performed.

Learn more about backup and restore in Flexible Server from the
[Microsoft documentation.]

### Flexible Server resources

-   [Point-in-time restore with Azure Portal]
-   [Point-in-time restore with CLI]
-   [Azure CLI samples for Azure Database for PostgreSQL Flexible
    Server - Flexible Server]

## Service maintenance

Like any Azure service, Flexible Server receives patches and
functionality upgrades from Microsoft. To ensure that planned
maintenance does not blindside administrators, Azure provides them
control over when patching occurs.

With Flexible Server, administrators can specify a custom **Day of
week** and **Start time** for maintenance, or they can let the platform
choose a day of week and time. If the maintenance schedule is chosen by
the platform, maintenance will always occur between 11 PM and 7 AM in
the region's time zone.

> See [this] list from Microsoft to determine the physical location of
> Azure regions and thus the regional time zone.

Azure always rolls out updates to servers with platform-managed
schedules before instances with custom schedules. Platform-managed
schedules allow developers to evaluate Flexible Server feature
improvements in non-production environments. Moreover, maintenance
events are relatively infrequent; there are typically 30 days of gap
unless a critical security fix must be applied.

> As a general rule, only set a maintenance schedule for production
> instances.

### Notifications

In most cases, irrespective of whether using a platform-managed or
custom maintenance schedule, Azure will notify administrators five days
before a maintenance event. The exception is critical security fixes.

Use Azure Service Health to view upcoming infrastructure updates and set
notifications. Refer to the links at the end of the document.

### Differences for Single Server

Single Server uses a gateway to access database instances, unlike
Flexible Server. These gateways have public IP addresses that are
retired and replaced, which may impede access from on-premises. Azure
notifies customers about gateway retirements three months before. Learn
more [here.][75]

Single Server does not support custom schedules for maintenance. Azure
notifies administrators 72 hours before the maintenance event.

### Configure maintenance scheduling and alerting

-   [Manage scheduled maintenance settings using the Azure Portal
    (Flexible Server)]
-   [View service health notifications in the Azure Portal]
-   [Configure resource health alerts using Azure Portal]

## Azure Database for PostgreSQL Flexible Server upgrade process

Since Azure Database for PostgreSQL Flexible Server is a PaaS offering,
administrators are not responsible for the management of the updates on
the operating system or the PostgreSQL software. Also, administrators
need to plan for database version upgrades. Cloud providers are
continuously upgrading and improving their supported offerings. Older
versions eventually fall into the unsupported status.

![Read more icon] [Retired PostgreSQL engine versions not supported in
Azure Database for PostgreSQL Flexible Server]

![Warning][69] **Warning:** It is important to be aware the upgrade
process can be random. During deployment, the PostgreSQL server
workloads will stop be processed on the server. Plan for these downtimes
by rerouting the workloads to a read replica in the event the particular
instance goes into maintenance mode.

> ![Note icon][Note] **Note:** This style of failover architecture may
> require changes to the applications data layer to support this type of
> failover scenario. If the read replica is maintained as a read replica
> and is not promoted, the application will only be able to read data
> and it may fail when any operation attempts to write information to
> the database.

The [planned maintenance notification] feature will inform resource
owners up to 72 hours in advance of installation of an update or
critical security patch. Database administrators may need to notify
application users of planned and unplanned maintenance.

> ![Note icon][Note] **Note:** Azure Database for PostgreSQL Flexible
> Server maintenance notifications are incredibly important. The
> database maintenance can take the database and connected applications
> down for a short period of time.

## 10 / Summary

A solid BCDR plan is critical for every organization. The operation team
should leverage strategies covered in this chapter to ensure business
continuity. Downtime events are not only disaster events, but also
include normal scheduled maintenance. This chapter pointed out that
platform as a service instances such as Azure Database for PostgreSQL
Flexible Server still have some downtime that must be taken into
consideration. Older versions of PostgreSQL will trigger end-of-life
(EOL) support. A plan should be developed to ensure that the possibility
of upgrades will not take applications offline. Consider using read only
replicas that will maintain the application availability during these
downtimes. To support these types of architectures, the applications may
need to be able to gracefully support the failover to read-only nodes
when users attempt to perform write based activities.

### Checklist

-   Perform backups regularly, ensure the backup frequency meets
    requirements.
-   Setup read replicas for read intensive workloads and regional
    failover.
-   Use resource locks to prevent accidental deletions.
-   Create resource locks on resource groups.
-   Implement a load balancing strategy for applications for quick
    failover.
-   Be aware that service outages will occur and plan appropriately.
-   Develop a scheduled maintenance plan and setup maintenance
    notifications.
-   Develop a database version upgrade plan.

# 11 / Best practices

## Best practices for PostgreSQL Flexible Server apps

Organizations developing cloud apps backed by Azure Database for
PostgreSQL Flexible Server should consider implementing the following
best practices. Note, that this list is not comprehensive.

Readers should review additional guide chapters for a more comprehensive
understanding.

-   \[05 / Monitoring\]
-   [06 / Networking and Security][76]
-   [07 / Testing][66]
-   [08 / Performance and Optimization][77]
-   [10 / Business Continuity and Disaster Recovery][78]

Consult the [Azure Well-Architected Framework] for more information
regarding the core principles of efficient cloud workloads. You can
assess your existing Azure workloads for Well-Architected Framework
compliance with the [Azure Well-Architected Review utility.]

### 1. Co-locate resources

Locating Azure services in the same region minimizes network traffic
costs and network latency. Flexible Server supports co-location in the
same region and co-location in the same Availability Zone for [regions
that support Availability Zones.] PostgreSQL Flexible Server couples
well with zonal services, like Virtual Machines.

### 2. Implement connection pooling

Developers can significantly improve application performance by reducing
the number of times that connections are established and increasing the
duration of those connections through connection pooling. Microsoft
recommends the ProxySQL connection pooling solution, hosted on
application servers or container orchestrators, like Azure Kubernetes
Service (AKS).

-   [ProxySQL on a VM]
-   [ProxySQL on AKS][Azure Kubernetes Service.]

### 3. Monitor and size containers adequately

To ensure that containerized applications function optimally, verify
that application containers are allocated sufficient resources. It may
be necessary to adjust application parameters for container
environments, like Java heap size parameters.

Developers can identify container resource issues using monitoring
utilities, like [Container insights,][Container insights overview] which
supports Azure Kubernetes Service, Azure Container Instances,
on-premises Kubernetes clusters, and more.

-   Identify AKS containers that are running on the node and their
    average processor and memory utilization. This knowledge can help
    you identify resource bottlenecks.

-   Identify processor and memory utilization of container groups and
    their containers hosted in Azure Container Instances.

-   Review the resource utilization of workloads running on the host
    that are unrelated to the standard processes that support the pod.

### 4. Implement network isolation and SSL connectivity

PostgreSQL Flexible Server natively supports connectivity through Azure
Virtual Networks, meaning that the database endpoint does not face the
public Internet, and database traffic remains within Azure. Consider the
[06 / Networking and Security][76] document for more information
regarding public and private access.

Microsoft also recommends securing data in motion through SSL for
applications that support SSL connectivity. Legacy applications should
only use lower SSL versions or disable SSL connectivity in secure
network environments.

### 5. Retry on transient faults

Given that cloud environments are more likely to encounter transient
faults, like network connectivity interruptions or service timeouts,
applications must implement logic to deal with them, typically by
retrying requests after a delay.

Applications must first determine if a fault is transient or more
persistent. Typically, API responses indicate the nature of the issue,
sometimes even specifying a retry interval. If the fault is transient,
applications must retry requests without consuming excessive resources.
Common retry strategies including sending requests at regular intervals,
exponential intervals, or random intervals. If a given number of retry
requests fail, applications consider the operation failed.

Azure SDKs typically provide native support for retrying service
requests. Consult the documentation's [list of per-service retry
recommendations.]

For some ORMs that are commonly used with PostgreSQL databases, like
PHP's **PDO PostgreSQL**, it may be necessary to write custom retry code
that retries database connections if particular PostgreSQL error codes
are thrown.

### 6. Size database compute resources adequately

Teams must be diligent with sizing their Flexible Server instances to be
cost-effective while maintaining sufficient application performance.
There are [three different tiers of Flexible Server
instances][scale storage to increase IOPS capacity or provision additional IOPS],
each with different intended use cases and memory configurations.

-   **Burstable**:
    -   Up to **2 GiB** memory per vCore
    -   Intended for workloads that do not use the CPU continuously
    -   Cost-effective for smaller web applications and development
        workloads
-   **General Purpose**:
    -   **4 GiB** per vCore
    -   Intended for applications that require more throughput
-   **Memory Optimized**:
    -   **8 GiB** per vCore
    -   Intended for high-throughput transactional and analytical
        workloads, like real-time data processing

Flexible Server instances can be resized after creation. Azure stops
database VM instances and needs up to 120 seconds to scale compute
resources.

Use Azure Monitor Metrics to determine if you need to scale your
Flexible Server instance. Monitor metrics like **Host CPU percent**,
**Active Connections**, **IO percent**, and **Host Memory Percent** to
make your scaling decisions. To test database performance under
realistic application load, consider utilities like [sysbench.]

## 11 / Summary

The preceding best practices are a collection of the most common items
that architects and developers may employ to improve the performance,
security and availability of their Azure Database for PostgreSQL
Flexible Server applications. Be sure to review if you have followed all
the recommended best practices and if you discover they have not been
followed, try to implement them as soon as possible to esnure the
integrity of your applications and satisfaction of your users.

# 12 / PostgreSQL architectures

By progressing through this guide, there have been various ways
presented to build and deploy applications using many different services
in Azure. Although we covered many topics, there are many other creative
and different ways to build and deploy PostgreSQL-based services.

The [Azure Architecture center] provides many different examples of how
to create different architectures. Although some of them utilize other
database persistence technologies, these could easily be substituted
with Azure Database for PostgreSQL Flexible Server - Flexible Server.

## Sample architectures

The following are a few examples of architectures using different
patterns and focused on various industries from the Azure Architecture
Center.

### Digital marketing using Azure Database for PostgreSQL Flexible Server

-   [Digital marketing using Azure Database for PostgreSQL Flexible
    Server:] In this architecture, corporations serve digital marketing
    campaigns through content management systems, like WordPress or
    Drupal, running on Azure App Service. These CMS offerings access
    user data in Azure Database for PostgreSQL Flexible Server. Azure
    Cache for Redis caches data and sessions, while Azure Application
    Insights monitors the CMS app for issues and performance.

### Finance management apps using Azure Database for PostgreSQL Flexible Server

-   [Finance management apps using Azure Database for PostgreSQL
    Flexible Server:] This architecture demonstrates a three-tier app,
    coupled with advanced analytics served by Power BI. Tier-3 clients,
    like mobile applications, access tier-2 APIs, which reference tier-1
    Azure Database for PostgreSQL Flexible Server. To offer additional
    value, [Power BI] accesses Azure Database for PostgreSQL Flexible
    Server (possibly read replicas) through its PostgreSQL connector.

### Intelligent apps using Azure Database for PostgreSQL Flexible Server

-   [Intelligent apps using Azure Database for PostgreSQL Flexible
    Server:] This solution demonstrates an innovative app that utilizes
    serverless computing (Azure Function Apps), machine learning (Azure
    Machine Learning Studio & Cognitive Services APIs), Azure Database
    for PostgreSQL Flexible Server, and Power BI.

### Gaming using Azure Database for PostgreSQL Flexible Server

-   [Gaming using Azure Database for PostgreSQL Flexible Server:] This
    architecture demonstrates how to develop apps that must process API
    requests at scale, such as gaming backends.
-   The architecture utilizes:
    -   Azure Traffic Manager to geographically distribute traffic.
    -   Azure API Management to provide rate limiting.
    -   Azure App Service to host gaming APIs and Azure Database for
        PostgreSQL Flexible Server. Firms can perform analysis on gaming
        data in Azure Database for PostgreSQL Flexible Server using
        Azure HDInsight.
    -   Power BI to visualize the data.

### Retail and e-commerce using Azure PostgreSQL

-   [Retail and e-commerce using Azure PostgreSQL:] This application
    architecture focuses on processing transactions quickly and creating
    tailored customer experiences. It consists of Azure App Service,
    Azure Database for PostgreSQL Flexible Server (for storing product
    and session information), and Azure Search (for full-text search
    capability).

### Scalable web and mobile applications using Azure Database for PostgreSQL Flexible Server

-   [Scalable web and mobile applications using Azure Database for
    PostgreSQL Flexible Server:] This generic architecture utilizes the
    scaling capabilities (vertical and horizontal) of Azure App Service
    and PostgreSQL Flexible Server.

## 12 / Summary

Many customers have built scalable resilient architectures using Azure
Database for PostgreSQL Flexible Server. Developers can build basic
two-tier and three-tier architectures to more advanced container-based
and event-driven PostgreSQL based architectures.

At the very core, an application will consume CPU, memory, disk and
network. Finding the right target hosting platform while balancing costs
is a vital skill. Developers should leverage the examples provided
throughout this guide to accelerate their learning and adoption journey.

### Checklist

-   Reference architectures can provide ideas on how to use a product.
    Start to learn from successful deployments.
-   Utilize the knowledge others have to build your own applications.
-   Implement common proven patterns in your architectures.

# 13 / Customer stories

Azure Database for PostgreSQL Flexible Server is used by customers world
wide, and many have shared their stories on the [Microsoft Customer
Stories portal].

## Case studies

The following are a set of case studies from the Microsoft Customer
Stories page focused on the usage of Azure Database for PostgreSQL
Flexible Server.

### Minecraft

![This image shows the Minecraft logo.]

Minecraft migrated from AWS Aurora to Azure Database for PostgreSQL
Flexible Server for its Realms service to improve performance and reduce
costs. Minecraft moved over 1 TB of data, distributed across 13
databases, serving over 6k requests per second during the migration.
Minecraft utilized the Azure Database Migration Service six-month free
offer to save costs.

Minecraft also migrated its frontend servers to Azure to take advantage
of Azure's global footprint. This migration also improved developer
productivity through smaller code footprints and simpler deployments.

![This image demonstrates the Minecraft Realms service running in Azure,
accessing Azure Database for PostgreSQL Flexible Server.]

### Automobile Retail

The retailer ran PostgreSQL database on Red Hat Enterprise Linux with a
Java Spring Boot application on the backend and a Vue.js on the
frontend. The environment did not have the capability to scale up and
down as needed to cope with this fluctuation in the market, and 30% of
its resources were underutilized. As a result, the retailer was
overpaying and unnecessarily bleeding valuable capital.

The PostgreSQL database was modernized with Azure Database for
PostgreSQL Flexible Server with a read replica to support the reporting
needs of the business.

### Linked Brain

![This image shows the LinkedBrain logo.]

In November 2019, a Microsoft gaming industry representative visited
[Linked Brain] to explain Microsoft Azure services and FastTrack for
Azure. Features fitted perfectly with Linked Brain's goal of building
game systems with PaaS, and the company decided to officially adopt
Microsoft Azure.

We learned Flexible Server could scale up and down without stoppages,
offer backup capabilities, and deliver I/O capacity proportionate to
storage size, making it easy to boost performance as data accumulates.
Azure also offers regional disaster recovery as a standard benefit---an
option which requires another instance fee on Amazon RDS."

### T-Systems

![This image shows the T-Systems logo.]

In the Internet of Things (IoT) age, organizations must share
proprietary data quickly while maintaining control, security, and
compliance. [T-Systems], a Deutsche Telekom division, worked with expert
partner Ultra Tendency to meet that need, using Microsoft Azure and
Azure Database for PostgreSQL Flexible Server to help create the Telekom
Data Intelligence Hub, a data marketplace for data sharing that includes
built-in analytics tools.

"We were looking for managed database solutions," says Robert Neumann,
Chief Executive Officer at Ultra Tendency. "With Azure database
services, we wouldn't have to manage uptime, backup, and recovery
scenarios, and we could make the platform faster and more reliable."

The execution layer of Data Intelligence Hub runs entirely on Azure
database services, using the Azure Database for PostgreSQL Flexible
Server and Azure Database for PostgreSQL Flexible Server services to
support data availability without having to maintain a database
operations infrastructure.

### Children's Mercy Hospital

![This image shows the logo of Children's Mercy Kansas City.]

[Children's Mercy Kansas City], an award-winning hospital and research
institute, manages one of the leading genome sequencing centers in the
United States. To better support researchers, Children's Mercy is
working with Microsoft and Pacific Biosciences to create a scalable,
sharable, cloud-based data hub for vital research into pediatric
diseases, built on Microsoft Genomics and Azure. It's already garnering
praise from the genomics research community and has the potential to
accelerate vital clinical care for children.

The hospital and research institute had an existing relationship with
Microsoft, so when researchers saw sequencing data begin to push toward
the CMRI datacenter's storage limits, the organization chose to support
its genomic data platform with Microsoft Genomics, Azure Database for
PostgreSQL Flexible Server, and Azure infrastructure as a service (IaaS)
resources.

### GeekWire

![This image shows the GeekWire logo.]

Based in Seattle, Washington, [GeekWire] is a rapidly growing technology
news site with a global readership. In addition to covering the latest
innovation, GeekWire serves the Pacific Northwest tech community with
events, a job board, startup resources, a weekly radio show, and more.
As its popularity and site traffic increased, so did performance
concerns. To gain better scalability and performance, GeekWire decided
to migrate its WordPress site to the Microsoft Azure platform. By taking
advantage of fully managed services like Azure Database for PostgreSQL
Flexible Server, the company can scale on-demand while cutting costs 45
percent.

## Common PostgreSQL Apps

This section documents common PostgreSQL-based products and their
third-party implementations that organizations operate on Azure.

### 3rd party Azure solutions / Azure Marketplace

The [Azure Marketplace] provides thousands of certified apps on Azure
tailored to meet customer needs. Many of these apps utilize Azure
Database for PostgreSQL Flexible Server.

#### CMS like WordPress

The WordPress CMS, based on PHP and PostgreSQL, is the most popular CMS,
powering millions of web-scale sites and offering a variety of
extensions. There are multiple WordPress offerings in the Azure
Marketplace, such as [one from WordPress], which utilizes App Service
and VMs.

#### LMS like Moodle

The Moodle LMS supports thousands of educational institutions and
organizations, numbering 213 million users as of June 2020. There are a
plethora of Azure Marketplace Moodle offerings; [this offering] uses
Azure Database for PostgreSQL Flexible Server for its persistence layer.

#### e-commerce like Magento

Magento is a powerful e-commerce and marketing platform suitable for
small and large businesses. There are multiple implementations available
on the Azure Marketplace, including [this offering][79] that provides a
Helm chart for a Kubernetes deployment.

## 13 / Summary

Similar to the reference architecture, case studies provide a view into
how other organizations are building applications using PostgreSQL that
could be appropriate and similar to how a developer may be thinking of
building their own application. Although they may not go into as much
depth as reference architectures, they certainly provide a means of
generating ideas.

### Checklist

-   Understand the most common uses of a product.
-   Reference customers' architecture.
-   Justify and validate your use cases based on the use case studies.
-   Attend conferences to learn how others are using the product(s).

# 14 / Zero to Hero

We have reached the end of the guide. You have the content and tutorials
to assess your application and database evolution the target needs. Take
a moment to determine the required steps to move your application
architecture to the next evolutionary level. Architecture modernization
and operational monitoring are an iterative processes and we hope you
refer to this guide often.

## Determining the evolutionary waypoint

In module 4, we explored a series of progressions from classic
development and deployment to current modern development and deployment
methods. As a review, bre sure to reference this information to find
your waypoint.

## Summary of tasks

-   Have the right tools available.
-   Determine how best to deploy the application.
-   Utilize code repositories with CI/CD enabled.
-   Ensure the target environment is configured to support the
    workload(s).
-   Secure the application configurations.
-   Secure the database configurations.
-   Secure the virtual networks.
-   Monitor the applications and database workloads for performance.
-   Perform regular testing.
-   Ensure up policies and procedures are setup and configured for
    auditing application and database workloads.
-   Setup backup and restore based on RTO and RPO objectives.
-   Be familiar with potential issues, how to troubleshoot, and
    remediate them.

## 14 / Final Summary

This guide was designed to provide insightful and rich sets of
information on how to get started with developing applications with
Azure Database for PostgreSQL Flexible Server. After reading through all
the sections, a developer will have nurtured a foundation for how to get
set up with the right tools and how to make decisions on target
deployment models. This guide provided several sample architectures,
deployment models and real-world customer references of using Azure
Database for PostgreSQL Flexible Server that can be referenced in
platform selection decisions.

As a final note, although there are several options for hosting
PostgreSQL in Azure, the recommended and preferred method is to utilize
Azure Database for PostgreSQL Flexible Server for its rich set of
features and flexibility.

## Resources

### Call to Action

Thanks for downloading and reading this Azure Database for PostgreSQL
Flexible Server developer guide. We encourage to to continue your
learning by reviewing the following links to documentation pages and
creating a free azure account to practice with.

-   [Review homepage]
-   [Documentation][80]
-   [Tutorial]
-   [Get started for free with an Azure free account!]
-   [Azure Pricing Calculator, TCO Calculator]
-   [Migrate your workloads to Azure DB for PostgreSQL]

### Stay tuned for latest updates and announcements

-   [What's new in Flexible Server?]
-   [Tech Community Blog]

### Follow Azure Database for PostgreSQL Flexible Server on social platforms

-   [Twitter]
-   [LinkedIn]
-   Email the Azure Database for PostgreSQL Flexible Server team at
    AskAzureDBforPostgreSQL@service.microsoft.com

### Find a partner to assist in migrating

This guide introduced and covered several advanced development and
deployment concepts that may be new to you or your organization. If at
anypoint you need help there are many experts in the community with a
proven migration and modernization track record.

Feel free to [search for a Microsoft Partner] or [Microsoft MVP] to help
with finding the most appropriate migration strategy.

Browse the technical forums and social groups for more detailed
real-world information:

-   [Microsoft Community Forum]
-   [StackOverflow for Azure PostgreSQL]
-   [Azure Facebook Group]
-   [LinkedIn Azure Group]
-   [LinkedIn Azure Developers Group]

# Appendix

TODO

# Getting Started

1.  Clone the [whitepaper GitHub repository] to the development machine.

2.  Install the [PowerShell Azure module][installation document.] if not
    already installed.

    > [PowerShell Core] is a cross-platform tool that is useful for
    > managing Azure resources through the `Az` module.

    > Try the `-AllowClobber` flag if the install does not succeed.

3.  Utilize the `Connect-AzAccount` to interactively authenticate the
    Azure PowerShell environment with Azure.

## Create a Lab Resource Group

1.  Use Azure PowerShell to create a new resource group. Substitute the
    `rgName` and `location` parameters with the name of the resource
    group and its location, respectively.

    ``` powershell
    $rgName = ""
    $location = ""
    New-AzResourceGroup -Name $rgName -Location $location
    ```

## Deploy the ARM Template

1.  There are two ARM templates provided with the whitepaper.

    -   The secure deployment uses private endpoints to securely access
        the PostgreSQL database instances through private IP addresses.
        It costs roughly ... per month.
    -   The standard deployment routes traffic to the PostgreSQL
        instances over the public internet. It costs roughly ... per
        month.

2.  If deploying the [secure ARM template] (`template-secure.json`),
    edit the associated [parameters file]
    (`template-secure.parameters.json`).

    -   The `prefix` specifies a unique identifier for Azure resources
    -   The `administratorLogin` specifies the login for the Azure
        resources (such as PostgreSQL and the VM)
    -   The `administratorLoginPassword` specifies the password for the
        deployed Azure resources
    -   The `location` set to an Azure environment closest to the users

3.  If deploying the [insecure ARM template] (`template.json`), edit the
    associated [parameters file][81] (`template.parameters.json`).

    -   The `uniqueSuffix` specifies a unique identifier for Azure
        resources
    -   The `administratorLogin` specifies the login for the Azure
        resources (such as PostgreSQL and the VM)
    -   The `administratorLoginPassword` specifies the password for the
        deployed Azure resources
    -   The `vmSize` specifies the VM tier
    -   The `dnsPrefix` specifies the DNS prefix for the load balancer
        public IP address

    > NOTE: Because of some automation account mapping settings, these
    > templates are designed to only be deployed to `eastus2`, `eastus`,
    > `southcentralus`, `westcentralus`, `westus2`, `westus`,
    > `northcentralus`

4.  If deploying the secure ARM template, issue the following command
    from the repository root.

    ``` powershell
    cd "C:\labfiles\microsoft-postgres-docs-project"

    New-AzResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile .\artifacts\template-secure.json -TemplateParameterFile .\artifacts\template-secure.parameters.json
    ```

    Use `template.json` and `template.parameters.json` for the insecure
    ARM template deployment.

## Running the sample application

Instead of learning multiple sample applications, the guide focused on
evolving deployment strategies. Readers should learn the sample
application structure once and focus on how the application will need to
be modified to fit the deployment model.

### Site map

![This image shows the sample app site map.]

### Sample Application Prerequisites

-   Azure subscription
-   Git
-   pgAdmin

### Quick start: manual Azure set up instructions

As part of this guide, there are environment automation setup scripts
provided that will build and configure much of the environment needed
for the sample application. It is important to understand the basic
Azure **concepts** before running the automated scripts. Walking through
each step will help provide additional context and learning
opportunities. The scripts will create an environment in a few minutes
rather than requiring to walk through lengthy setup exercises.

> ![Note icon][Note] **Note:** The sample application was tested with
> PHP version 7.4 and 8.0. Deploying to an 8.x environment requires a
> slightly different configuration as the underlying web server has
> changed.

  PHP Version   Web Server
  ------------- ------------
  7.4           Apache
  8.0           Nginx

The Azure App Service uses this [Docker image][82] for its 8.0 container
builds.

> ![Warning] **Warning**: Outdated runtimes are periodically removed
> from the Web Apps Create and Configuration blades in the Portal. These
> runtimes are hidden from the Portal when they are deprecated by the
> maintaining organization or found to have significant vulnerabilities.
> These options are hidden to guide customers to the latest runtimes
> where they will be the most successful. Older Azure App Service Docker
> images can be found [here][83].

### Sample application deployment steps

**Deploying to PHP 8.0**

The deployment strategy applied in this sample application focuses on
updating project environment variables instead of global environment
variable configuration.

1.  Log into the Azure Portal.

2.  Search for Marketplace.

3.  While in the Marketplace, search for and create Azure Web App +
    Database resources in the Marketplace.

    -   Select the Marketplace button.

        ![Displays the Marketplace button.]

    -   Enter `Web App + Database` in the search box.

    -   Select the Microsoft Web App + Database search result.

        ![Web app + database search result.]

4.  Create a web application and database.

    ![Create web app database.]

    -   Choose the subscription.

    -   Create a new resource group

    -   Choose a region.

    -   Create a unique web app name.

    -   Select the runtime stack. The web app is only tested with PHP
        8.0.

    -   Create the resources.

5.  After the resources have been deployed, locate the App Service in
    the Resource Group.

    -   Select the **Deployment Center** and capture the configuration
        settings.

    -   In the Settings tab, choose Local Git.

    ![App Service repository options.]

    -   Select **Save** at the top.

    > ![Note icon][Note] **Note:** Alternative Azure CLI command:

    ``` cmd
    az webapp deployment source config-local-git --name <app-name> --resource-group <group-name>
    ```

    -   Capture the **Git Clone Uri**. Later exercises will be pushing
        the application files to the Azure App Service local storage
        from the development machine.

        ![Local Git URL example]

    -   Capture the Application Scope user and password to be used
        later. Make sure to capture only the user name.

        ![Application Scope user and password]

6.  Clone the sample **ContosoNoshNow** application to the local
    development machine from the Microsoft Git repository:

TODO: Get the MS repo.

-   Open the command prompt or terminal on the development machine.

-   Type the following commands individually to configure the remote
    repo connection. Review the output:

    ``` cmd
    git remote add azure <Azure App Service Git Clone URL>
    git remote -v
    git push azure master
    ```

-   When pushing content to the Azure App Service, the systems will
    prompt for the Local Git credentials. Enter the Application Scope
    credentials.

    ![Git Credential Manager]

    If you make a mistake entering the credentials, you will have to
    open Credential Manager to update the credentials.

-   The following output should display in the command window:

    ![Azure local git push example.]

5.  Return to the Azure Portal. Navigate to the App Service. Find the
    **Deployment Tools** section. Log into App Service SSH terminal.

    ![This image shows how to access the App Service SSH prompt from the
    Azure portal.]

6.  Verify the sample application files have been copied into the
    wwwroot directory.

    ``` bash
    cd /home/site/wwwroot
    ls -la
    ```

7.  Run the Composer update command in the wwwroot directory, which will
    import the packages and create the vendor folder, along with the
    autoload script (../vendor/autoload.php).

    ``` bash
    cp /home/site/repository/.env.example.azure /home/site/wwwroot/.env
    composer.phar update
    ```

8.  Generate Laravel application key. This command will update the
    **.env** file.

    ``` bash
    php artisan key:generate
    ```

9.  Update the **APP_URL** parameter in the .env file with the Azure App
    Service URL and save the changes.

    ``` bash
     nano /home/site/wwwroot/.env
    ```

    ![Update APP_URL value]

10. Copy the Nginx default to the home default. By default, App Service
    set WEBSITES_ENABLE_APP_SERVICE_STORAGE = true. Files stored in
    /home path are persisted in an Azure Storage file share, which can
    survive restart and shared across scale instances. So we need to
    save your own Nginx configure file under /home path.

    ``` bash
    cp /etc/nginx/sites-enabled/default /home/default
    ```

11. Update the Nginx home default.

    ``` bash
    nano /home/default
    ```

    -   absolute_redirect off
    -   root /home/site/wwwroot/public
    -   try_files \$uri $uri/ /index.php$is_args\$args;

    ![This image shows the needed modifications to the /home/default
    file.]

12. Restart the service.

    ``` bash
    service nginx restart
    ```

13. Your configuration needs to survive an App Service restart. Update
    the App Service Startup Command.

    -   Navigate to the **Settings** section.
    -   Select **Configuration**.
    -   Select the **General settings**.
    -   Enter the following command in the **Startup Command**:

    ``` bash
    cp /home/default /etc/nginx/sites-enabled/default; service nginx restart
    ```

    ![This image shows how to configure the App Service startup command
    in the Azure portal.]

14. Open a browser and view the application.

    ![ContosoNoshNow home page]

> ![Note icon][Note] **Note:** Notice the message in red at the bottom
> of the web page. "Site is unable to pull from database. Using JSON
> data instead."

## Connecting to the database

The application should now be available and show some sample data,
however the web application is not reading or writing to the database.
Let's go through the steps to configure the database configuration
information.

1.  Capture the database connection information. Open the Azure CLI
    Cloud Shell and run this command.

    ``` cmd
    az webapp deployment list-publishing-profiles --resource-group <resource group name> --name <app service name>
    ```

2.  Capture the following connection values:

    -   Host/Server
    -   User ID
    -   Password

    > ![Note icon][Note] **Note:** For production environments, values
    > will be retrieved from Azure Key Vault.

3.  Using the Azure Portal, navigate to the Flexible Server in the
    resource group and create the `contosonoshnow` database.

    ![This image shows how to create the contosonoshnow database in the
    new Flexible Server instance.]

    > ![Note icon][Note] **Note:** It is possible to execute alternative
    > commands in the App Service SSL terminal to create the database.
    > See the alternative commands below.

    Alternative commands:

    ``` bash
    PostgreSQL --host=<hostname>-server.postgres.database.azure.com --user=<user name> --password=<password> --ssl=true
    ```

    ``` sql
    CREATE DATABASE contosonoshnow
    ```

    ``` bash
    exit
    ```

4.  With the database connection information in hand, open the App
    Service SSH console and configure the **.env** project file.

    ``` bash
    nano /home/site/wwwroot/.env
    ```

    ![Configure the database environment variables.]

    Update the following environment variables:

    -   DB_HOST
    -   DB_DATABASE
    -   DB_USERNAME
    -   DB_PASSWORD

5.  Run the `php artisan migrate` command to create the tables in the
    contosonoshnow database.

    ``` bash
    php artisan migrate
    ```

    ![This image shows how to create PHP migrations.]

6.  Run the `php artisan db:seed` command to seed the database with
    sample data values.

    ``` bash
    php artisan db:seed
    ```

    ![Seeded database.]

    -   Using pgAdmin, verify the tables have the seed data.

7.  Navigate back to the web app and enter a sample order.

    ![This image shows how to create a sample order from the Laravel
    app.]

8.  Using pgAdmin, verify the order was saved to the Flexible Server
    database.

    ![This image shows the output of a SQL query that demonstrates the
    new order.]

### What happens to my app during an Azure deployment?

All the officially supported deployment methods make changes to the
files in the /home/site/wwwroot folder of the app. These files are used
to run the application. The web framework of choice may use a
subdirectory as the site root. For example, Laravel, uses the public/
subdirectory as the site root.

The environment variable could be set globally or at the project level.
Setting the environment variables at the project level, when possible,
allows for deployment independence and reduces the likelihood of
dependency collision.

### Troubleshooting tips

-   Select the App Service in the Azure Portal. In the **Monitoring**
    section, select **Log Stream**.
-   [Troubleshoot connection issues to Azure Database for PostgreSQL
    Flexible Server]
-   Running `php -i` at the Azure App Service SSH console will provide
    valuable configuration information.
-   Azure App Service 8.0 php.ini location -
    `cat /usr/local/etc/php/php.ini-production`
-   [Configure a PHP app for Azure App Service - Access diagnostic logs]
-   [Deploying a Laravel application to Nginx server.]
-   [Local Git deployment to Azure App Service]

## Recommended content

-   [How PHP apps are detected and built.]

## Deploying a Laravel app backed by a Java REST API to AKS

### Evolve the sample application

In the previous stages of this developer guide, an MVC app was deployed
on an Azure VM, containerized, and then hosted on various PaaS services
(e.g. Azure Container Instances, App Service, AKS). The second sample
app provided with this developer guide delegates database access
operations (Flexible Server queries) to a Java REST API. The Laravel app
calls the REST API.

One of the advantages of this microservices architecture is that the
Java API and the Laravel app can be scaled independently. Both
deployments have high availability. Moreover, though this exercise does
not demonstrate how to configure CI/CD for this app, but can apply the
same techniques learned previously.

We recommend creating a new resource group for this exercise.

``` bash
az group create -n [RESOURCE GROUP NAME] -l [AZURE REGION]
```

### Download the tools

To complete this document, install the following tools on the
development machine:

-   Azure CLI
-   [Apache Maven:] This tool manages the build processes for the Java
    API. Add the Maven executable to the system's PATH variable for
    simpler usage.
-   [Docker Desktop:] Docker Desktop provides an intuitive management
    interface for the Docker service. This guide uses the Docker CLI to
    create Docker images.
-   [kubectl:] kubectl is a useful management tool for Kubernetes
    clusters. Install it from the Azure CLI through
    `az aks install-cli`.

### Provision the database

Navigate to `.\java-api\Database` from a PowerShell terminal instance.
Then, execute the `create-database.ps1` script, passing the parameters
in the order shown below. The command will provision a new Flexible
Server instance with the app database schema.

-   Provide a unique `Suffix` to ensure that the Flexible Server
    instance's name is unique
-   Provide a strong `Password` for the database admin user (`AppAdmin`)
-   Provide the name of the lab `Resource Group`
-   Provide the desired `Location` for the Azure resources

``` powershell
.\create-database.ps1 'Suffix' 'Password' 'Resource Group' 'Location'
```

The Flexible Server instance will have 1 vCore, 2 GiB memory, 32 GiB
storage, and it will allow all clients to access it. Note that this is
not recommended for production scenarios; access can be limited to
target Azure resources through the Azure portal or other management
tools.

> Consult the [Microsoft documentation][84] for information on how to
> configure private access for PostgreSQL Flexible Server from Azure
> Kubernetes Service. This example uses public access for simplicity.

### Create Docker images

#### API

Navigate to the `.\java-api` directory and enter the following command
to create an optimized Docker image. Note that Maven does not need a
Dockerfile to create this image, called `noshnowapi:0.0.1-SNAPSHOT`.

``` powershell
mvn spring-boot:build-image
```

#### Laravel

Navigate to the `.\sample-php-app-rest` directory. Create a file called
`.env`. Set `APP_KEY=` as the first line in the file. Then, run
`php artisan key:generate` to create an application key in the `.env`
file.

``` txt
APP_KEY=[ARTISAN APPLICATION KEY]
```

Now, in the same directory, enter the following command to create a
Docker image to serve the PHP frontend app through Apache.

``` powershell
docker image build -t noshnowui:0.0.1 .
```

### Provision Azure Kubernetes Service

Navigate to `.\java-api\Kubernetes` from a PowerShell terminal instance.
Then, execute the `create-azure-resources.ps1` script, using the same
parameters as the prior script. The command will provision Azure
Container Registry and push the two Docker images; provision a new Azure
Kubernetes Service cluster and provide it access to ACR; create the
`contosonoshnow` namespace within the Kubernetes cluster.

``` powershell
.\create-azure-resources.ps1 'Suffix' 'Resource Group' 'Location'
```

Note that if the resources are deployed to an Azure region that supports
Availability Zones, the script will co-locate the Flexible Server
instance and the Kubernetes cluster.

### Deploy the API to Azure Kubernetes Service

#### Create the API Secret

Open the `api.secrets.yml` file in the `Kubernetes` directory. This file
contains the base64-encoded password for the application user. Besides
the administrative user, the database schema setup script created a
less-privileged app user.

Run the command below from the `Kubernetes` directory to create the
password secret:

``` powershell
kubectl apply -f api.secrets.yml
```

#### Create the API Service

`api.service.yml` defines a Service that directs all traffic received
from within the cluster on port 8080 to the pods that serve the Java
API. Note that the API service is only accessible from within the
cluster.

``` powershell
kubectl apply -f api.service.yml
```

#### Create the API Deployment

`api.deployment.yml` defines a deployment with two pods, created from
the Java API image pushed to ACR.

Open the file. Replace the two `[SUFFIX]` placeholders with the values
used when provisioning the Azure resources. Then, execute the command
below:

``` powershell
kubectl apply -f api.deployment.yml
```

Congratulations. The API to Azure Kubernetes Service is now deployed and
exposed internally through a Service.

### Deploy the Laravel app to Azure Kubernetes Service

#### Create the Laravel app Service

Navigate to `.\sample-php-app-rest\Kubernetes`. Create a service to
expose the Laravel app through a public IP address (in this case,
through a Load Balancer provisioned in Azure).

``` powershell
kubectl apply -f web.service.yml
```

#### Create the Laravel app Deployment

The deployment specified in the `web.deployment.yml` file (in the same
directory as the previous step) creates two pods from the Laravel app
image pushed to ACR.

Again, replace the `[SUFFIX]` placeholder in the file. Then, create the
deployment.

``` powershell
kubectl apply -f web.deployment.yml
```

### Browse to the app

Run `kubectl get svc` to get the public IP address of
`laravel-ui-service`. Copy the `EXTERNAL-IP` value to a browser window.

![This image demonstrates the IP address of the LoadBalancer service for
the Laravel app.]

If all functions correctly, the user details for a random user will be
displayed.

![This image demonstrates that the Laravel app functions without a
problem when deployed to AKS.]

# Classic Deployment to PHP enabled IIS server

This is a simple app that runs PHP code to connect to a PostgreSQL
database. These tasks will be performed on the **paw-1** virtual machine
that was deployed via the ARM template.

## Database Deployment

1.  On the **paw-1** virtual machine, open a Windows PowerShell window

2.  Run the following commands to create the database (type `yes` when
    prompted). Note that the repo should be cloned to the `c:\labfiles`
    directory:

    ``` powershell
    cd C:\labfiles\microsoft-postgresql-developer-guide\artifacts\sample-php-app

    composer update 

    copy .env.example.root .env

    php artisan config:clear

    php artisan migrate

    php artisan db:seed

    php artisan key:generate
    ```

3.  Several tables should get created and will be populated with sample
    data:

    ![This screen shot shows the results of the above commands.]

## Test the PHP Setup

1.  In the **paw-1** virtual machine, open a chrome browser window
2.  Navigate to `http://localhost:8080/default.php`, **Hello World**
    should be displayed.
3.  Navigate to `http://localhost:8080/database.php`, **12 results**
    should be displayed.

## Test the Store Application

1.  Open a chrome browser window

2.  Navigate to `http://localhost:8080`, the store front will load with
    a random user.

    ![This image demonstrates the loading screen for the Contoso NoshNow
    app.]

## Manual Deployment

The above resources were deployed as part of the ARM template and
supporting scripts. In order to setup a developer machine manually, do
the following:

### Windows Setup

1.  Install Composer
2.  Install OpenSSL
3.  Install Docker Desktop
4.  Install Visual Studio Code
5.  Install 7Zip
6.  Install IIS
7.  Install the WebPI extensions
8.  Install PHP Extensions
9.  Install PHP 8.x
10. Configure PHP 8.x
11. Copy the web application files to the `c:\inetpub\wwwroot` folder
12. Create an IIS web application that points to the web app directory
13. Install PostgreSQL and create the `contosostore` database

### Linux Setup

1.  Update the operating system
2.  Install nginx
3.  Install PHP 8.x
4.  Install Composer
5.  Install OpenSSL
6.  Install Docker
7.  Install PHP Extensions (PostgreSQL, mbstring, xml, bcmath, etc)
8.  Configure PHP 8.0
9.  Copy the web application files to the
    `/var/www/mydomain/htdocs/public` folder
10. Update the nginx conf file for redirects
11. Install PostgreSQL and create the `contosostore` database

# Cloud Deployment to Azure VM

This is a simple app that runs PHP code to connect to a PostgreSQL
database.

The app is running in an Azure VM and the App needs to be exposed to the
internet via port 80 in order results to display.

## Test the Application #1

1.  Open a browser to the Azure Portal

2.  Navigate to the **paw-1** virtual machine

3.  In the **Essentials** section, copy the public IP Address

    ![This image demonstrates the VM IP address in the Overview tab.]

4.  Open a browser to the virtual machine ip address (ex
    `http:\\IP_ADDRESS:8080`)

5.  A **ERR_CONNECTION_TIMED_OUT** error should occur. This is because
    the network security group on the virtual machine does not allow
    port 8080 access.

## Open Port 8080

1.  Navigate to the **Paw-1** machine, select it

2.  Under **Settings**, select **Networking**

3.  Select **Add inbound port rule**

4.  For the destination port, type **8080**

5.  For the name, type **Port_8080**

6.  Select **Add**

    ![This image demonstrates the added inbound security rule.]

## Test the Application #2

1.  Retry connecting to the web application (ex
    `http:\\IP_ADDRESS:8080`), notice another timeout error

2.  Switch back to the **paw-1** machine, run the following PowerShell
    command:

    ``` powershell
    New-NetFirewallRule -DisplayName 'Port 8080' -Direction Inbound -Action Allow -Protocol TCP -LocalPort 8080
    ```

3.  The application should load

4.  Open a browser to the virtual machine ip address (ex
    `http:\\IP_ADDRESS:8080`)

5.  The results should be displayed, but some files will not be download

## Edit .env file

1.  Open the
    `c:\labfiles\microsoft-postgres-developer-guide\artifacts\sample-php-app\.env`
    file
2.  Edit the `APP_URL` to the `IP_ADDRESS` of the virtual machine and
    remove the port `8080`.\
3.  Change the http protocol to `https` in order to properly load the
    application over SSL.
4.  Save the file, refresh the browser window

## Enable Port 443

As part of any secured web application, SSL/TLS should be enabled.

1.  Create a certificate on web machine by running the following command
    in PowerShell:

    ``` powershell
    New-SelfSignedCertificate -FriendlyName ContosoNow -DnsName ContosoNow -CertStoreLocation Cert:\LocalMachine\My -KeyUsage DigitalSignature
    ```

2.  Set the certificate on the site:

    -   Open Internet Information Services (IIS) Manager

    -   Select the server node

    -   Select **Server certificates**

        ![This image demonstrates the Server Certificates tab in IIS
        Manager.]

3.  Setup SSL

    -   Expand the **Sites** node
    -   Select the **contosostore** web site
    -   In the actions, select **Bindings**
    -   Select **Add**
    -   For the type, select **https**
    -   For the SSL certificate, select **ContosoNow**
    -   Select **OK**

    ![This image demonstrates an HTTPS binding in IIS.]

## Open Port 443

1.  In the Azure Portal, navigate to the **Paw-1** machine, select it
2.  Under **Settings**, select **Networking**
3.  Select **Add inbound port rule**
4.  For the destination port, type **443**
5.  For the name, type **Port_443**
6.  Select **Add**

## Test the Application #3

1.  Retry connecting to the web application (ex
    `https:\\IP_ADDRESS:443`), an error should occur.

2.  Switch back to the **paw-1** machine, run the following PowerShell:

    ``` powershell
    New-NetFirewallRule -DisplayName 'Port 443' -Direction Inbound -Action Allow -Protocol TCP -LocalPort 443
    ```

3.  Select the **Advanced** button

4.  Select **Proceed to IP_ADDRESS (unsafe)**

5.  The application should load

6.  Open a browser to the virtual machine ip address (ex
    `https:\\IP_ADDRESS:443`)

7.  The results should display

# Cloud Deployment to Azure App Service

This is a simple app that runs PHP code to connect to a PostgreSQL
database. The application and database must be migrated to Azure App
Service and Azure Database for PostgreSQL Flexible Server.

## Basic Deployment

### Update env

1.  Open the `C:\labfiles\microsoft-postgresql-developer-guide` folder
    in Visual Studio code
2.  If prompted, select **Yes, I trust the authors**
3.  Switch to the browser, browse to the **pgsqldevSUFFIX** app service
4.  Select the **Overview** link, copy the **URL** for use later

### Deploy the Application

1.  Switch to the **Paw-1** virtual machine remote desktop.

2.  Open a terminal window, run the following to deploy the zip to
    Azure, be sure to replace the `SUFFIX`:

    > NOTE: The virtual machine is running under a Managed Identity with
    > `owner` access to the resource group.

    ``` powershell
    cd "C:\labfiles\microsoft-postgresql-developer-guide"

    Connect-AzAccount -identity

    $resourceGroups = Get-AzResourceGroup

    $resourceGroupName = $resourceGroups[0].ResourceGroupName
    $suffix = $resourceGroups[0].tags['Suffix']

    $appName = "pgsqldev$($suffix)linux";
    $app = Get-AzWebApp -ResourceGroupName $resourceGroupName -Name $appName

    #NOTE: This can't be used this for linux based deployments
    #Compress-Archive -Path .\sample-php-app\* -DestinationPath site.zip -force

    7z a -r ./site.zip ./sample-php-app/*

    #Publish-AzWebApp -WebApp $app -ArchivePath "C:\labfiles\microsoft-postgresql-developer-guide\site.zip" -force

    #Reference - https://docs.microsoft.com/azure/app-service/deploy-local-git?tabs=cli

    az login --scope https://management.core.windows.net//.default --identity

    #setup local git
    az webapp deployment source config-local-git --name $appName --resource-group $resourceGroupName;

    #set the username and password
    az webapp deployment user set --user-name "pgsqldev$suffix" --password "Solliance123";

    #get the github link to the azure app service
    #$url = az webapp deployment list-publishing-profiles --resource-group $resourceGroupName --name $appName

    $url = az webapp deployment list-publishing-credentials --resource-group $resourceGroupName --name $appName --query scmUri
    $url = $url.replace("`"","") + "/$appName.git"

    az webapp config appsettings set --name $appName --resource-group $resourceGroupName --settings DEPLOYMENT_BRANCH='main'

    #setup git
    git config --global user.email "you@example.com"
    git config --global user.name "Your Name"
    git config --global http.postBuffer 524288000

    #do the deployment
    cd "C:\labfiles\microsoft-postgresql-developer-guide"

    #remove current git setup
    remove-item .git -force -Recurse

    cd "C:\labfiles\microsoft-postgresql-developer-guide\sample-php-app"

    #remove current git setup
    remove-item .git -force -Recurse

    git init
    git remote rm origin
    git remote rm azure
    git add .
    git commit -m "init commit"
    git remote add azure $url
    git branch -m azure main
    git pull --allow-unrelated-histories
    git push -u azure main

    #only works with 7.4 PHP / Apache
    #az webapp deploy --resource-group $resourceGroupName --name $appName --src-path "C:\labfiles\microsoft-postgresql-developer-guide\site.zip" --type zip
    ```

### Update Application Settings

1.  Switch to the Azure Portal, browse to the **pgsqldevSUFFIXlinux**
    app service

2.  Under **Development tools**, select **SSH**, then select **Go**

3.  Login using your lab credentials (ex: Azure Entra)

4.  Run the following:

    ``` bash
    cp /etc/nginx/sites-available/default /home/site/default
    ```

5.  Edit the `default` file

    ``` bash
    nano /home/site/default
    ```

6.  Modify the root to be the following:

    ``` bash
    root /home/site/wwwroot/public
    ```

7.  Add the following to the `location` section after the
    `index  index.php index.html index.htm hostingstart.html;` line:

    ``` bash
    try_files $uri $uri/ /index.php?$args;
    ```

    ![This image demonstrates the changes made to the /home/site/default
    file in the SSH session.]

8.  Press **Ctrl-X**, then select **Y** to save the file

9.  Run the following command to add a startup.sh file:

```` bash
 nano /home/site/startup.sh
 ```

11. Copy and paste the following:

 ```bash
 #!/bin/bash

 cp /home/site/default /etc/nginx/sites-available/default
 service nginx reload
 ```

12. Press **Ctrl-X**, then select **Y** to save the file
13. Open the `.env` file in the text editor.

 ```bash
 nano /home/site/wwwroot/.env
 ```

14. Update the `APP_URL` parameter to the App Service URL (found on the **Overview** tab of the Azure portal). Then, set `ASSET_URL` to `APP_URL`.

 ```bash
 APP_URL=https://[APP SERVICE NAME].azurewebsites.net
 ASSET_URL = "${APP_URL}"
 ```

15. Press **Ctrl-X**, then select **Y** to save the file
16. Run the following commands to setup the Larvael application:

 ```powershell
 mkdir /home/site/ext 
 cd /home/site/ext 
 curl -sS https://getcomposer.org/installer | php

 cp /home/site/ext/composer.phar /usr/local/bin/composer

 cd /home/site/wwwroot

 composer.phar update

 php artisan config:clear

 php artisan key:generate
 ```

15. Switch back the Azure Portal and the app service, under **Settings**, select **Configuration**
16. Select **General settings**
17. In the startup command textbox, type `/home/site/startup.sh`
18. Select **Save**, then select **Continue**

### Test the Application

1. Browse to `https://pgsqldevSUFFIX.azurewebsites.net/` to see the app load with SSL

### Add Firewall IP Rule and Azure Access

1. Switch to the Azure Portal
2. Browse to the `pgsqldevSUFFIXflex16` Azure Database for PostgreSQL Flexible Server
3. Under **Settings**, select **Connection security**
4. Select the **Allow access to Azure services** toggle to **Yes**
5. Select **Save**

### Migrate the Database Use the steps in [Migrate your database](./Misc/02_MigrateDatabase) article.

## Update the connection string

1. Use the steps in [Migrate your database](./Misc/02_MigrateDatabase) article.

## Update the connection string

1. Switch to the Azure Portal
2. Browse to the **pgsqldevSUFFIX** web application
3. Under **Development Tools**, select **SSH**
4. Select **Go->**
6. Edit the **/home/site/wwwroot/pubic/database.php**:

 ```bash
 nano /home/site/wwwroot/public/database.php
 ```

7. Set the servername variable to `pgsqldevSUFFIXflex16.postgres.database.azure.com`
8. Set the username to `wsuser`
9. Set the password to `Solliance123`
10. Press **Ctrl-X**, then **Y** to save the file

## Test new settings #1

1. Browse to `https://pgsqldevSUFFIX.azurewebsites.net/database.php`, you should get results, but the connection is not secured over SSL.

## Enable SSL support

1. Download the `https://dl.cacerts.digicert.com/DigiCertGlobalRootCA.crt.pem` certificate by switching back to the SSH window, run the following:

 ```bash
 cd /home/site/wwwroot/public

 wget https://dl.cacerts.digicert.com/DigiCertGlobalRootCA.crt.pem
 ```

3. Edit the `database.php` file

 ```php
 nano /home/site/wwwroot/public/database.php
 ```

4. Update the database connection to use ssl by uncommenting the `sslmode=verify_full` line:

 ```php
 $conn_str .= 'sslmode=verify-full ';
 ```
5. Also uncomment the `sslrootcert` line:

 ```php
 //$conn_str .= 'sslrootcert=/home/site/wwwroot/public/DigiCertGlobalRootCA.crt.pem ';
 ```

6. Press Ctrl-X, then Y to save the file

## Test new settings #2

1. Browse to `https://pgsqldevSUFFIX.azurewebsites.net/database.php`, results should display.

## Update to use Environment Variables

Putting credential in the PHP files is not a best practice, it is better to utilize environment variables for this.

1. Switch back to the SSH window
2. Edit the **/home/site/wwwroot/pubic/database.php**:

 ```bash
 nano /home/site/wwwroot/pubic/database.php
 ```

3. Update the connection variables to the following:

 ```php
 $servername = getenv("APPSETTING_DB_HOST");
 $username = getenv("APPSETTING_DB_USERNAME");
 $password = getenv("APPSETTING_DB_PASSWORD");
 $dbname = getenv("APPSETTING_DB_DATABASE");
 ```

 > **NOTE** Azure App Service adds the `APPSETTING` prefix to all environment variables. You can see this by navigating to the `info.php` page and review the server variables.

4. Edit the **/home/site/wwwroot/config/database.php** (note that this is in the `config` directory):

 ```bash
 nano /home/site/wwwroot/config/database.php
 ```

5. Update the PostgreSQL connection to utilize the environment variables:

 ```php
 'host' => env('APPSETTING_DB_HOST', '127.0.0.1'),
 'port' => env('APPSETTING_DB_PORT', '5432'),
 'database' => env('APPSETTING_DB_DATABASE', 'postgres'),
 'username' => env('APPSETTING_DB_USERNAME', 'postgres'),
 'password' => env('APPSETTING_DB_PASSWORD', ''),
 ```

6. Add the environment variables to the App Service:
- Browse to the Azure Portal
- Select the **pgsqldevSUFFIXlinux** app service
- Under **Settings**, select **Configuration**
- Select **New application setting**
- Add the following:
  - `DB_HOST` = `pgsqldevSUFFIXflex16.postgres.database.azure.com`
  - `DB_USERNAME` = `wsuser`
  - `DB_PASSWORD` = `Solliance123`
  - `DB_DATABASE` = `contosostore`
  - `DB_PORT` = `5432`
  - `APP_URL` = `https://pgsqldevSUFFIXlinux.azurewebsites.net`
 - Select **Save**, then select **Continue**

## Test new settings #3

1. Browse to `https://pgsqldevSUFFIXlinux.azurewebsites.net/database.php`, results should display.

## Create Azure Key Vault values

1. Switch to the Azure Portal
2. Browse to the **pgsqldevSUFFIX-kv** Key Vault
3. Under **Settings** select **Access Policies**
4. Select **Create**
5. For the secret permissions, select **Select all**, then select **Next**
6. For the principal, select the lab guide user account, select **Next**
1. On application, select **Next**
1. Select **Create**
1. Under **Settings**, select **Secrets**
1. Select **Generate/Import**
1. For the name, type **PostgreSQLPassword**
1. For the value, type **Solliance123**
1. Select **Create**

## Create Managed Service Identity

1. Switch to the Azure Portal
2. Browse to the **pgsqldevSUFFIXlinux** app service
3. Under **Settings**, select **Identity**
4. For the system assigned identity, toggle to **On**
5. Select **Save**, in the dialog, select **Yes**
6. Copy the **Object ID** for later user
7. Browse to the **pgsqldevSUFFIX-kv** Key Vault
8. Under **Settings** select **Access Policies**
9. Select **Create**
10. For the secret permission, select **Select all**, then select **Next**
11. For the principal, paste the **Object ID** you copied above, select **Next**
12. For application, select **Next**
13. Select **Create**
14. Under **Settings**, select **Secrets**
15. Select the **PostgreSQLPassword**
16. Select the current version
17. Copy the secret identifier for later use

## Configure Environment Variables

1. Browse to the Azure Portal
2. Select the **pgsqldevSUFFIXlinux** app service
3. Under **Settings**, select **Configuration**
4. Select **New application setting**
5. For the name, type **PostgreSQL_PASSWORD**
6. Update it to the following, replace the `SUFFIX` value:

   ```text
   @Microsoft.KeyVault(SecretUri=https://pgsqldevSUFFIX-kv.vault.azure.net/secrets/PostgreSQLPassword/)
   ```

7. Select **OK**
8. Select **Save**, then select **Continue**. Ensure a green check mark appears in the Source field.

## Update the files

1. Switch back to the SSH window
2. Edit the **/home/site/wwwroot/pubic/database.php**:

 ```bash
 nano /home/site/wwwroot/pubic/database.php
 ```

3. Update the connection variables to the following:

 ```php
 $password = getenv("APPSETTING_POSTGRESQL_PASSWORD");
 ```

 > **NOTE** Azure App Service adds the `APPSETTING` prefix to all environment variables

4. Edit the **/home/site/wwwroot/config/database.php**:

 ```bash
 nano /home/site/wwwroot/config/database.php
 ```

5. Update the PostgreSQL connection to utilize the environment variables:

 ```php
 'password' => getenv('APPSETTING_POSTGRESQL_PASSWORD')
 ```

## Test new settings #4

1. Browse to `https://pgsqldevSUFFIXlinux.azurewebsites.net/database.php`, results should display.

# Deployment via CI/CD

This is a simple app that runs PHP code to connect to a PostgreSQL database.  Both the application and database are deployed via Docker containers.

## Azure DevOps Option

### Create DevOps Project

1. Login to Azure Dev Ops (https://dev.azure.com)
2. Select **New project**
3. For the name, type **contosostore**
4. For the visibiilty, select **Private**
5. Select **Create**

### Setup Git Origin and push code

1. In the new project, select **Repos**
2. In the **Push an existing repository from command line** section, select the **Copy** button
3. In the **Paw-1** virtual machine, switch to Visual Studio code
4. In the terminal window, run the following:

 ```powershell
 cd c:\labfiles\microsoft-postgresql-developer-guide\sample-php-app

 git remote remove origin
 git remote remove azure
 ```

5. In the terminal window, paste the repo url copied from above (it will look something like the following):

 ```powershell
 git remote add origin https://ORG_NAME@dev.azure.com/ORG_NAME/contosostore/_git/contosostore
 git push -f origin main
 ```

6. Press **ENTER** (be sure to replace ORG_NAME)
7. In the dialog, login using the Microsoft Entra credentials for the repo.  The files will get pushed to the repo.

> NOTE:  If using sensitive credentials, be sure you remove them or delete the virtual machine when you are finished with the developer guide content.

8. Switch back to Azure Dev Ops, refresh the repo, all the repo files should be visible.

### Create Service Connection

1. In the lower left, select **Project Settings**
2. Under **Pipelines**, select **Service Connections**
3. Select **Create service connection**
4. Select **Azure Resource Manager**
5. Select **Next**
6. For the authentication, select **Service principal (automatic)**
7. Select **Next**
8. Select the lab subscription and resource group

 > **NOTE** If no subscriptions are displayed, open Azure Dev Ops in a in-private window and try again

9. For the service connection name, type **PostgreSQLDev**
10. Select **Grant access permission to all pipelines**
10.Select **Save**

### Create Pipeline

1. In the left navigation, select **Pipelines**
2. Select **Create Pipeline**
3. Select **Azure Repos Git**
4. Select the **contosostore** repo
5. Select **Existing Azure Pipelines YAML file**
6. Select the **/azure-pipelines.yaml** file
7. Select **Continue**
8. Select **Run**

> **NOTE** Check that your Dev Ops repo is setup with the appropriate branch (`master` vs `main`).  Update the YAML and supporting steps accordingly.

### Create Release

1. In the left navigation, select **Releases**
2. Select **New pipeline**
3. Select the **Azure App Service Deployment**
4. Select **Apply**
5. In the **Artifacts** section, select the **Add an artifact** shape
6. For the project, select **contosostore**
7. For the source, select **contosostore**
8. Select **Add**
9. Select the **Lighting** icon to add an trigger
10. Select **Enabled** for the `Creates a release every time a new build is avaiable`
11. Select the **1 job, 1 task** link
12. Select the **PostgreSQLDev** connection
13. For **App type**, select **Web App on Linux**
14. Select the **pgsqldevSUFFIXlinux** app service
15. Select **Save**, in the dialog, select **OK**

### Commit some changes

1. Switch back to the **paw-1** virtual machine
2. Run the following:

 ```powershell
 git add -A
 git commit -a -m "Pipeline settings"
 git push -f origin main
 ```

### Perform the deployment

1. Select **Pipelines**
2. Select the **contosostore** pipeline, then select **Run pipeline**
3. Select **Run**
4. Select **Releases**
5. Select the **PostgreSQL Dev** pipeline
6. The release should show as being deployed, wait for the pipeline to complete execution

### Test the DevOps deployment

1. Browse to `https://pgsqldevSUFFIXlinux.azurewebsites.net/default.php`, the site should be displayed.
2. Browse to `https://pgsqldevSUFFIXlinux.azurewebsites.net/database.php`, the results should display.

## GitHub Option

### Create Github repo

1. Browse to `https://github.com`
2. Login with GitHub credentials
3. In the top right, select the **+** then select **New repository**
4. For the name, type **contosostore**
5. Select **Create repository**

### Upload the application

1. Switch to Visual Studio code
2. In the terminal window, run the following:

 ```powershell
 git remote remove origin
 ```

3. In the terminal window, paste the code copied above, press **ENTER**

 ```powershell
 git remote add origin https://github.com/USERNAME/contosostore.git
 git branch -M main
 git push -u origin main
 ```

4. In the dialog, login using GitHub credentials for the repo.  The files get pushed to the repo.
5. Switch back to GitHub, refresh the repo, the files should display.

### Generate Credentials

1. Run the following commands to generate the azure credentials (be sure to replace the token values for subscription and resource group):

 ```PowerShell
 az login

 az ad sp create-for-rbac --name "pgsqldevSUFFIX" --sdk-auth --role contributor --scopes /subscriptions/{subscription-id}/resourceGroups/{resource-group}
 ```

2. Copy the json that is outputted
3. Switch back to the GitHub repository, select **Settings** then select **Secrets**
4. Select **New repository secret**
5. For the name, type **AZURE_CREDENTIALS**
6. Paste the json from above as the value
7. Select **Save**

### Deploy the code

1. In the GitHub browser window, select **Actions**
2. Select **set up a workflow yourself**
3. Copy and paste the `github-pipelines.yaml` into the `main.yml` file
4. Update the `AZURE_WEBAPP_NAME: pgsqldevSUFFIX` line to replace the SUFFIX
5. Select **Start commit**
6. Select **Commit new file**
7. Select **Actions**, then select the `Create main.yml` workflow instance, the `Contoso Store` job should be displayed, select it
8. Review the tasks that were executed

### Test the GitHub deployment

1. Browse to `https://pgsqldevSUFFIXlinux.azurewebsites.net/default.php`, the application should be displayed.
2. Browse to `https://pgsqldevSUFFIXlinux.azurewebsites.net/database.php`, results should be displayed.

<!--
## Terraform


## Azure Bicep


-->
# Migrate to Docker Containers

This is a simple app that runs PHP code to connect to a PostgreSQL database.  Both the application and database are deployed via Docker containers.

## Migrate Application to Docker

### Migrate to ENV variables

1. Switch to Visual Studio Code and the opening repo directory
2. Open the `.\artifacts\sample-php-app\public\database.php` file, update the php PostgreSQL connection environment variables by removing the `APPSETTING_` from each:

 ```php
 $servername = getenv("DB_SERVERNAME");
 $username = getenv("DB_USERNAME");
 $password = getenv("DB_PASSWORD");
 $dbname = getenv("DB_DATABASE");
 ```

### Download Docker container

1. Open Docker Desktop, if prompted, select **OK**
2. In the agreement dialog, select the checkbox and then select  **Accept**
3. It will take a few minutes for the Docker service to start, when prompted, select **Skip tutorial**
4. Open a PowerShell window, run the following to download and start a php-enabled docker container

 ```Powershell
 docker run -d php:8.0-apache
 ```

5. In the `c:\labfiles\microsoft-postgresql-developer-guide\artifacts\03-00-Docker` directory, create the `Dockerfile.web` with the following:

 ```text
 # Dockerfile
 FROM php:8.0-apache

 RUN apt-get update && apt-get upgrade -y
 RUN apt update && apt install -y zlib1g-dev libpng-dev && rm -rf /var/lib/apt/lists/*
 RUN apt update && apt install -y curl
 RUN apt-get install -y libcurl4-openssl-dev
 RUN docker-php-ext-install fileinfo
 RUN docker-php-ext-install curl
 
 COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf
 COPY ./start-apache.sh /usr/local/bin

 RUN a2enmod rewrite

 COPY ./sample-php-app /var/www
 RUN chown -R www-data:www-data /var/www

 RUN chmod 755 /usr/local/bin/start-apache.sh

 #CMD ["start-apache.sh"]

 EXPOSE 80
 ```

6. Run the following to create the image:

 ```PowerShell
 $sourcePath = "c:\labfiles\microsoft-postgresql-developer-guide";

 cd $sourcePath;

 docker build -t store-web --file artifacts\Dockerfile.web . 
 ```

## Migrate Database to Docker

1. Run the following to export the database:

 ```powershell
 cd "c:\labfiles\microsoft-postgresql-developer-guide";

 $username = "postgres";
 $password = "Solliance123";
 $server = "localhost";
 $database = "contosostore";

 pgsql -h $server -u $username $database > data.sql

 #remove the weird encoding...
 $data = get-content data.sql

 set-content data.sql $data
 ```

2. In the `c:\labfiles\microsoft-postgresql-developer-guide\artifacts` directory, create a new `Dockerfile.db` docker compose file:

 ```text
 FROM PostgreSQL:8.0
 RUN chown -R PostgreSQL:root /var/lib/postgresql/

 ADD data.sql /etc/PostgreSQL/data.sql

 RUN cp /etc/PostgreSQL/data.sql /docker-entrypoint-initdb.d

 EXPOSE 5432
 ```

3. Build the container:

 ```PowerShell
 docker build -t store-db --file Dockerfile.db .
 ```

## Run the Docker images

1. Create the following `docker-compose.yml` docker compose file:

 ```yaml
 version: '3.8'
 services:
   web:
     image: store-web
     environment:
       - DB_DATABASE=contosostore
       - DB_USER=postgres
       - DB_PASSWORD=root
       - DB_PORT=5432
       - DB_SERVERNAME=db
     ports:
       - "8080:80"
   db:
     image: store-db
     restart: always
     environment:
       - POSTGRES_PASSWORD=root
     ports:
       - "5432:5432"
   pgadmin:
     image: dpage/pgadmin4
     ports:
         - '8081:80'
     restart: always
     environment:
         PMA_HOST: db
     depends_on:
         - db
````

2.  Run the following to create the web container:

    ``` powershell
    cd Artifacts

    iisreset /stop

    docker compose run --service-ports web
    ```

3.  Run the following to create the db container:

    ``` powershell
    stop-service PostgreSQL

    docker compose run --service-ports db
    ```

4.  Run the following to create the phpmyadmin container:

    ``` powershell
    docker compose run --service-ports phpmyadmin
    ```

## Migrate the database

1.  Use export steps in [Migrate the database][85] article to export the
    database
2.  Open a browser to `http:\\localhost:8081` and the phpmyadmin portal
3.  Login to the database using `root` and `root`
4.  Select the **contosostore** database
5.  Run the exported database sql to import the database and data
6.  Select the **SQL** tab, copy and then run the following query by
    selecting **Go**, record the count

``` sql
select count(*) from orders
```

## Test the Docker images

1.  Open a browser to `http:\\localhost:8080\index.php`
2.  Select **START ORDER**

> **NOTE** If get an error about the application not being able to
> connect, do the following to attempt to debug:

-   Open a new PowerShell window, run the following to start a bash
    shell

    ``` powershell
    docker exec -it artifacts-web-1 /bin/bash
    ```

-   Run the following commands in the new bash shell, look for the
    database error that is displayed:

    ``` bash
    cd /var/www

    php artisian migrate
    ```

3.  Once the connection is working, refresh the page then select **START
    ORDER**

4.  Select **Breakfast**, then select **CONTINUE**

5.  Select **Bacon & Eggs**, then select **ADD**

6.  Select **CHECKOUT**

7.  Select **COMPLETE ORDER**

8.  Switch to the PowerShell window that started the containers,
    shutdown the images, press **CTRL-X** to stop the images

9.  Restart the images:

    ``` powershell
    docker compose up
    ```

10. Switch back to the phpmyadmin window. Attemp to re-run the query,
    notice that the database has the same orders as when it was started
    before. This is because the container's data was lost when it was
    stopped/removed.

## Fix Storage persistence

1.  Modify the `docker-compose.yml` docker compose file, notice how we
    are creating and adding a volume to the database container. We also
    added the phpmyadmin continer:

``` yaml
version: '3.8'
services:
  web:
    image: store-web
    environment:
      - DB_DATABASE=contosostore
      - DB_USERNAME=postgres
      - DB_PASSWORD=root
      - DB_HOST=db
      - DB_PORT=5432
      - PostgreSQL_ATTR_SSL_CA=
    ports:
      - "8080:80" 
  db:
    image: store-db
    restart: always
    environment:
      - POSTGRES_PASSWORD=root
      - POSTGRES_DB=contosostore
    volumes:
      - "db-volume:/var/lib/PostgreSQL"
    ports:
      - "5432:5432"
  pgadmin:
    image: dpage/pgadmin4
    ports:
        - '8081:80'
    restart: always
    environment:
        PMA_HOST: db
    depends_on:
        - db
volumes:
  db-volume:
    external: false
```

## Re-test the Docker images

1.  Run the following:

``` powershell
stop service PostgreSQL

docker compose up
```

2.  Create some more orders, restart the containers. Notice that data is
    now persisted. It is now up to the administrators to ensure the
    database volume is maintained for the length of the solution. If
    this volume is ever deleted, the data will be lost!

## Save the images to Azure Container Registry (ACR)

1.  Open the Azure Portal

2.  Browse to the **pgsqldevSUFFIX** Azure Container Registry

3.  Under **Settings**, select **Access keys**

4.  Copy the username and password

5.  In the **paw-1** virtual machine, switch to a powershell window and
    run the following:

    ``` powershell
    docker login {acrName}.azurecr.io -u {username} -p {password}

    docker tag dpage/pgadmin4 {acrName}.azurecr.io/dpage/pgadmin4

    docker tag store-db {acrName}.azurecr.io/store-db

    docker tag store-web {acrName}.azurecr.io/store-web

    docker push {acrName}.azurecr.io/store-db

    docker push {acrName}.azurecr.io/store-web

    docker push {acrName}.azurecr.io/dpage/pgadmin4
    ```

6.  Three images should display in the Azure Container Registry that we
    will use later for deployment to other container based runtimes.

# Migrate to Azure Container Instances (ACI)

Now that containerized versions of the application exists, they can now
be hosted in several resource types in Azure. Here, we explore Azure
Container Instances (ACI).

## Push images to Azure Container Registry

1.  If they haven't been already, push the images to the Azure Container
    Registry using the [Push Images to Acr] article.

## Run images in ACI

1.  Run the following commands to create two new container instances:

    ``` powershell
    $acrName = "pgsqldevSUFFIX";
    $resourceName = $acrName;
    $resourceGroupName = "{RESOURCE_GROUP_NAME}";

    $rg = Get-AzResourceGroup $resourceGroupName;

    $acr = Get-AzContainerRegistry -Name $acrName -ResourceGroupName $resourceGroupName;
    $creds = $acr | Get-AzContainerRegistryCredential

    $imageRegistryCredential = New-AzContainerGroupImageRegistryCredentialObject -Server "$acrName.azurecr.io" -Username $creds.username -Password (ConvertTo-SecureString $creds.password -AsPlainText -Force)

    $storageKey = $(Get-AzStorageAccountKey -ResourceGroupName $resourceGroupName -Name $resourceName).Value[0];
    $context = $(New-AzStorageContext -StorageAccountName $resourceName -StorageAccountKey $storageKey);

    #create a new azure file share
    New-AzStorageShare -Name "db-volume" -Context $context

    $containerName = "store-db";
    $env1 = New-AzContainerInstanceEnvironmentVariableObject -Name "PostgreSQL_DATABASE" -Value "contosostore";
    $env2 = New-AzContainerInstanceEnvironmentVariableObject -Name "PostgreSQL_ROOT_PASSWORD" -Value "root";
    $env3 = New-AzContainerInstanceEnvironmentVariableObject -Name "PostgreSQL_ROOT_HOST" -Value "%";
    $port1 = New-AzContainerInstancePortObject -Port 5432 -Protocol TCP;
    $volume = New-AzContainerGroupVolumeObject -Name "db-volume" -AzureFileShareName "db-volume" -AzureFileStorageAccountName $resourceName -AzureFileStorageAccountKey (ConvertTo-SecureString $storageKey -AsPlainText -Force);
    $vMount = @{};
    $vMount.MountPath = "/var/lib/PostgreSQL";
    $vMount.Name = "db-volume";
    $container = New-AzContainerInstanceObject -Name $containerName -Image "$acrName.azurecr.io/store-db" -Port @($port1) -EnvironmentVariable @($env1, $env2, $env3) -VolumeMount @($vMount);
    New-AzContainerGroup -ResourceGroupName $resourceGroupName -Name $containerName -Container $container -OsType Linux -Location $rg.location -ImageRegistryCredential $imageRegistryCredential -IpAddressType Public -Volume $volume;
    ```

2.  Browse to the Azure Portal

3.  Search for the **store-db** Container instance and select it

4.  Copy the public IP address

5.  Setup the web container, replace the `IP_ADDRESS` with the one
    copied above:

    ``` powershell
    $containerName = "store-web";
    $env1 = New-AzContainerInstanceEnvironmentVariableObject -Name "DB_DATABASE" -Value "contosostore";
    $env2 = New-AzContainerInstanceEnvironmentVariableObject -Name "DB_USERNAME" -Value "root";
    $env3 = New-AzContainerInstanceEnvironmentVariableObject -Name "DB_PASSWORD" -Value "root";
    $env4 = New-AzContainerInstanceEnvironmentVariableObject -Name "DB_HOST" -Value "IP_ADDRESS";
    $port1 = New-AzContainerInstancePortObject -Port 80 -Protocol TCP;
    $port2 = New-AzContainerInstancePortObject -Port 8080 -Protocol TCP;
    $container = New-AzContainerInstanceObject -Name PostgreSQL-dev-web -Image "$acrName.azurecr.io/store-web" -EnvironmentVariable @($env1, $env2, $env3, $env4) -Port @($port1, $port2);
    New-AzContainerGroup -ResourceGroupName $resourceGroupName -Name $containerName -Container $container -OsType Linux -Location $rg.location -ImageRegistryCredential $imageRegistryCredential -IpAddressType Public;
    ```

## Test the images

1.  Browse to the Azure Portal
2.  Search for the **store-web** Container instance and select it
3.  Copy the public IP address and then open a browser window to
    `http://IP_ADDRESS/default.php`

## Multi-container single app service deployment

In the previous steps, a container instance was created for each of the
containers, however, it is possible to create a multi-container
container instance where all services are encapsulated into one
container instance instance using Azure CLI.

1.  Create the following `docker-compose-contoso.yml` file, be sure to
    replace the `SUFFIX`:

    ``` yaml
    version: '3.8'
    services:
    web:
        image: pgsqldevSUFFIX.azurecr.io/store-web:latest
        environment:
        - DB_DATABASE=contosostore
        - DB_USERNAME=root
        - DB_PASSWORD=root
        - DB_HOST=db
        - DB_PORT=5432
        ports:
        - "8080:80" 
        depends_on:
        - db 
    db:
        image: pgsqldevSUFFIX.azurecr.io/store-db:latest
        volumes:
        - ${WEBAPP_STORAGE_HOME}/site/database:/var/lib/PostgreSQL
        restart: always
        environment:
        - PostgreSQL_ROOT_PASSWORD=root
        - PostgreSQL_DATABASE=contosostore
        ports:
        - "5432:5432"
    pgadmin:
        image: dpage/pgadmin4
        ports:
            - '8081:80'
        restart: always
        environment:
            PMA_HOST: db
        depends_on:
          - db
    ```

2.  In a PowerShell window, run the following command, be sure to
    replace the `SUFFIX` and other variable values:

    ``` powershell
    $acrName = "pgsqldevSUFFIX";
    $resourceName = $acrName;
    $resourceGroupName = "{RESOURCE_GROUP_NAME}";

    $acr = Get-AzContainerRegistry -Name $acrName -ResourceGroupName $resourceGroupName;
    $creds = $acr | Get-AzContainerRegistryCredential;

    az login;

    az webapp create --resource-group $resourceGroupName --plan "$resourceName-sf" --name $resourceName --multicontainer-config-type compose --multicontainer-config-file docker-compose-contoso.yml;

    az webapp config appsettings set --resource-group $resourceGroupName --name $resourceName --settings DOCKER_REGISTRY_SERVER_USERNAME=$($creds.Username)

    az webapp config appsettings set --resource-group $resourceGroupName --name $resourceName --settings DOCKER_REGISTRY_SERVER_URL="$resourceName.azurecr.io"

    az webapp config appsettings set --resource-group $resourceGroupName --name $resourceName --settings DOCKER_REGISTRY_SERVER_PASSWORD=$($creds.Password)

    az webapp config appsettings set --resource-group $resourceGroupName --name $resourceName --settings DB_HOST="DB"

    az webapp config appsettings set --resource-group $resourceGroupName --name $resourceName --settings DB_USERNAME="root"

    az webapp config appsettings set --resource-group $resourceGroupName --name $resourceName --settings DB_PASSWORD="root"

    az webapp config appsettings set --resource-group $resourceGroupName --name $resourceName --settings DB_DATABASE="ContosoStore"

    az webapp config appsettings set --resource-group $resourceGroupName --name $resourceName --settings DB_PORT="5432"

    az webapp config appsettings set --resource-group $resourceGroupName --name $resourceName --settings WEBSITES_ENABLE_APP_SERVICE_STORAGE=TRUE

    az webapp config container set --resource-group $resourceGroupName --name $resourceName --multicontainer-config-type compose --multicontainer-config-file docker-compose-contoso.yml
    ```

3.  Switch back to the Azure Portal, browse to the Azure App Service. If
    troubleshooting is needed, view the container logs by browsing to
    `https://pgsqldevSUFFIX.scm.azurewebsites.net/api/logs/docker`. Copy
    the path to the docker file and paste it into a new window, review
    the logs and fix any errors.

# Migrate to Azure App Service Containers

Now that a containerized version of the applications exists, it can now
be hosted in several places in Azure. Here we explore Azure App Service
Containers.

## Push images to Azure Container Registry

1.  If they have not been pushed already, push the images to the Azure
    Container Registry using the [Push Images to Acr] article.

## Run images in Azure App Service

1.  Run the following to create the app service containers, be sure to
    replace the `SUFFIX` and `RESOURCE_GROUP_NAME`:

    ``` powershell
    $suffix = "SUFFIX"
    $acrName = "pgsqldev$suffix";
    $appPlan = "pgsqldev$suffix-linux";
    $image = "$acrName.azure.io/store-web";
    $resourceGroupName = "{RESOURCE_GROUP_NAME}";

    $acr = Get-AzContainerRegistry -Name $acrName -ResourceGroupName $resourceGroupName;
    $creds = $acr | Get-AzContainerRegistryCredential;

    $name = "pgsqldev$suffix-app-web";
    New-AzWebApp -Name $name -ResourceGroupName $resourceGroupName -AppServicePlan $appPlan -ContainerImageName $image -ContainerRegistryUrl $acr.loginserver -ContainerRegistryUser $creds.username -ContainerRegistryPassword (ConvertTo-SecureString $creds.password -AsPlainText -Force) -Location $acr.location;

    $config = Get-AzResource -ResourceGroupName $resourceGroupName -ResourceType Microsoft.Web/sites/config -ResourceName $name -ApiVersion 2018-02-01
    $config.Properties.linuxFxVersion = "DOCKER|$($image):latest"
    $config | Set-AzResource -ApiVersion 2018-02-01 -Debug -Force

    $name = "pgsqldev$suffix-app-db";
    $image = "$acrName.azure.io/store-db";
    New-AzWebApp -Name $name -ResourceGroupName $resourceGroupName -AppServicePlan $appPlan -ContainerImageName $image -ContainerRegistryUrl $acr.loginserver -ContainerRegistryUser $creds.username -ContainerRegistryPassword (ConvertTo-SecureString $creds.password -AsPlainText -Force) -Location $acr.location;

    $config = Get-AzResource -ResourceGroupName $resourceGroupName -ResourceType Microsoft.Web/sites/config -ResourceName $name -ApiVersion 2018-02-01
    $config.Properties.linuxFxVersion = "DOCKER|$($image):latest"
    $config | Set-AzResource -ApiVersion 2018-02-01 -Debug -Force

    az webapp create --resource-group $resourceGroupName --plan $appPlan --name $name --deployment-container-image-name $image
    az webapp config set --resource-group $resourceGroupName --name $name --linux-fx-version "DOCKER|$image:latest"
    az webapp config appsettings set --resource-group $resourceGroupName --name $name --settings WEBSITES_PORT=5432
    ```

## Test the containers

1.  Browse to the Azure Portal
2.  Select the **pgsqldevSUFFIX-app-db** app service
3.  On the **Overview** tabe, record the **URL**
4.  Under **Monitoring**, select **App Service Logs**
5.  Select **File System**
6.  For **Days**, type **7**
7.  Select **Save**
8.  Under **Settings**, select **Configuration**
9.  Select **New application setting**, add the following, replace the
    `DB_URL` with the one recorded previously from the database
    container, replace the `APP_URL` with the one recorded for the
    application web:
    -   `PostgreSQL_ROOT_PASSWORD` = `Solliance123`
    -   `WEBSITES_PORT` = `5432`
10. Select **Save**, then select **Continue**
11. Select the **pgsqldevSUFFIX-app-web** app service
12. On the **Overview** tabe, record the **URL**
13. Under **Monitoring**, select **App Service Logs**
14. Select **File System**
15. For **Days**, type **7**
16. Select **Save**
17. Under **Settings**, select **Configuration**
18. Select **New application setting**, add the following, replace the
    `DB_URL` with the one recorded previously from the database
    container, replace the `APP_URL` with the one recorded for the
    application web:
    -   `DB_HOST` = {DB_URL}
    -   `DB_USERNAME` = `root`
    -   `DB_PASSWORD` = `Solliance123`
    -   `DB_DATABASE` = `contosostore`
    -   `DB_PORT` = `5432`
    -   `APP_URL` = {APP_URL}

    > **NOTE** It is possible to edit multiple by selecting **Advanced
    > edit** and then copying the below values in, be sure to replace
    > the `SUFFIX`

    ``` text
    {
        "name": "DB_HOST",
        "value": "pgsqldevSUFFIX-app-db.azurewebsites.net",
        "slotSetting": false
    },
    {
        "name": "DB_USERNAME",
        "value": "wsuser",
        "slotSetting": false
    },
    {
        "name": "DB_PASSWORD",
        "value": "Solliance",
        "slotSetting": false
    },
    {
        "name": "DB_DATABASE",
        "value": "contosostore",
        "slotSetting": false
    },
    {
        "name": "DB_PORT",
        "value": "5432",
        "slotSetting": false
    },
    {
        "name": "APP_URL",
        "value": "https://pgsqldevSUFFIX-app-web.azurewebsites.net/",
        "slotSetting": false
    }
    ```
19. Select **Save**
20. Browse to the **pgsqldevSUFFIX-app-web** app service url, the web
    site will load but it has database errors.

## Troubleshooting

1.  If no results are displayed, review the logs for each container
    instance
    1.  Browse to the app service
    2.  Under **Monitoring**, select **Log stream**
    3.  Review the startup logs, notice that the database instance did
        not respond to an HTTP request on port 5432. This is because an
        app service container will only work with HTTP based container
        images unless it is a multicontainer deployment.
2.  Change the application settings for the web container to point to
    the Azure Database for PostgreSQL Flexible Server Single Server
    instance
3.  Refresh the web site, it should now load successfully.

# Migrate to Azure Kubernetes Services (AKS)

Now that a containerized version of the applications exists, it can now
be hosted in several places in Azure. Here we explore Azure App Service
Containers.

## Push images to Azure Container Registry

1.  If they haven't already, push the images to the Azure Container
    Registry using the [Push Images to Acr] article.

## Run images in Azure Kubernetes Service (AKS)

1.  Open the
    `C:\labfiles\microsoft-postgresql-developer-guide\Artifacts\04-AKS`
    directory with Visual Studio Code

2.  Open a new terminal window, ensure kubectl is installed:

    ``` powershell
    $resourceGroupName = "YOUR_RESOURCEGROUP_NAME";

    az aks install-cli

    az aks get-credentials --name "pgsqldevSUFFIX" --resource-group $resourceGroupName
    ```

3.  Run the following commands to deploy the containers (be sure to
    update the variable values):

    ``` powershell
    $acrName = "pgsqldevSUFFIX";
    $resourceName = "pgsqldevSUFFIX";
    $resourceGroupName = "RESOURCEGROUPNAME";

    $acr = Get-AzContainerRegistry -Name $acrName -ResourceGroupName $resourceGroupName;
    $creds = $acr | Get-AzContainerRegistryCredential;

    kubectl create namespace PostgreSQLdev

    $ACR_REGISTRY_ID=$(az acr show --name $ACRNAME --query "id" --output tsv);
    $SERVICE_PRINCIPAL_NAME = "acr-service-principal";
    $PASSWORD=$(az ad sp create-for-rbac --name $SERVICE_PRINCIPAL_NAME --scopes $ACR_REGISTRY_ID --role acrpull --query "password" --output tsv)
    $USERNAME=$(az ad sp list --display-name $SERVICE_PRINCIPAL_NAME --query "[].appId" --output tsv)

    kubectl create secret docker-registry acr-secret `
    --namespace PostgreSQLdev `
    --docker-server="https://$($acr.loginserver)" `
    --docker-username=$username `
    --docker-password=$password

    #ensure that MSI is enabled
    az aks update -g $resourceGroupName -n $resourceName --enable-managed-identity

    #get the principal id
    az aks show -g $resourceGroupName -n $resourceName --query "identity"
    ```

4.  Create a managed disk, copy its `id` for later use:

``` powershell
az disk create --resource-group $resourceGroupName --name "disk-store-db" --size-gb 200 --query id --output tsv
```

5.  Open and review the following `storage-db.yaml` deployment file:

``` yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: PostgreSQL-data
  namespace: PostgreSQLdev
spec:
  accessModes:
  - ReadWriteOnce
  resources:
    requests:
      storage: 200Gi
```

6.  Open and review the `store-db.yaml` deployment file, be sure to
    replace the `<REGISTRY_NAME>` and `ID` tokens:

``` yaml
apiVersion: v1
kind: Pod
metadata:
  name: store-db
  namespace: PostgreSQLdev
  labels:
      app: store-db
spec:
  volumes:
  - name: PostgreSQL-data
    persistentVolumeClaim:
      claimName: PostgreSQL-data
  containers:
    - name: store-db
      image: <REGISTRY_NAME>.azurecr.io/store-db:latest
      volumeMounts:
      - mountPath: "/var/lib/PostgreSQL/"
        name: PostgreSQL-data
      imagePullPolicy: IfNotPresent
      env:
      - name: PostgreSQL_DATABASE
        value: "ContosoStore"
      - name: PostgreSQL_ROOT_PASSWORD
        value: "root"
  imagePullSecrets:
    - name: acr-secret
```

7.  Run the deployment:

    ``` powershell
    kubectl create -f storage-db.yaml

    kubectl create -f store-db.yaml
    ```

8.  Create the following `store-web.yaml` deployment file, be sure to
    replace the `<REGISTRY_NAME>` token:

``` yaml
apiVersion: v1
kind: Pod
metadata:
  name: store-web
  namespace: PostgreSQLdev
spec:
  containers:
    - name: store-web
      image: <REGISTRY_NAME>.azurecr.io/store-web:latest
      imagePullPolicy: IfNotPresent
      env:
      - name: DB_DATABASE
        value: "ContosoStore"
      - name: DB_USERNAME
        value: "root"
      - name: DB_PASSWORD
        value: "root"
      - name: DB_HOST
        value: "store-db"
  imagePullSecrets:
    - name: acr-secret
```

6.  Run the deployment:

    ``` powershell
    kubectl create -f store-web.yaml
    ```

## Add services

1.  Open and review the `store-db-service.yaml` yaml file:

``` yaml
apiVersion: v1
kind: Service
metadata:
  name: store-db
spec:
  ports:
  - port: 5432
  selector:
    app: store-db
```

2.  Open and review the `store-web-service.yaml` yaml file:

``` yaml
apiVersion: v1
kind: Service
metadata:
  name: store-web
spec:
  ports:
  - port: 80
  selector:
    app: store-web
```

3.  Run the deployment:

    ``` powershell
    kubectl create -f store-web-service.yaml

    kubectl create -f store-db-service.yaml
    ```

## Create a Loadbalancer

1.  Review the `store-web-lb.yaml` file:
2.  Execute the deployment:

``` powershell
kubectl create -f store-web-lb.yaml
```

3.  Review the `store-db-lb.yaml` file:
4.  Execute the deployment:

``` powershell
kubectl create -f store-db-lb.yaml
```

## Test the images

1.  Browse to the Azure Portal
2.  Navigate to the AKS cluster and select it
3.  Under **Kubernetes resources**, select **Service and ingresses**
4.  For the **store-web-lb** service, select the external IP link. A new
    web browser tab should open to the web front end. Ensure that an
    order can be created without a database error.

## Create a deployment

Kubernetes deployments allow for the creation of multiple instances of
pods and containers in case nodes or pods crash unexpectiantly.

1.  Review the `store-web-deployment.yaml` file be sure to replace the
    Azure Container Registry link:

``` powershell
kubectl create -f store-web-deployment.yaml
```

2.  Review the `store-db-deployment.yaml` file be sure to replace the
    Azure Container Registry link:
3.  Execute the deployment:

``` powershell
kubectl create -f store-db-deployment.yaml
```

4.  This deployment is now very robust and will survive multiple node
    failures.

# Utilize AKS and Azure Database for PostgreSQL Flexible Server

Rather than managing the database volumes for a PostgreSQL server
instance, it is possible to utilize Azure Database for PostgreSQL
Flexible Server in order to use a platform as a service approach. This
will remove the need to have a database server container and a volumne
to be persisted.

## Push images to Azure Container Registry

1.  If they haven't already, push the images to the Azure Container
    Registry using the [Push Images to Acr] article.

## Run images in AKS

1.  Review the `store-web-development.yaml` file
2.  Run the following to execute the deployment, update the `DB_HOST`
    value to the Azure Database for PostgreSQL Flexible Server instance:

``` powershell
kubectl create -f store-web-development.yaml
```

# Azure Function with PostgreSQL (.NET)

https://techcommunity.microsoft.com/t5/azure-database-for-PostgreSQL-blog/how-to-connect-to-azure-database-for-PostgreSQL-using-managed/ba-p/1518196

## Setup

It is possible to utilize Visual Studio or Visual Studio Code to create
Azure Functions.

### Install pre-requisites

Most of this is done already in the lab setup scripts, but is provided
here for reference.

-   Install [Visual Studio 2022 Community Edition]
    -   Expand the **Download Visual Studio with .NET** dropdown for an
        installation package with the .NET SDK
    -   Once Visual Studio loads, sign in with an Azure account
-   Install the [Azure Functions core tools MSI]

#### Install the Azure development workload for Visual Studio

-   Open the Visual Studio installer from the Start menu.
-   Select **Modify** next to the **Visual Studio Community 2022**
    installation
-   Select the **Azure development** tile below the **Web & Cloud**
    header. Then, select **Modify** at the lower right-hand corner of
    the window

## Create the Function Application

The application here is based on an Http Trigger that will then make a
call into the Azure Database for PostgreSQL Flexible Server instance and
add some records. Create this function by performing the following
steps.

-   Open Visual Studio, if prompted, sign in
-   Select **Create a new project**
-   Search for **Azure Functions**
-   Select **C#** for the language
-   Select **Next**
-   For the name, type **AddCustomerFunction**
-   Select the project path
-   Select **Next**
-   For the functions works, select **.NET 8.0 Isloated**
-   For the function type, select **Http Trigger**
-   For the Storage account, select **Storage Emulator**
-   For the authorization level, select **Function**
-   Select **Create**
-   Open the **Function1.cs** file, update the function class (in
    `Function1.cs`) to the following. This Function completes the
    following tasks when its HTTP endpoint receives a request:
    -   Connecting to the Azure Database for PostgreSQL Flexible Server
        instance provisioned in the ARM template
    -   Generating a list of databases on the PostgreSQL instance
    -   Building a formatted response
    -   Returning the formatted response to the caller
-   Be sure to replace the `SUFFIX` connection information:

``` csharp
    public static class AddCustomerFunction
    {
        [FunctionName("AddCustomerFunction")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Function, "get", "post", Route = null)] HttpRequest req,
            ILogger log)
        {
            NpgsqlConnectionStringBuilder builder = new NpgsqlConnectionStringBuilder
            {
                Host = "pgsqldevSUFFIXflex16.postgres.database.azure.com",
                Username = "wsuser",
                Password = "Solliance123",
                Database = "postgres",
                SslMode = SslMode.Require
            };

            string responseMessage = "";

            using (var conn = new NpgsqlConnection(builder.ConnectionString))
            {
                conn.Open();

                using (var command = conn.CreateCommand())
                {
                    command.CommandText = "SELECT datname FROM pg_catalog.pg_database;";
                    NpgsqlDataReader r = command.ExecuteReader();

                    while (r.Read())
                    {
                        responseMessage += r["datname"] + "\r\n";
                    }
                }
            }

            return new OkObjectResult(responseMessage);
        }
    }
```

-   Right-click the project, select **Manage Nuget Packages**

-   Select the **Browse** tab

-   Search for **Npgsql**, select it, then select **Install**

-   Select **Apply**

-   Select **Ok** if prompted

-   At the top of `Function1.cs` file, add a using reference to `Npgsql`
    by adding the following statement.

    ``` csharp
    using Npgsql;
    ```

-   Press **F5** to start the function

-   When prompted, select **Allow**

-   Open a browser window to the function endpoint, it will be similar
    to the following:

``` text
http://localhost:7071/api/AddCustomerFunction
```

-   You should see a list of databases displayed.

## Deploy the Function Application

Now that the function app is created and working locally, the next step
is to publish the function app to Azure.

-   Right click the project, select **Publish**

-   Select **Azure**, then select **Next**

-   For the target, select **Azure Function App (Linux)**

    ![This image demonstrates choosing the Azure Function App Linux
    deployment option.]

-   Select **Next**

-   Select the **Sign in** button, login using your lab credentials

-   Select the account, subscription and resource group

-   Select the **pgsqldevSUFFIX-AddCustomerFunction** function app

-   Select **Finish**

-   Select **Publish**, and if prompted, select **Yes** to update the
    runtime version.

-   Switch to the Azure portal, browse to your lab resource group

-   Select the **pgsqldevSUFFIX-addcustomerfunction** Function App
    instance

-   Under **Functions**, select **App keys**

-   Copy the function `default` app key value

-   It should now be possible to browse to the function endpoint and see
    data, replace the `APPKEY` with the one you copied:

``` text
https://pgsqldevSUFFIX-addcustomerfunction.azurewebsites.net/api/addcustomerfunction?code=APPKEY
```

## Test the Function App in the Azure portal

-   Switch to the Azure portal, browse to your lab resource group

-   Select the **pgsqldevSUFFIX-addcustomerfunction** Function App
    instance

-   On the **Overview** page, select the **AddCustomerFunction** link

-   On the **AddCustomerFunction** page, select **Code + Test**. Then,
    select **Test/Run** to access the built-in testing interface

-   If prompted, select the warning to enable CORS

-   Issue a simple GET request to the Function App endpoint using the
    `master` key.

    > **NOTE** It is possible to use a *function key*, which is scoped
    > to an individual Function App, or a *host key*, which is scoped to
    > an Azure Functions instance.

    ![This image demonstrates how to configure a GET request to the
    Function App endpoint from the Azure portal.]

-   The Function App should execute successfully and a list of items
    should display

## Troubleshooting

-   If the application builds successfully, but deployment fails, try
    restarting Visual Studio and publishing the Function App again to
    avoid transient errors
-   Enabling Application Insight logs is a useful way to debug Function
    Apps deployed to Azure. As Application Insights cannot be configured
    from the Visual Studio publish profile, consult the [Microsoft
    documentation][86] for the manual setup steps

# Azure Function with PostgreSQL (Python)

https://techcommunity.microsoft.com/t5/azure-database-for-PostgreSQL-blog/how-to-connect-to-azure-database-for-PostgreSQL-using-managed/ba-p/1518196

## Setup

It is possible to utilize several different tools including Visual
Studio or Visual Studio Code to create Azure Functions.

### Visual Studio Code

> **Note** that these steps have already been performed in the virtual
> machine environment.

-   Install the [`Azure Functions`] and [`Python`] extensions
-   Install [Python 3.11.x][Downloads page]
-   Install the [Azure Functions core tools MSI]

## Create the Function Application

The application here is based on an HTTP Trigger that will then make a
call into the Azure Database for PostgreSQL Flexible Server instance and
add some records. To create this function perform the following steps.

-   Open Visual Studio Code, type **Ctrl-Shift-P**

-   Select **Azure Functions: Create New Project**

    ![This image demonstrates how to create a new Function App project.]

-   Select the project path (ex `c:\temp\python-function`)

-   For the language, select **Python**

-   For the model, select **Model V2**

-   Select the **python 3.11.x** option

-   Select the **HTTP trigger**

    ![This image demonstrates configuring the HTTP Trigger for the new
    Function App.]

-   For the name, type **AddCustomerFunction**, press **ENTER**

-   For the authorization level, select **FUNCTION**

-   Select **Open in current window**

-   Update the function code in `function_app.py` to the following,
    ensuring that the connection information is replaced. This Function
    completes the following tasks when its HTTP endpoint receives a
    request:

    -   Connecting to the PostgreSQL Flexible Server instance
        provisioned in the ARM template
    -   Generating a list of databases on the PostgreSQL instance
    -   Building a formatted response
    -   Returning the formatted response to the caller

``` python
import logging
import azure.functions as func
import psycopg2
import ssl

app = func.FunctionApp(http_auth_level=func.AuthLevel.FUNCTION)

@app.route(route="AddCustomerFunction")
def AddCustomerFunction(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Python HTTP trigger function processed a request.')

    crtpath = 'BaltimoreCyberTrustRoot.crt.pem'
    #crtpath = 'DigiCertGlobalRootCA.crt.pem'

    ctx = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)

    # Connect to PostgreSQL
    cnx = psycopg2.connect(database="postgres",
        host="pgsqldevSUFFIXflex16.postgres.database.azure.com",
        user="wsuser",
        password="Solliance123",
        port="5432")

    logging.info(cnx)
    # Show databases
    cursor = cnx.cursor()
    cursor.execute("SELECT datname FROM pg_catalog.pg_database;")
    result_list = cursor.fetchall()
    # Build result response text
    result_str_list = []
    for row in result_list:
        row_str = ', '.join([str(v) for v in row])
        result_str_list.append(row_str)
    result_str = '\n'.join(result_str_list)
    return func.HttpResponse(
        result_str,
        status_code=200
    )
```

-   Open a terminal window (Select **Terminal-\>New Terminal**)

    -   Install the PostgreSQL connector:

        ``` powershell
        pip install psycopg2
        ```

        ![This image demonstrates the Virtual Environment and PostgreSQL
        connector installation in the PowerShell terminal.]

    -   Run the function app (your can also press `F5`):

        ``` powershell
        func start run
        ```

-   In the dialog, select **Allow**

-   Open a browser window to the following. A list of databases should
    load:

    ``` text
    http://localhost:7071/api/AddCustomerFunction
    ```

-   The data will be displayed, however it is over non-SSL connection.
    Azure recommends that Flexible Server clients use the service's
    public SSL certificate for secure access. Download the [Azure SSL
    certificate] to the Function App project root directory

-   Add the following lines to the Python code to utilize the Flexible
    Server public certificate and support connections over TLS 1.2:

``` python
crtpath = '../BaltimoreCyberTrustRoot.crt.pem'
#crtpath = '../DigiCertGlobalRootCA.crt.pem' #THIS IS THE OLD CERT, USE THE BALTIMORE CERT

ctx = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)

# Connect to PostgreSQL
cnx = psycopg2.connect(database="postgres",
        host="pgsqldevSUFFIXflex16.postgres.database.azure.com",
        user="wsuser",
        password="Solliance123",
        port="5432",
        sslmode='require',
        sslrootcert=crtpath)
```

-   Call the endpoint again in a browser. The Function App should still
    operate

## Deploy the Function Application

Now that the Function App is created and working locally, the next step
is to publish the Function App to Azure. This will require some small
changes.

-   Add the following to the Python code:

``` python
import pathlib

def get_ssl_cert():
    current_path = pathlib.Path(__file__).parent.parent
    return str(current_path / 'BaltimoreCyberTrustRoot.crt.pem')
```

-   Modify the `ssl_ca` parameter to call the `get_ssl_cert()` function
    and get the certificate file path

``` python
ssl_ca=get_ssl_cert(),
```

-   Open the `requirements.txt` file and modify to the following. The
    Azure Functions runtime will install the dependencies in this file

``` text
azure-functions
psycopg2
```

-   Switch to the terminal window and run the following. Follow the
    instructions to log in to the Azure subscription:

``` powershell
az login
```

-   If necessary, switch to the target subscription:

``` powershell
az account set --subscription 'SUBSCRIPTION NAME'
```

-   Switch to the terminal window and run the following from the
    repository root:

``` powershell
func azure functionapp publish pgsqldevSUFFIX-addcustomerfunction
```

-   If you previously deployed the dotnet version, you should get an
    error about the function runtime. Run the following to force the
    deployment and change the runtime to python:

``` powershell
az functionapp config set --name pgsqldevSUFFIX-addcustomerfunction --resource-group RESOURCEGROPUNAME --linux-fx-version '"Python|3.11"'
```

-   Retry the deployment:

``` powershell
func azure functionapp publish pgsqldevSUFFIX-addcustomerfunction --force
```

## Test the Function App in the Azure portal

-   Navigate to the Azure portal and select **AddCustomerFunction** from
    the **PostgreSQLdev\[SUFFIX\]-addcustomerfunction** Function App
    instance

    ![This image demonstrates how to select the AddCustomerFunction from
    the Function App instance.]

-   On the **AddCustomerFunction** page, **Code + Test**. Then, select
    **Test/Run** to access the built-in testing interface

-   Issue a simple GET request to the Function App endpoint.

    > **NOTE** It is possible to use a *function key*, which is scoped
    > to an individual Function App, or a *host key*, which is scoped to
    > an Azure Functions instance.

    ![This image demonstrates how to configure a GET request to the
    Function App endpoint from the Azure portal.]

-   The Function App should execute successfully, with logs indicating a
    successful connection to PostgreSQL Flexible Server

    ![This image demonstrates the logs of a successful Function App
    invocation.]

## Troubleshooting

-   If the Function App works locally, but fails in the cloud, ensure
    that the Azure environment is configured properly:
    -   The `requirements.txt` file must reference the PostgreSQL Python
        connector
    -   The Flexible Server instance must provide access to all Azure
        resources
    -   The Azure Function Apps instance must be using extension version
        `4`, as that is the what the local core tools support

# Deploy Azure Function App to Azure Kubernetes Service (AKS)

Function apps can be containerized and deployed to AKS. These steps will
walk through this process so it can be applied later if this is
something the architecture demands.

## Ensure Docker is started

-   Open Docker Desktop, ensure that it is running.

## Setup AKS (KEDA)

-   Open a new Visual Studio Code window to the
    `C:\labfiles\microsoft-postgresql-developer-guide\Artifacts\06-03-FunctionApp-AKS`
    folder
-   Open a new terminal window, ensure that an AKS connection is
    present:

``` powershell
$resourceGroupName = "YOUR_RESOURCEGROUP_NAME";

az aks install-cli

az aks get-credentials --name "pgsqldevSUFFIX" --resource-group $resourceGroupName
```

-   Run the following command to install KEDA on the AKS cluster:

``` powershell
kubectl create namespace keda

func kubernetes install
```

## Ensure Docker Connection

1.  Open the Azure Portal

2.  Browse to the **pgsqldevSUFFIX** Azure Container Registry

3.  Under **Settings**, select **Access keys**

4.  Copy the username and password

5.  In the terminal windows, run the following:

    ``` powershell
    docker login {acrName}.azurecr.io -u {username} -p {password}
    ```

## Configure Function App as Container

-   Run the following command to setup the docker file

``` powershell
func init --docker-only --python
```

-   Deploy the function app using the following, be sure to replace the
    function name and `SUFFIX` value:

``` powershell
func kubernetes deploy --name "addcustomerfunction" --registry "pgsqldevSUFFIX.azurecr.io"
```

-   After following the above steps, the function app has been turned
    into a container and pushed to the target registry. It should also
    now be deployed to the AKS cluster in the `keda` namespace.

# Securing Azure Function Apps

In the previous function apps the connection information was embedded
into the function app code. As was covered in the traditional deployment
models, it is a best practice to remove this information and place it
into Azure Key Vault. Here we will utilize the features of Azure to use
Managed Identities to connect to the database.

> **NOTE** This is currently only supported on Azure Database for Single
> Server.

## Enable PostgreSQL Microsoft Entra Authentication

-   Switch to the Azure Portal
-   Browse to the **pgsqldevSUFFIXflex16** Azure Database for PostgreSQL
    Flexible Server instance
-   Under **Security**, select **Authentication**
-   Ensure **Assign access to** is set to
    `PostgreSQL and Microsoft Entra authentication`
-   Select **Add Microsoft Entra Admins**
-   Select your lab credentials
-   Select **Select**
-   Select **Save**

## Create Managed Identity

-   Browse to the **pgsqldevSUFFIX-addcustomerfunction** Function App
-   Under **Settings**, select **Identity**
-   For the **System assigned** identity, toggle to **On**
-   Select **Save**, then select **Yes**
-   Run the following to get the application id, replace the `SUFFIX`:

``` powershell
az ad sp list --display-name pgsqldevSUFFIX-addcustomerfunction --query [*].appId --out tsv
```

-   Copy the value for later use

## Login to the Azure Database with Microsoft Entra credentials

-   Switch to the **paw-1** virtual machine
-   Create a file called `c:\temp\GetAzADTOken.ps1` and paste the
    following into it:

``` powershell
If ($null -eq (Get-AzContext)) {
    # User Account
    Connect-AzAccount -WarningAction SilentlyContinue | Out-Null
}
 
$AzAccessTokenSplat = $null
$AzAccessTokenSplat = @{
    ResourceUrl = "https://ossrdbms-aad.database.windows.net"
}
  
$AzAccessToken = $null
$AzAccessToken = Get-AzAccessToken @AzAccessTokenSplat
  
$AzAccessToken.Token
```

-   Open the pgAdmin
-   Create a new server connection, right click **Servers**, select
    **Register**
-   For the name, type **azureadPostgreSQL**
-   For the hostname, type the DNS of the Azure Database for PostgreSQL
    Flexible Server (ex
    `pgsqldevSUFFIXflex16.postgres.database.azure.com`)
-   For the username, type your user UPN (aka your email address for
    your lab account)
-   Select the **Advanced** tab, for the password exec command, type:

``` cmd
powershell -file "C:\temp\GetAzADToken.ps1"
```

-   For the password exec expiration, type `3480`
-   Select **Save**
-   Right click the new server, select **Connect**

## Add MSI to Database

-   Switch to the Azure Portal

-   Browse to the \`\` Azure Database for PostgreSQL Flexible Server

-   Under **Security**, select **Authentication**

-   Select **Add Microsoft Entra Admin**

-   Search for the `APP_ID` from above. Select it and the select
    **Select**

-   Select **Save**

-   The same could be performed using psql. From a psql connection, run
    the following, replace the `APP_ID` with the one copied from above:

    ``` sql
    select * from pgaadauth_create_principal('APP_ID', false, false);
    ```

## Modify the code

-   Open the
    `C:\labfiles\microsoft-postgresql-developer-guide\Artifacts\06-04-FunctionApp-MSI`
    function app folder in Visual Studio Code

-   Add the following code to get an access token  password for the
    managed identity:

    ``` python
    from azure.identity import DefaultAzureCredential, AzureCliCredential, ChainedTokenCredential, ManagedIdentityCredential
    managed_identity = ManagedIdentityCredential()
    scope = "https://management.azure.com"
    token = managed_identity.get_token(scope)
    access_token = token.token
    ```

-   Update the connection code to use the application id and the access
    token:

    ``` python
    # Connect to PostgreSQL
        cnx = psycopg2.connect(database="postgres",
            host="pgsqldevSUFFIXflex16.postgres.database.azure.com",
            user="APP_ID",
            password=access_token,
            port="5432",
            sslmode='require',
            sslrootcert=crtpath)
    ```

-   Run the following to deploy the updated Azure Function App:

``` powershell
func azure functionapp publish pgsqldevSUFFIX-addcustomerfunction --force --python
```

Browse to the function endpoint and see the data (the output of the
previous command will include this information). The function app is now
running as a managed identity and connecting to the database using that
identity:

``` text
https://pgsqldevSUFFIX-addcustomerfunction.azurewebsites.net/api/addcustomerfunction?code=APPKEY
```

# Logic Apps with PostgreSQL

Logic Apps can be used to connect to Azure Database for PostgreSQL
Flexible Server instances and perform actions such as SELECT, INSERT,
DELETE and UPDATE. However, Logic Apps do not have any direct
integrations that allow for triggers that fire from PostgreSQL DDL or
DML events. In order for the PostgreSQL actions to connect to the
PostgreSQL instance, it is necessary to install a Logic Apps Gateway.
This can be done with Azure instances, but the Azure Database for
PostgreSQL Flexible Server will need private endpoints enabled and the
gateway will need to run in a virtual machine that can access that
private endpoint.

## Create a Private Endpoint Flexible Server

-   Open the Azure Portal

-   Browse to the lab resource group

-   Find the **pgsqldevSUFFIX-db** virtual network, take note of its
    region location

-   In the top navigation menu, select **+Create**

-   Search for **Azure Database for PostgreSQL Flexible Server**

-   Select **Create**

-   Under **Flexible Server**, select **Create**

    ![This image demonstrates the first provisioning screen for Azure
    Database for PostgreSQL Flexible Server.]

-   Select the target subscription and resource group

-   For the name, type **pgsqldevSUFFIXflexpriv**

-   Select the resource group region (it must be in the region that the
    VNet is in)

-   For **Workload type**, select **Development** to save costs

-   For **Availability zone**, select **No preference**

    -   Co-locating the VM and the Flexible Server instance will improve
        network performance, but it is not strictly necessary

-   For the **PostgreSQL Version**, select **16**

-   Do not enable high availability

-   For the admin username, type **wsuser**

-   For the password, type **Solliance123**

-   Select **Next: Networking \>**

-   Select **Private access (VNet Integration)**

-   Select the lab subscription

-   Select the **PostgreSQLdev\[SUFFIX\]-db** vnet

-   Select the **default** subnet, which is delegated to hold just
    Flexible Server instances

    ![This image demonstrates the Azure VNet integration.]

-   Select the **private.postgres.database.azure.com** private DNS zone

-   Select **Review + create**

-   Select **Create**

-   Navigate to the new Azure Database for PostgreSQL Flexible Server
    instance

-   Under **Settings** select **Server parameters**

-   Search for the `require_secure_transport` setting

-   Change the value to **OFF**

-   Select **Save**

    ![This image demonstrates how to disable SSL transport for Flexible
    Server.]

> **NOTE** The Log App Gateway can currently only do non-SSL connections
> to PostgreSQL

> **NOTE** It is also possible to use the Azure CLI
> [`az PostgreSQL flexible-server create`] command to provision a
> Flexible Server instance in a virtual network.

## Private DNS - Virtual network link

Several private DNS Zones were created as part of the ARM template
deployment, here it will be necessary to link those to the virtual
networks so DNS resolution of private vnet and private endpoint
resources become resolvable by other resources (such as virtual
machines).

-   Browse to the **private.postgres.database.azure.com** private dns
    zone
-   Under **Settings**, select **Virtual network links**, notice an
    auto-created link (from the resource creation above)
-   Select the **Overview** link
-   Record the database IP Address for later use
-   It can take some time for the DNS to become available, on the
    **paw-1** virtual machine
-   Open the `C:\Windows\System32\drivers\etc\HOSTS` file in notepad++
-   Add the following to the file:

``` text
10.4.0.6 pgsqldevSUFFIXflexpriv.private.postgres.database.azure.com
```

## Configure the new Flexible Server instance

-   Switch to the **paw-1** virtual machine

-   Open a command prompt window and enter the following command to
    initiate a connection to the Flexible Server instance. Provide
    `Solliance123` as the password, when prompted. Be sure to replace
    the `SUFFIX`:

    ``` cmd
    "C:\Program Files\PostgreSQL\PostgreSQL Workbench 8.0 CE\PostgreSQL.exe" -h pgsqldevSUFFIXflexpriv.private.postgres.database.azure.com -u wsuser -p
    ```

-   Create a new database, titled `noshnowapp`. Then, create a new table
    for orders. It is a simplified version of the table used by the
    Contoso NoshNow application.

    ``` sql
    CREATE DATABASE noshnowapp;
    USE noshnowapp;

    CREATE TABLE orders (
      id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
      name varchar(20) NOT NULL,
      address varchar(80) NOT NULL
    );
    ```

## Install the PostgreSQL .NET Connector

-   Log in to the **pgsqldevSUFFIX-paw-1** virtual machine using
    **wsuser** and **Solliance123**
-   [Download] the connector
-   Run the **PostgreSQL-installer...** installer
-   Click through all the default values of all dialogs
-   Select **Next**
-   Select **Finish**

## Install the Logic Apps Gateway

-   [Download][87] the Logic Apps Gateway

-   Install the Logic Apps Gateway by running the **gatewayinstall.exe**

-   Select **I accept the terms...** checkbox

-   Select **Install**

-   Enter the lab user email, then select **Sign in**

-   When prompted, log in to the lab Azure account

-   Select **Register a new gateway on this computer**

-   Select **Next**

-   For the name, type **gateway-PostgreSQL-SUFFIX**

-   For the recovery key, type **Solliance123**

-   Ensure that the region is the same as where the virtual network for
    the database instance is located

-   Select **Configure**

    ![This image demonstrates the configuration for the on-premises data
    gateway.]

## Configure the Logic Apps Gateway

-   In the **On-premises data gateway** dialog, select **Create a
    gateway in Azure**

-   Select the subscription and the resource group

-   For the name, type **logic-app-gateway**

-   Select the region used above

-   Select the **gateway-PostgreSQL-SUFFIX** gateway

-   Select **Review + create**

-   Select **Create**

    ![This image demonstrates how to configure the on-premises data
    gateway Azure connection.]

## Configure the Logic App

We have already created a Logic App that uses a timer trigger to check
for new Orders in the database and then send an email.

### Configure deployed Logic App

-   Browse to the **pgsqldevSUFFIX-logic-app**
-   Under **Development Tools**, select **API connections**
-   Select **office365**
-   Under **General**, select **Edit API Connection**
-   Under the **Display Name** to your lab user email address
-   Select **Authorize**, login using the lab credentials
-   Select **Save**
-   Select the **azureblob** connection
-   Under **General**, select **Edit API Connection**
-   Enter the **pgsqldevSUFFIX**, azure storage account name and access
    key
-   Select the **PostgreSQL** connection
-   Under **General**, select **Edit API Connection**
-   Enter the following information:
    -   Server :
        `pgsqldevSUFFIXflexpriv.private.postgres.database.azure.com`
    -   Database name : `contosostore`
    -   Username : `wsuser`
    -   Password : `Solliance123`
    -   Gateway : `gateway-PostgreSQL-SUFFIX`
-   Select **Save**

### Create a Logic App (Optional)

This step has already been done for you, but if you'd like to create the
logic app from scratch the steps are provided here.

-   Select **Blank template**

-   For the trigger, select **Recurrence**. Keep the default values

    ![This image demonstrates the recurrence trigger parameters for the
    Logic Apps instance.]

-   Select **+ New step**, search for **PostgreSQL**

-   Select **Get Rows**

-   Update the step variables:

    -   For the name, type **PostgreSQLflex**
    -   For the server, type
        **pgsqldevSUFFIXflexpriv.postgres.database.azure.com**.

    > **Note** It may be necessary to put the private IP address if DNS
    > resolution does not kick in in a reasonable amount of time.

    -   For the database, type **noshnowapp**
    -   For username, type **wsuser**
    -   For password, type **Solliance123**
    -   For the gateway, select **gateway-PostgreSQL-SUFFIX**

-   Select **Create**

-   For the table name, enter **noshnowapp.orders**

-   Add the **Filter Query** and the **Select Query** parameters

-   Set the following:

    -   Filter Query = `name eq 'John'`
    -   Leave Select Query blank

-   Search for the **Office 365 Outlook : Send an email** action

-   Select **Sign in**

-   Sign in with the lab user credentials

-   For the `To`, type the lab user email

-   For the subject, enter **New Order Recieved**

-   For the body, select **Add dynamic content**, then select **Current
    item**

-   For the logic app, select **Save**

## Configure supporting items

### Add private endpoint to App Service

-   Browse to the **pgsqldevSUFFIX-web** app service
-   Under **App Service plan**, select **App Service plan**
-   Under **Settings**, select **Scale up (App Service plan)**
-   Select **Production** tab
-   Select the **P1V2** pricing tier
-   Select **Apply**
-   Switch back to the app service
-   Under **Settings**, select **Networking**
-   In the **Inbound Traffic** section, select **Private endpoints**
-   Select **Add**
-   For the name, type **pgsqldevSUFFIX-web-pe**
-   For the virtual network, select **pgsqldevSUFFIX-web**
-   Select the **default** subnet
-   Select **OK**
-   Browse to the **pgsqldevSUFFIX-web** virtual network, record the new
    IP Address of the private endpoint.

### Set the Database Host

-   Switch back to the main blade for the app service
-   Under **Settings**, select **Configuration**
-   Edit the app setting value for **DB_HOST** to the ip address
    recorded above.
-   Select **Save**

### Add virtual network peering

-   Browse to the **pgsqldevSUFFIX-web** virtual network
-   Under **Settings**, select **Peerings**
-   Select **+Add**
-   For the name, type **web-to-db**
-   For the peering link name, type **db-to-web**
-   For the virtual network, select **pgsqldevSUFFIX-db**
-   Select **Add**, after a couple minutes the link should to
    **Connected**
-   Under **Settings**, select **Subnets**, ensure that a virtual
    network called **vnet-web-int**, if not create it
    -   Select **+Subnet**
    -   For the name, type **vnet-web-int**
    -   Select **Save**

### Add VNet Integrate

-   Browse back to the app service
-   Under **Settings**, select **Networking**
-   Under **Outbound Traffic**, select **VNet integration**
-   Select **Add VNet**
-   Select the **pgsqldevSUFFIX-web** virtual network
-   Select the **vnet-web-int** subnet
-   Select **OK**

### Add the lastOrder.txt file

-   Browse to the **pgsqldevSUFFIX** storage account
-   Select **Containers**, then select **logicapp**
-   Upload the **lastOrder.txt** file

## Test Trigger

-   On the **paw-1** virtual machine
-   Add the following to the hosts file:

``` text
10.3.0.4 PostgreSQLdev-app-web.azurewebsites.net
10.3.0.4 PostgreSQLdev-app-web.scm.azurewebsites.net
```

-   Open a new Chrome browser window
-   Browse to the Contoso Store app service -
    https://PostgreSQLdev-app-web.azurewebsites.net/
-   Create a new order
-   Browse to Outlook Online (https://outlook.office.com), wait for 5
    minutes for an email to show up with the order details.

# Azure Data Factory with PostgreSQL

## Setup

## Create Linked Services

-   Switch to the Azure Portal, browse to the **pgsqldevSUFFIX** Azure
    Data Factory instance
-   Select **Launch Studio**
-   In the left navigation, select the **Manage** tab
-   Select **Linked servics**, select the **+ New** button
-   For the type, select **Azure Database for PostgreSQL**, then select
    **Continue**
-   For the name, type **ContosoStore**
-   For the account selection, select **From Azure Subscription**
-   Select the subscription
-   Select the **pgsqldevSUFFIXflex16** Azure Database for PostgreSQL
    Flexible Server server
-   For the database name, select **ContosoStore**
-   For the username, type **wsuser**
-   For the password, type **Solliance123**
-   For the encryption methods, select **RequestSSL**
-   Select **Test connection**, ensure that a success message is
    displayed.
-   Select **Create**
-   Select **Linked services**, select the **+ New** button
-   For the type, select **Azure Data Lake Storage Gen2**
-   Select **Continue**
-   For the name type **AzStorage**
-   Select the subscription
-   Select the **pgsqldevSUFFIX** storage account
-   Select **Create**

## Create Dataset (PostgreSQL)

-   Seelct the **Author** tab
-   Select the **+** button, then select **Data Set**
-   For the type, select **Azure Database for PostgreSQL**
-   Select **Continue**
-   For the name, type **orders_database**
-   For the linked service, select **ContosoStore**
-   For the table name, select **public.orders**
-   Select **OK**

## Create Dataset (Storage)

-   Select the **+** button, then select **Data Set**
-   For the type, select **Azure Data Lake Storage Gen2**
-   Select **Continue**
-   For the data format, select **JSON**
-   Select **Continue**
-   For the name, type **orders_storage**
-   For the linked service, select **AzStorage**
-   For the file system, type **orders**
-   Select **OK**

## Create a Pipeline

-   Select the **+** button, then select **Pipeline-\>Pipeline**
-   On the right dialog, for the name, type **PostgreSQL_to_storage**
-   In the middle navigation, expand **Move & transform**
-   Drag the **Copy data** activity to the design surface
-   In the **General** tab on the bottom middle, for the pipeline name,
    type **PostgreSQL_to_storage**
-   Select the **Source** tab, then select the **orders_database** data
    set
-   For the **Use query**, select **Query**
-   Place the mouse in the text area, select **Add dynamic content**
-   For the query text, type **select \* from orders where created_at
    \>= '@pipeline().parameters.LastCreateDate'**
-   Select **OK**
-   Select the **Sink** tab, then select the **orders_storage** data set
-   Select the main pipeline canvas (click the white area around the
    copy data activity), then select **Parameters**
-   Select **+ New**
-   For the name, tyep **LastCreateDate**
-   For the type, select **String**
-   For the default value, type **@trigger().scheduledTime**

## Add a trigger

-   In the top middle, select the **Add trigger** button
-   Select **New/Edit**
-   Select the **Choose trigger** dropdown, then select **+New**
-   For the name, type **UserScheduleTrigger**
-   For the recurrance, select **1 day**
-   Select **OK**
-   For the pipeline parameter value, type **@trigger().scheduledTime**
-   Select **OK**

## Publish

-   Select **Publish all**, in the dialog you should see four artifacts.
-   Select **Publish**

## Test the pipeline

-   In the middle top area, select the **Trigger (1)** button
-   Select **Trigger now**
-   For the `LastCreateDate`, type the begining of the current year (ex.
    `1/1/2024`)
-   Select **OK**
-   Open a new browser window to the Azure Portal
-   Browse to the **pgsqldevSUFFIX** storage account
-   Under **Data storage**, select **Containers**
-   Select the **orders** container
-   Notice that a new file is created that contains the exported data.

# Azure Synapse Analytics with PostgreSQL

## Create PostgreSQL Linked Service

-   Create a new Azure Synapse Analytics workspace
-   Navigate to the **pgsqldevSUFFIX** Azure Synapce Analytics Workspace
-   Under **Security**, select **Networking**
-   Check the **Allow Azure services and resources to access this
    workspace** checkbox
-   Select the **+ Add client IP**
-   Select **Save**
-   Select **Overview**, then n the **Getting started** area, select the
    **Open** link for Synapse Studio
-   Login if prompted.
-   Select the **Manage** tab
-   Under **External connections** select **Linked services**
-   Select **+ New**
-   For the type, select **Azure Database for PostgreSQL**, select
    **Continue**
-   For the name, type **ContosoStore**
-   For the account selection, select **From Azure Subscription**
-   Select the subscription
-   Select the **pgsqldevSUFFIX** Azure Database for PostgreSQL Flexible
    Server server
-   For the database name, type **ContosoStore**
-   For the username, type **wsuser**
-   For the password, type **Solliance123**
-   Select **Test connection**, ensure a success message is displayed.
-   Select **Create**

## Create PowerBI Workspace

-   Open the Power BI Portal, https://powerbi.microsoft.com
-   Sign in with your lab credentials
-   In the left navigation, expand **Workspaces**
-   Select **Create a workspace**
-   For the name, type **PostgreSQL**
-   Select **Apply**

## Create PowerBI Linked Service

-   Switch back to Azure Synapse
-   Select the **Manage** tab
-   Under **External connections** select **Linked services**
-   Select **+ New**
-   For the type, select **Power BI**, select **Continue**
-   For the name, type **PowerBI**
-   Select the lab tenant
-   Select the **PostgreSQL** workspace
-   Select **Create**

## Create Integration Dataset

-   Select the **Data** tab
-   Select the **+** button
-   Select **Integration Dataset**
-   For the type, select **Azure Database for PostgreSQL**, select
    **Continue**
-   For the name, type **ContosoStore_Orders**
-   For the linked service **ContosoStore**
-   Select **OK**
-   Select **Publish all**, then select **Publish**

## Create PowerBI Desktop Report (Dataset)

-   Switch to the **paw-1** virtual machine
-   Open **Power BI Desktop**
-   Select **Get data**
-   Select **PostgreSQL database**
-   Select **Connect**
-   For the servername, enter **pgsqldevSUFFIXflex16**
-   For the database, select **contosostore**
-   Select **OK**
-   Select the **Database** tab
-   For the user name, type **wsuser**
-   For the password, type **Solliance123**
-   Select **Connect**
-   Check all the checkboxes
-   Select **Load**
-   Select **File-\>Save as**, save the report to the desktop as
    **PostgreSQL**
-   Select **Save**

## Publish the PowerBI report to Power BI Online

-   Select **File-\>Publish**
-   Select **Publish to Power BI**
-   When prompted, login with your lab credentials
-   Select the **PostgreSQL** workspace
-   Select **Select**
-   Select the **Open 'PostgreSQL.pbix' in Power BI** link
-   Login using your lab credentials.
-   Ensure the **PostgreSQL** workspace is selected
-   Select the **PostgreSQL** semantic model
-   In the **Tables** window, select the **public users** table
-   Select **Create paginated report**
-   Select **File-\>Save**, save the report as **Contoso Users**
-   Select **Save**, the report should load in the synapse workspace.

## Create PowerBI Report in Azure Synapse

-   Select the **Develop** tab
-   Select the **+** button
-   Select **Power BI report**
-   Select the **PostgreSQL** data set
-   Select **Create**
-   In the **Data** window, expand the **contosostore categories** table
-   Select the `id`, `name` and `img` fields.
-   Select **File-\>Save as**
-   Save the report as **Contoso Categories**
-   Select **Save**, the report should load in the synapse workspace.

# Azure Batch with PostgreSQL

## Setup

-   Create a `Batch Service` in Azure (one is created via the arm
    templates)
-   Set the PostgreSQL instance to have private endpoint

## Configure Batch Service

-   Browse to the Azure Portal
-   Select the `pgsqldevSUFFIX` batch service
-   Under **Features** select **Pools**
-   Ensure a pool called **main** is displayed, if not create it.
-   Select the **main** pool
-   Under **Settings**, select **Scale**
-   Modify the `Target Spot/low-priority nodes` to **1**
-   Select **Save**
-   Navigate back to the Azure Batch instance
-   Under **Settings**, select **Identity**
-   Select **System assigned**
-   Select **Save**, in the dialog select **Yes**

## Create a Batch Job

-   Under **Features**, select **Jobs**
-   Select **+ Add**
-   For the name, type **PostgreSQL_job**
-   For the current pool, select the **main** pool
-   For **ADVANCED SETTINGS**, select **Custom**
-   Select the **Environment Settings** link
-   Add the following environment variables:
    -   DB_HOST = pgsqldevSUFFIXflex16.postgres.database.azure.com
    -   DB_DATABASE = contosostore
    -   DB_PORT = 5432
    -   DB_USER = wsuser
    -   DB_PASSWORD = Solliance123
-   Select **Select**
-   Select **OK**

## Create an application

-   Zip the
    `C:\labfiles\microsoft-postgresql-developer-guide\Artifacts\07-03-AzureBatch\applications`
    folder, notice the contents
-   Switch to the Azure Portal and the Azure Batch instance
-   Under **Features** select **Applications**
-   Select **+Add**
-   For the name, type **app01_PostgreSQL**
-   For the version, type **1.0.0**\*
-   For the applciation package, browse to the zip file that was just
    created.
-   Select **Submit**

## Create a Batch Task

-   Under **General** select **Jobs**

-   Select the new **PostgreSQL_job**

-   Under **General**, select **Tasks**

-   Select **+ Add**

-   For the task id, type **main_01**

-   For the display name, type **PostgreSQL_copy_orders**

-   For the command line, type the following:

    ``` powershell
    powershell powershell -command ("(Get-ChildItem Env:AZ_BATCH_APP_PACKAGE_app01_PostgreSQL#1.0.0).Value" + '\applications\PostgreSQL_copy_orders.ps1')
    ```

-   For the **User identity**, select **Pool autouser, Admin**

-   Select **Application packages** link

-   Select the **app01_PostgreSQL** package and version **1.0.0**

-   Select **Select**

-   Select **Submit**, after a few seconds, the state will show
    **Running**

## Review the job status

-   Select the **main_01** task
-   Review the results in the `stdout.txt` file, it should contain data,
    if no data is present, review the `stderr.txt` and fix any issues

## Setup Managed Identity (certificate)

The steps above utilize hardcoded values to gain access to the target
database instance. It is possible to setup a managed identity with Azure
Batch such that credentials can be retrieved at runtime using a managed
identity of the Azure Batch node pool.

-   On the **paw-1** virtual machine, run the following:

``` powershell
choco install openssl -y

cd c:\temp

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";C:\Program Files\OpenSSL-Win64\bin"

openssl genrsa -out server.pem 2048

openssl req -new -key server.pem -out server.csr
```

-   When prompted, enter the requested information (press `ENTER` to
    select all the defaults)

``` powershell
openssl x509 -req -days 365 -in server.csr -signkey server.pem -out server.crt

openssl pkcs12 -export -out certificate.pfx -inkey server.pem -in server.crt
```

-   Enter the certificate password, **Solliance123**\*
-   Run the following to create a service principal based on the
    certificate, be sure to replace the `SUFFIX`:

``` powershell
Connect-AzAccount

Select-AzSubscription "SUBSCRIPTION_NAME";

$certificateFilePath = "c:\temp\server.crt";
$now = [System.DateTime]::Now;

# Set this to the expiration date of the certificate
$expirationDate = [System.DateTime]::now.Addyears(1);

# Point the script at the cer file created $cerCertificateFilePath = 'c:\temp\batchcertificate.cer'
$cer = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2
$cer.Import($certificateFilePath)

# Load the certificate into memory
$credValue = [System.Convert]::ToBase64String($cer.GetRawCertData())

#create a new app registration...
$newADApplication = New-AzADApplication -DisplayName "Batch Key Vault Access" -certValue $credValue -StartDate $cer.NotBefore -EndDate $cer.NotAfter

# Create new AAD service principal that uses this application
$newAzureAdPrincipal = New-AzADServicePrincipal -DisplayName $newAdApplication.AppId -CertValue $credValue -StartDate $cer.NotBefore -EndDate $cer.NotAfter;
```

-   Run the following to grant permission to the new service principal:

``` powershell
Set-AzKeyVaultAccessPolicy -VaultName 'pgsqldevSUFFIX-kv' -ServicePrincipalName $newAzureAdPrincipal.AppId -PermissionsToSecrets 'Get'
```

-   Get the needed information for the environment variables:

``` powershell
$thumbprint = $cer.Thumbprint
$tenantId = $(Get-AzContext).Tenant.Id
$appId = $newAzureAdPrincipal.AppId

write-host "Thumbprint: $thumbprint"
write-host "TenantId: $tenantId"
write-host "AppId: $appId"
```

-   Upload the PFX certificate to Azure Batch
    -   Browse to the Batch instance
    -   Under **Features**, select **Certificates**
    -   Select **+Add**
    -   Browse to the `c:\temp\certificate.pfx` file
    -   Type the password, **Solliance123**
    -   Paste the thumprint into the thumbprint textbox
    -   Select **Create**, a dialog showing the certificate as
        **Active** should be displayed
    -   Under **Features**, select **Pools**
    -   Select the **main** pool
    -   Under **Settings**, select **Certificates**
    -   For the thumbprint, select the certificate thumbprint that was
        just created
    -   For the store location, select **LocalMachine**
    -   Select **Save**
    -   Under **General**, select **Nodes**
    -   Select the ellipses for the single node, select **Reboot**
    -   Select **Reboot**, continue on with the next few steps

### Create Key Vault values

-   Browse to the `pgsqldevSUFFIX` key vault
-   Under **Settings**, select **Access Policies**
-   Select **Add Access Policy**
-   For **Key permissions**, select **Get** and **List**
-   For **Secret permissions**, select **Get**, **List** and **Set**
-   For the **Select principal**, select **None selected**
-   Add your username
-   Select **Save**
-   Select **Add**
-   Select **Secrets**
-   Select **Generate/Import**, create the following secrets:
    -   DB-PASSWORD = Solliance123
    -   DB-SERVER = localhost
    -   DB-USER = wsuser
    -   DB-DATABASE = contosostore

### Create a new task with secure settings

-   Navigate back to the Azure Batch instance

-   Under **General**, select **Jobs**

-   Select the **PostgreSQL_job**

-   Under **General**, select **Tasks**

-   Select **+ Add**

-   For the task id, type **main_02**

-   For the display name, type **PostgreSQL_copy_orders_secure**

-   For the command line, type the following:

    ``` powershell
    powershell powershell -command ("(Get-ChildItem Env:AZ_BATCH_APP_PACKAGE_app01_PostgreSQL#1.0.0).Value" + '\applications\PostgreSQL_copy_orders_secure.ps1')
    ```

-   For the **User identity**, select **Pool autouse, Admin**

-   Select **Application packages** link

-   Select the **app01_PostgreSQL** package and version **1.0.0**

-   Select **Select**

-   Select **Environment settings**, create the following replacing the
    values from the PowerShell window:

    -   Batch_Thumbprint = {THUMBPRINT}
    -   Batch_TenantId = {TENANT_ID}
    -   Batch_AppId = {APP_ID}
    -   Batch_VaultName = {pgsqldevSUFFIX-kv}

-   Select **Submit**

-   Select the **main_02** task

-   Review the results in the `stdout.txt` file, data should be present,
    if there is no data, review the `stderr.txt` and fix any issues

# Push images to Azure Container Registry

1.  If they haven't already, push the images to the Azure Container
    Registry.

    ``` powershell
    $acrName = "pgsqldevSUFFIX";
    $resourceGroupName = "";
    $subscriptionName = "";

    Connect-AzAccount

    Select-AzSubscription $subscriptName;

    $acr = Get-AzContainerRegistry -Name $acrName -ResourceGroupName $resourceGroupName;

    $creds = $acr | Get-AzContainerRegistryCredential

    $acrPassword = $creds.password;
    $acrurl = $acr.loginserver;

    docker login -u $ACRNAME -p $ACRPASSWORD $ACRURL

    docker tag store-web "$ACRNAME.azurecr.io/store-web"

    docker tag store-db "$ACRNAME.azurecr.io/store-db"

    docker push "$ACRNAME.azurecr.io/store-web"

    docker push "$ACRNAME.azurecr.io/store-db"
    ```

# Migrate the on-premises database

## pgAdmin

### Export the data

1.  In the **paw-1** virtual machine, open **pgAdmin**
2.  Connect to the local Postgres 16 instance using `wsuser` with
    `Solliance123` password
3.  Expand **Databases-\>ContosoStore**
4.  Export the `ContosoStore` database
    1.  Right-click the `ContosoStore` database, select **Backup...**
    2.  For the filename, select the folder icon
    3.  Type `ContosoStore.backup`, select **Save**
    4.  On the **Objects** tab, select the `public` schema
    5.  Select **Backup**

### Import the data

1.  Connect to the target PostgreSQL instance
    1.  Right-click **Servers**, select **Register-\>Server**
    2.  For the hostname, type the dns of the Azure Database for
        PostgreSQL Flexible Server single server (ex
        `pgsqldevSUFFIXflex16.postgres.database.azure.com`)
    3.  Switch to the `Connection` tab
        1.  For the username, type **wsuser**
        2.  For the password type **Solliance123**
        3.  Toggle the **Save password?** button
        4.  Select **Save**
2.  Import the backup
    1.  Expand the
        **pgsqldevSUFFIXflex16.postgres.database.azure.com-\>Databases-\>contosostore**
        nodes
    2.  Right-click the **contosostore** node, select **Restore...**
    3.  For format, select **Custom or tar**
    4.  For the filename, select the folder icon.
    5.  Select the `C:\temp\ContosoStore\ContosoStore.backup` file, then
        select **Open**
    6.  Select **Restore**, after a few momemts, the database will be
        imported into Azure PostgreSQL

# Flexible Server deployment sample ARM template

## Create public network Flexible Server

Utilize the ARM template provided in this directory
(`PostgreSQL-flexible-server-template.json`) to quickly deploy a
PostgreSQL Flexible Server instance to Azure. When deploying, simply
provider the `serverName`, `administratorLogin`, and
`administratorLoginPassword` for the template to deploy successfully. It
is possible to edit these values in the provided parameter file
(`PostgreSQL-flexible-server-template.parameters.json`).

Once completed, use the Azure CLI to deploy the template.

``` bash
az deployment group create --resource-group [RESOURCE GROUP] --template-file ./PostgreSQL-flexible-server-template.json --parameters @PostgreSQL-flexible-server-template.parameters.json
```

## Create private network Flexible Server

-   Browse to the Azure Portal
-   Select your lab resource group
-   Select **Create**
-   Search for **PostgreSQL**, then select **Azure Database for
    PostgreSQL Flexible Server**
-   Select **Create**
-   In the drop down, select **Flexible Server**
-   Select **Create**
-   Select your lab subscription and resource group
-   For the name, type **pgsqldevSUFFIXflex**
-   For the PostgreSQL version, select **16**
-   For the admin username, type **wsuser**
-   For the password and confirm password, type **Solliance123**
-   Select **Next: Networking\>**
-   Select **Private Network access**
-   Select the lab subscription
-   Select the **pgsqldevSUFFIX-db** virtual network
-   Select the **default** subnet
-   For the private dns zone, select
    **private.postgres.database.azure.com**
-   Select **Review + create**
-   Select **Create**

  [01 / Azure PostgreSQL Developer Guide]: #azure-postgresql-developer-guide
  {#toc-azure-postgresql-developer-guide}
  [02 / Introduction to Azure Database for PostgreSQL Flexible Server]: #introduction-to-azure-database-for-postgresql-flexible-server
  {#toc-introduction-to-azure-database-for-postgresql-flexible-server}
  [What is PostgreSQL?]: #what-is-postgresql {#toc-what-is-postgresql}
  [Comparison with other RDBMS offerings]: #comparison-with-other-rdbms-offerings
  {#toc-comparison-with-other-rdbms-offerings}
  [PostgreSQL hosting options]: #postgresql-hosting-options
  {#toc-postgresql-hosting-options}
  [Hosting PostgreSQL on Azure - benefits and options]: #hosting-postgresql-on-azure---benefits-and-options
  {#toc-hosting-postgresql-on-azure---benefits-and-options}
  [Introduction to Azure resource management]: #introduction-to-azure-resource-management
  {#toc-introduction-to-azure-resource-management}
  [Introduction to Azure Database for PostgreSQL Flexible Server]: #introduction-to-azure-database-for-postgresql-flexible-server-1
  {#toc-introduction-to-azure-database-for-postgresql-flexible-server-1}
  [Migrate to Azure Database for Flexible Server]: #migrate-to-azure-database-for-flexible-server
  {#toc-migrate-to-azure-database-for-flexible-server}
  [02 / Summary]: #summary {#toc-summary}
  [03 / Getting Started - Setup and Tools]: #getting-started---setup-and-tools
  {#toc-getting-started---setup-and-tools}
  [Azure free account]: #azure-free-account {#toc-azure-free-account}
  [Azure subscriptions and limits]: #azure-subscriptions-and-limits
  {#toc-azure-subscriptions-and-limits}
  [Azure authentication]: #azure-authentication
  {#toc-azure-authentication}
  [Development editor tools]: #development-editor-tools
  {#toc-development-editor-tools}
  [Resources]: #resources {#toc-resources}
  [Create a Flexible Server database]: #create-a-flexible-server-database
  {#toc-create-a-flexible-server-database}
  [Connect, create and query Azure Database for PostgreSQL Flexible Server using pgAdmin]:
    #connect-create-and-query-azure-database-for-postgresql-flexible-server-using-pgadmin
  {#toc-connect-create-and-query-azure-database-for-postgresql-flexible-server-using-pgadmin}
  [Connect and query Azure Database for PostgreSQL Flexible Server using the Azure CLI]:
    #connect-and-query-azure-database-for-postgresql-flexible-server-using-the-azure-cli
  {#toc-connect-and-query-azure-database-for-postgresql-flexible-server-using-the-azure-cli}
  [Language support]: #language-support {#toc-language-support}
  [03 / Summary]: #summary-1 {#toc-summary-1}
  [04 / End to End application development]: #end-to-end-application-development
  {#toc-end-to-end-application-development}
  [Common Azure development services overview]: #common-azure-development-services-overview
  {#toc-common-azure-development-services-overview}
  [Introduction to the Sample Application]: #introduction-to-the-sample-application
  {#toc-introduction-to-the-sample-application}
  [Deployment evolution options]: #deployment-evolution-options
  {#toc-deployment-evolution-options}
  [Classic deployment]: #classic-deployment {#toc-classic-deployment}
  [Azure VM deployment]: #azure-vm-deployment {#toc-azure-vm-deployment}
  [Simple App Service deployment with Azure Database for PostgreSQL Flexible Server]:
    #simple-app-service-deployment-with-azure-database-for-postgresql-flexible-server
  {#toc-simple-app-service-deployment-with-azure-database-for-postgresql-flexible-server}
  [Continuous Integration (CI) and Continuous Delivery (CD)]: #continuous-integration-ci-and-continuous-delivery-cd
  {#toc-continuous-integration-ci-and-continuous-delivery-cd}
  [Containerizing layers with Docker]: #containerizing-layers-with-docker
  {#toc-containerizing-layers-with-docker}
  [Azure Container Instances (ACI)]: #azure-container-instances-aci
  {#toc-azure-container-instances-aci}
  [App Service Containers]: #app-service-containers
  {#toc-app-service-containers}
  [Azure Kubernetes Service (AKS)]: #azure-kubernetes-service-aks
  {#toc-azure-kubernetes-service-aks}
  [AKS with PostgreSQL Flexible Server]: #aks-with-postgresql-flexible-server
  {#toc-aks-with-postgresql-flexible-server}
  [Start the hands-on-tutorial developer journey]: #start-the-hands-on-tutorial-developer-journey
  {#toc-start-the-hands-on-tutorial-developer-journey}
  [Application continuous integration and deployment]: #application-continuous-integration-and-deployment
  {#toc-application-continuous-integration-and-deployment}
  [04 / Summary]: #summary-2 {#toc-summary-2}
  [Vectors]: #vectors {#toc-vectors}
  [Vector Similarity]: #vector-similarity {#toc-vector-similarity}
  [Embeddings]: #embeddings {#toc-embeddings}
  [References - DELETE]: #references---delete {#toc-references---delete}
  [Standard Patterns]: #standard-patterns {#toc-standard-patterns}
  [Large Languange Models (LLMs)]: #large-languange-models-llms
  {#toc-large-languange-models-llms}
  [Small Language Models (SLMs)]: #small-language-models-slms
  {#toc-small-language-models-slms}
  [Responsible AI]: #responsible-ai {#toc-responsible-ai}
  [Generative AI]: #generative-ai {#toc-generative-ai}
  [Chat Applications]: #chat-applications {#toc-chat-applications}
  [Image Generation]: #image-generation {#toc-image-generation}
  [Low Code Applciations]: #low-code-applciations
  {#toc-low-code-applciations}
  [External Applications with function calling]: #external-applications-with-function-calling
  {#toc-external-applications-with-function-calling}
  [Azure Database for PostgreSQL AI]: #azure-database-for-postgresql-ai
  {#toc-azure-database-for-postgresql-ai}
  [pgvector]: #pgvector {#toc-pgvector}
  [Azure extension]: #azure-extension {#toc-azure-extension}
  [embedding performance]: #embedding-performance
  {#toc-embedding-performance}
  [Other vector databases]: #other-vector-databases
  {#toc-other-vector-databases}
  [Overview]: #overview {#toc-overview}
  [Define your monitoring strategy]: #define-your-monitoring-strategy
  {#toc-define-your-monitoring-strategy}
  [Azure Monitor options]: #azure-monitor-options
  {#toc-azure-monitor-options}
  [Application monitoring]: #application-monitoring
  {#toc-application-monitoring}
  [Monitoring database operations]: #monitoring-database-operations
  {#toc-monitoring-database-operations}
  [Alerting guidelines]: #alerting-guidelines {#toc-alerting-guidelines}
  [05 / Summary]: #summary-3 {#toc-summary-3}
  [Recommended content]: #recommended-content {#toc-recommended-content}
  [06 / Networking and Security]: #networking-and-security
  {#toc-networking-and-security}
  [Public vs. Private Access]: #public-vs.-private-access
  {#toc-public-vs.-private-access}
  [Virtual Network Hierarchy]: #virtual-network-hierarchy
  {#toc-virtual-network-hierarchy}
  [Networking best practices for Flexible Server]: #networking-best-practices-for-flexible-server
  {#toc-networking-best-practices-for-flexible-server}
  [Security]: #security {#toc-security}
  [06 / Summary]: #summary-4 {#toc-summary-4}
  [Security checklist]: #security-checklist {#toc-security-checklist}
  [07 / Testing]: #testing {#toc-testing}
  [Approaches]: #approaches {#toc-approaches}
  [Testing data capture tools]: #testing-data-capture-tools
  {#toc-testing-data-capture-tools}
  [07 / Summary]: #summary-5 {#toc-summary-5}
  [08 / Performance and Optimization]: #performance-and-optimization
  {#toc-performance-and-optimization}
  [General performance tips]: #general-performance-tips
  {#toc-general-performance-tips}
  [Monitoring hardware and query performance]: #monitoring-hardware-and-query-performance
  {#toc-monitoring-hardware-and-query-performance}
  [Upgrading the tier]: #upgrading-the-tier {#toc-upgrading-the-tier}
  [Scaling the server]: #scaling-the-server {#toc-scaling-the-server}
  [Azure Database for PostgreSQL Flexible Server memory recommendations]:
    #azure-database-for-postgresql-flexible-server-memory-recommendations
  {#toc-azure-database-for-postgresql-flexible-server-memory-recommendations}
  [Moving regions]: #moving-regions {#toc-moving-regions}
  [Server parameters]: #server-parameters {#toc-server-parameters}
  [Upgrade Azure Database for PostgreSQL Flexible Server versions]: #upgrade-azure-database-for-postgresql-flexible-server-versions
  {#toc-upgrade-azure-database-for-postgresql-flexible-server-versions}
  [Customizing the container runtime]: #customizing-the-container-runtime
  {#toc-customizing-the-container-runtime}
  [Running PostgreSQL Benchmarks]: #running-postgresql-benchmarks
  {#toc-running-postgresql-benchmarks}
  [Instrumenting vital server resources]: #instrumenting-vital-server-resources
  {#toc-instrumenting-vital-server-resources}
  [1]: #server-parameters-1 {#toc-server-parameters-1}
  [Caching]: #caching {#toc-caching}
  [Azure Content Delivery Network]: #azure-content-delivery-network
  {#toc-azure-content-delivery-network}
  [08 / Summary]: #summary-6 {#toc-summary-6}
  [09 / Troubleshooting]: #troubleshooting {#toc-troubleshooting}
  [Common PostgreSQL issues]: #common-postgresql-issues
  {#toc-common-postgresql-issues}
  [Troubleshoot app issues in Azure App Service]: #troubleshoot-app-issues-in-azure-app-service
  {#toc-troubleshoot-app-issues-in-azure-app-service}
  [App debugging]: #app-debugging {#toc-app-debugging}
  [09 / Summary]: #summary-7 {#toc-summary-7}
  [10 / Business Continuity and Disaster Recovery]: #business-continuity-and-disaster-recovery
  {#toc-business-continuity-and-disaster-recovery}
  [High availability]: #high-availability {#toc-high-availability}
  [Replication]: #replication {#toc-replication}
  [Read replicas]: #read-replicas {#toc-read-replicas}
  [Deleted servers]: #deleted-servers {#toc-deleted-servers}
  [Regional failure]: #regional-failure {#toc-regional-failure}
  [Load Balancers]: #load-balancers {#toc-load-balancers}
  [Flexible Server resources]: #flexible-server-resources
  {#toc-flexible-server-resources}
  [Backup and restore]: #backup-and-restore {#toc-backup-and-restore}
  [Service maintenance]: #service-maintenance {#toc-service-maintenance}
  [Azure Database for PostgreSQL Flexible Server upgrade process]: #azure-database-for-postgresql-flexible-server-upgrade-process
  {#toc-azure-database-for-postgresql-flexible-server-upgrade-process}
  [10 / Summary]: #summary-8 {#toc-summary-8}
  [11 / Best practices]: #best-practices {#toc-best-practices}
  [Best practices for PostgreSQL Flexible Server apps]: #best-practices-for-postgresql-flexible-server-apps
  {#toc-best-practices-for-postgresql-flexible-server-apps}
  [11 / Summary]: #summary-9 {#toc-summary-9}
  [12 / PostgreSQL architectures]: #postgresql-architectures
  {#toc-postgresql-architectures}
  [Sample architectures]: #sample-architectures
  {#toc-sample-architectures}
  [12 / Summary]: #summary-10 {#toc-summary-10}
  [13 / Customer stories]: #customer-stories {#toc-customer-stories}
  [Case studies]: #case-studies {#toc-case-studies}
  [Common PostgreSQL Apps]: #common-postgresql-apps
  {#toc-common-postgresql-apps}
  [13 / Summary]: #summary-11 {#toc-summary-11}
  [14 / Zero to Hero]: #zero-to-hero {#toc-zero-to-hero}
  [Determining the evolutionary waypoint]: #determining-the-evolutionary-waypoint
  {#toc-determining-the-evolutionary-waypoint}
  [Summary of tasks]: #summary-of-tasks {#toc-summary-of-tasks}
  [14 / Final Summary]: #final-summary {#toc-final-summary}
  [2]: #resources-10 {#toc-resources-10}
  [Appendix]: #appendix {#toc-appendix}
  [Getting Started]: #getting-started {#toc-getting-started}
  [Create a Lab Resource Group]: #create-a-lab-resource-group
  {#toc-create-a-lab-resource-group}
  [Deploy the ARM Template]: #deploy-the-arm-template
  {#toc-deploy-the-arm-template}
  [Running the sample application]: #running-the-sample-application
  {#toc-running-the-sample-application}
  [Connecting to the database]: #connecting-to-the-database
  {#toc-connecting-to-the-database}
  [3]: #recommended-content-3 {#toc-recommended-content-3}
  [Deploying a Laravel app backed by a Java REST API to AKS]: #deploying-a-laravel-app-backed-by-a-java-rest-api-to-aks
  {#toc-deploying-a-laravel-app-backed-by-a-java-rest-api-to-aks}
  [Classic Deployment to PHP enabled IIS server]: #classic-deployment-to-php-enabled-iis-server
  {#toc-classic-deployment-to-php-enabled-iis-server}
  [Database Deployment]: #database-deployment {#toc-database-deployment}
  [Test the PHP Setup]: #test-the-php-setup {#toc-test-the-php-setup}
  [Test the Store Application]: #test-the-store-application
  {#toc-test-the-store-application}
  [Manual Deployment]: #manual-deployment {#toc-manual-deployment}
  [Cloud Deployment to Azure VM]: #cloud-deployment-to-azure-vm
  {#toc-cloud-deployment-to-azure-vm}
  [Test the Application #1]: #test-the-application-1
  {#toc-test-the-application-1}
  [Open Port 8080]: #open-port-8080 {#toc-open-port-8080}
  [Test the Application #2]: #test-the-application-2
  {#toc-test-the-application-2}
  [Edit .env file]: #edit-.env-file {#toc-edit-.env-file}
  [Enable Port 443]: #enable-port-443 {#toc-enable-port-443}
  [Open Port 443]: #open-port-443 {#toc-open-port-443}
  [Test the Application #3]: #test-the-application-3
  {#toc-test-the-application-3}
  [Cloud Deployment to Azure App Service]: #cloud-deployment-to-azure-app-service
  {#toc-cloud-deployment-to-azure-app-service}
  [Basic Deployment]: #basic-deployment {#toc-basic-deployment}
  [Migrate the database]: #migrate-the-database
  {#toc-migrate-the-database}
  [Test the Docker images]: #test-the-docker-images
  {#toc-test-the-docker-images}
  [Fix Storage persistence]: #fix-storage-persistence
  {#toc-fix-storage-persistence}
  [Re-test the Docker images]: #re-test-the-docker-images
  {#toc-re-test-the-docker-images}
  [Save the images to Azure Container Registry (ACR)]: #save-the-images-to-azure-container-registry-acr
  {#toc-save-the-images-to-azure-container-registry-acr}
  [Migrate to Azure Container Instances (ACI)]: #migrate-to-azure-container-instances-aci
  {#toc-migrate-to-azure-container-instances-aci}
  [Push images to Azure Container Registry]: #push-images-to-azure-container-registry
  {#toc-push-images-to-azure-container-registry}
  [Run images in ACI]: #run-images-in-aci {#toc-run-images-in-aci}
  [Test the images]: #test-the-images {#toc-test-the-images}
  [Multi-container single app service deployment]: #multi-container-single-app-service-deployment
  {#toc-multi-container-single-app-service-deployment}
  [Migrate to Azure App Service Containers]: #migrate-to-azure-app-service-containers
  {#toc-migrate-to-azure-app-service-containers}
  [4]: #push-images-to-azure-container-registry-1
  {#toc-push-images-to-azure-container-registry-1}
  [Run images in Azure App Service]: #run-images-in-azure-app-service
  {#toc-run-images-in-azure-app-service}
  [Test the containers]: #test-the-containers {#toc-test-the-containers}
  [Troubleshooting]: #troubleshooting-1 {#toc-troubleshooting-1}
  [Migrate to Azure Kubernetes Services (AKS)]: #migrate-to-azure-kubernetes-services-aks
  {#toc-migrate-to-azure-kubernetes-services-aks}
  [5]: #push-images-to-azure-container-registry-2
  {#toc-push-images-to-azure-container-registry-2}
  [Run images in Azure Kubernetes Service (AKS)]: #run-images-in-azure-kubernetes-service-aks
  {#toc-run-images-in-azure-kubernetes-service-aks}
  [Add services]: #add-services {#toc-add-services}
  [Create a Loadbalancer]: #create-a-loadbalancer
  {#toc-create-a-loadbalancer}
  [6]: #test-the-images-1 {#toc-test-the-images-1}
  [Create a deployment]: #create-a-deployment {#toc-create-a-deployment}
  [Utilize AKS and Azure Database for PostgreSQL Flexible Server]: #utilize-aks-and-azure-database-for-postgresql-flexible-server
  {#toc-utilize-aks-and-azure-database-for-postgresql-flexible-server}
  [7]: #push-images-to-azure-container-registry-3
  {#toc-push-images-to-azure-container-registry-3}
  [Run images in AKS]: #run-images-in-aks {#toc-run-images-in-aks}
  [Azure Function with PostgreSQL (.NET)]: #azure-function-with-postgresql-.net
  {#toc-azure-function-with-postgresql-.net}
  [Setup]: #setup-4 {#toc-setup-4}
  [Create the Function Application]: #create-the-function-application
  {#toc-create-the-function-application}
  [Deploy the Function Application]: #deploy-the-function-application
  {#toc-deploy-the-function-application}
  [Test the Function App in the Azure portal]: #test-the-function-app-in-the-azure-portal
  {#toc-test-the-function-app-in-the-azure-portal}
  [8]: #troubleshooting-2 {#toc-troubleshooting-2}
  [Azure Function with PostgreSQL (Python)]: #azure-function-with-postgresql-python
  {#toc-azure-function-with-postgresql-python}
  [9]: #setup-5 {#toc-setup-5}
  [10]: #create-the-function-application-1
  {#toc-create-the-function-application-1}
  [11]: #deploy-the-function-application-1
  {#toc-deploy-the-function-application-1}
  [12]: #test-the-function-app-in-the-azure-portal-1
  {#toc-test-the-function-app-in-the-azure-portal-1}
  [13]: #troubleshooting-3 {#toc-troubleshooting-3}
  [Deploy Azure Function App to Azure Kubernetes Service (AKS)]: #deploy-azure-function-app-to-azure-kubernetes-service-aks
  {#toc-deploy-azure-function-app-to-azure-kubernetes-service-aks}
  [Ensure Docker is started]: #ensure-docker-is-started
  {#toc-ensure-docker-is-started}
  [Setup AKS (KEDA)]: #setup-aks-keda {#toc-setup-aks-keda}
  [Ensure Docker Connection]: #ensure-docker-connection
  {#toc-ensure-docker-connection}
  [Configure Function App as Container]: #configure-function-app-as-container
  {#toc-configure-function-app-as-container}
  [Securing Azure Function Apps]: #securing-azure-function-apps
  {#toc-securing-azure-function-apps}
  [Enable PostgreSQL Microsoft Entra Authentication]: #enable-postgresql-microsoft-entra-authentication
  {#toc-enable-postgresql-microsoft-entra-authentication}
  [Create Managed Identity]: #create-managed-identity
  {#toc-create-managed-identity}
  [Login to the Azure Database with Microsoft Entra credentials]: #login-to-the-azure-database-with-microsoft-entra-credentials
  {#toc-login-to-the-azure-database-with-microsoft-entra-credentials}
  [Add MSI to Database]: #add-msi-to-database {#toc-add-msi-to-database}
  [Modify the code]: #modify-the-code {#toc-modify-the-code}
  [Logic Apps with PostgreSQL]: #logic-apps-with-postgresql
  {#toc-logic-apps-with-postgresql}
  [Create a Private Endpoint Flexible Server]: #create-a-private-endpoint-flexible-server
  {#toc-create-a-private-endpoint-flexible-server}
  [Private DNS - Virtual network link]: #private-dns---virtual-network-link
  {#toc-private-dns---virtual-network-link}
  [Configure the new Flexible Server instance]: #configure-the-new-flexible-server-instance
  {#toc-configure-the-new-flexible-server-instance}
  [Install the PostgreSQL .NET Connector]: #install-the-postgresql-.net-connector
  {#toc-install-the-postgresql-.net-connector}
  [Install the Logic Apps Gateway]: #install-the-logic-apps-gateway
  {#toc-install-the-logic-apps-gateway}
  [Configure the Logic Apps Gateway]: #configure-the-logic-apps-gateway
  {#toc-configure-the-logic-apps-gateway}
  [Configure the Logic App]: #configure-the-logic-app
  {#toc-configure-the-logic-app}
  [Configure supporting items]: #configure-supporting-items
  {#toc-configure-supporting-items}
  [Test Trigger]: #test-trigger {#toc-test-trigger}
  [Azure Data Factory with PostgreSQL]: #azure-data-factory-with-postgresql
  {#toc-azure-data-factory-with-postgresql}
  [14]: #setup-6 {#toc-setup-6}
  [Create Linked Services]: #create-linked-services
  {#toc-create-linked-services}
  [Create Dataset (PostgreSQL)]: #create-dataset-postgresql
  {#toc-create-dataset-postgresql}
  [Create Dataset (Storage)]: #create-dataset-storage
  {#toc-create-dataset-storage}
  [Create a Pipeline]: #create-a-pipeline {#toc-create-a-pipeline}
  [Add a trigger]: #add-a-trigger {#toc-add-a-trigger}
  [Publish]: #publish {#toc-publish}
  [Test the pipeline]: #test-the-pipeline {#toc-test-the-pipeline}
  [Azure Synapse Analytics with PostgreSQL]: #azure-synapse-analytics-with-postgresql
  {#toc-azure-synapse-analytics-with-postgresql}
  [Create PostgreSQL Linked Service]: #create-postgresql-linked-service
  {#toc-create-postgresql-linked-service}
  [Create PowerBI Workspace]: #create-powerbi-workspace
  {#toc-create-powerbi-workspace}
  [Create PowerBI Linked Service]: #create-powerbi-linked-service
  {#toc-create-powerbi-linked-service}
  [Create Integration Dataset]: #create-integration-dataset
  {#toc-create-integration-dataset}
  [Create PowerBI Desktop Report (Dataset)]: #create-powerbi-desktop-report-dataset
  {#toc-create-powerbi-desktop-report-dataset}
  [Publish the PowerBI report to Power BI Online]: #publish-the-powerbi-report-to-power-bi-online
  {#toc-publish-the-powerbi-report-to-power-bi-online}
  [Create PowerBI Report in Azure Synapse]: #create-powerbi-report-in-azure-synapse
  {#toc-create-powerbi-report-in-azure-synapse}
  [Azure Batch with PostgreSQL]: #azure-batch-with-postgresql
  {#toc-azure-batch-with-postgresql}
  [15]: #setup-7 {#toc-setup-7}
  [Configure Batch Service]: #configure-batch-service
  {#toc-configure-batch-service}
  [Create a Batch Job]: #create-a-batch-job {#toc-create-a-batch-job}
  [Create an application]: #create-an-application
  {#toc-create-an-application}
  [Create a Batch Task]: #create-a-batch-task {#toc-create-a-batch-task}
  [Review the job status]: #review-the-job-status
  {#toc-review-the-job-status}
  [Setup Managed Identity (certificate)]: #setup-managed-identity-certificate
  {#toc-setup-managed-identity-certificate}
  [16]: #push-images-to-azure-container-registry-4
  {#toc-push-images-to-azure-container-registry-4}
  [Migrate the on-premises database]: #migrate-the-on-premises-database
  {#toc-migrate-the-on-premises-database}
  [pgAdmin]: #pgadmin {#toc-pgadmin}
  [Flexible Server deployment sample ARM template]: #flexible-server-deployment-sample-arm-template
  {#toc-flexible-server-deployment-sample-arm-template}
  [Create public network Flexible Server]: #create-public-network-flexible-server
  {#toc-create-public-network-flexible-server}
  [Create private network Flexible Server]: #create-private-network-flexible-server
  {#toc-create-private-network-flexible-server}
  [PostgreSQL]: https://www.postgresql.org/
  [Microsoft Azure]: https://portal.azure.com/
  [The diagram shows the progression of development evolution in the guide.]:
    media/postgresql-journey.png "PostgreSQL Journey"
  [Azure Database for PostgreSQL Flexible Server]: https://learn.microsoft.com/azure/postgresql/flexible-server/overview
  [Azure Marketplace]: https://azuremarketplace.microsoft.com/marketplace/
  [Structured Query Language (SQL)]: https://en.wikipedia.org/wiki/SQL
  [PostgreSQL Feature Matrix]: https://www.postgresql.org/about/featurematrix/
  [MySQL]: https://www.mysql.com/
  [MariaDB]: https://mariadb.org/
  [Docker image]: https://hub.docker.com/_/postgres
  [Azure Partner Builder's Program]: https://partner.microsoft.com/marketing/azure-isv-technology-partners
  [Visual Studio]: https://visualstudio.microsoft.com/
  [Azure DevOps]: https://dev.azure.com/
  [GitHub]: https://github.com/
  [Power Apps]: https://powerapps.microsoft.com/
  [2020 McKinsey & Company report.]: https://azure.microsoft.com/mediahandler/files/resourcefiles/developer-velocity-how-software-excellence-fuels-business-performance/Developer-Velocity-How-software-excellence-fuels-business-performance-v4.pdf
  [This image demonstrates common development tools on the Microsoft cloud platform to expedite application development.]:
    media/ISV-Tech-Builders-tools-white.png "Microsoft cloud tooling"
  [free subscription]: https://azure.microsoft.com/free/search/
  [750 hours of Azure Database for PostgreSQL Flexible Server on a Burstable B1MS instance with 32GB storage for free]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/how-to-deploy-on-azure-free-account
  [This diagram shows the cloud adoption strategy.]: media/cloud-adoption-strategies.png
    "Cloud adoption strategy"
  [17]: https://azure.microsoft.com/services/PostgreSQL/#features
  [Microsoft Learn.]: https://docs.microsoft.com/learn/modules/cmu-cloud-computing-overview/4-building-blocks
  [Azure Fundamentals Microsoft Learn Module]: https://docs.microsoft.com/learn/modules/intro-to-azure-fundamentals/
  [IaaS and PaaS Azure service classification and categories]: ./media/azure-services.png
    "Categories of Azure services"
  [Virtual Machines (IaaS)]: https://docs.microsoft.com/azure/virtual-machines/windows/overview
  [Azure App Service (PaaS)]: https://docs.microsoft.com/azure/app-service/overview
  [Azure Container Instances (PaaS)]: https://docs.microsoft.com/azure/container-instances/container-instances-overview
  [Azure Kubernetes Service (PaaS)]: https://docs.microsoft.com/azure/aks/intro-kubernetes
  [Azure Fundamentals Microsoft Learn]: https://docs.microsoft.com/learn/modules/intro-to-azure-fundamentals/tour-of-azure-services
  [Management groups]: https://docs.microsoft.com/azure/governance/management-groups/overview
  [Resource groups]: https://docs.microsoft.com/azure/azure-resource-manager/management/manage-resource-groups-portal
  [This image shows Azure resource scopes.]: ./media/scope-levels.png
    "Azure resource scopes"
  [Azure landing zone]: https://docs.microsoft.com/azure/cloud-adoption-framework/ready/landing-zone/
  [This image demonstrates the Azure landing zone accelerator in the Azure portal, and how organizations can optimize Azure for their needs and innovate.]:
    ./media/landing-zone-accelerator.png
    "Azure landing zone accelerator screenshot"
  [Azure Resource Manager]: https://docs.microsoft.com/azure/azure-resource-manager/management/overview
  [Azure CLI]: https://docs.microsoft.com/cli/azure/what-is-azure-cli
  [Azure PowerShell]: https://docs.microsoft.com/powershell/azure/what-is-azure-powershell?view=azps-7.1.0
  [Azure REST API]: https://docs.microsoft.com/rest/api/azure/
  [Identity and access management (IAM)]: https://docs.microsoft.com/azure/role-based-access-control/overview
  [This image demonstrates how the Azure Resource Manager provides a robust, secure interface to Azure resources.]:
    media/consistent-management-layer.png
    "Azure Resource Manager explained"
  [Azure service management tool maturity progression.]: media/azure-management-tool-maturity.png
    "Azure service management tool"
  [Azure mobile app]: https://azure.microsoft.com/get-started/azure-portal/mobile-app/
  [The picture shows the initial Azure service list.]: media/azure-portal-services.png
    "Azure portal Services"
  [18]: https://docs.microsoft.com/marketplace/azure-marketplace-overview
  [The picture shows an example of Azure Marketplace search results.]: media/azure-marketplace-search-results.png
    "Azure Marketplace Results"
  [Shows an example of the Azure CLI.]: media/azure-cli-example.png
    "Azure CLI Example"
  [Azure command-line tool guide]: https://docs.microsoft.com/azure/developer/azure-cli/choose-the-right-azure-command-line-tool
  [Azure Cloud Shell]: https://shell.azure.com
  [download the CLI tools from Microsoft.]: https://docs.microsoft.com/cli/azure/install-azure-cli
  [installation document.]: https://docs.microsoft.com/powershell/azure/install-az-ps?view=azps-6.6.0
  [Azure PowerShell cmdlets]: https://learn.microsoft.com/powershell/module/az.postgresql/?view=azps-11.0.0
  [Infrastructure as Code (IaC)]: https://docs.microsoft.com/devops/deliver/what-is-infrastructure-as-code
  [ARM templates]: https://docs.microsoft.com/azure/azure-resource-manager/templates/
  [The picture shows an example of an ARM template JSON export.]: media/azure-template-json-example.png
    "Azure Template JSON"
  [Bicep]: https://docs.microsoft.com/azure/azure-resource-manager/bicep/overview
  [Bicep playground]: https://aka.ms/bicepdemo
  [Explore the Bicep template benefits]: https://docs.microsoft.com/azure/azure-resource-manager/bicep/overview?tabs=bicep
  [This image demonstrates part of a sample Bicep template for provisioning Azure Database for PostgreSQL Flexible Server.]:
    ./media/sample-bicep-template.png
    "Azure Database for PostgreSQL Flexible Server sample Bicep template"
  [Hashicorp Terraform]: https://www.terraform.io/
  [Terraform]: https://docs.microsoft.com/azure/developer/terraform/overview
  [This image demonstrates part of a sample Terraform template for provisioning Azure Database for PostgreSQL Flexible Server.]:
    ./media/sample-terraform-template.png
    "Azure Database for PostgreSQL Flexible Server sample Terraform template"
  [resource tags]: https://docs.microsoft.com/azure/azure-resource-manager/management/tag-resources?tabs=json
  [resource locks]: https://docs.microsoft.com/azure/azure-resource-manager/management/lock-resources?tabs=json
  [multiple support plans for businesses]: https://azure.microsoft.com/support/plans/
  [StackOverflow Azure Tag]: https://stackoverflow.com/questions/tagged/azure
  [Azure on Twitter]: https://twitter.com/azure
  [FastTrack for Azure]: https://azure.microsoft.com/programs/azure-fasttrack/
  [Azure Certifications and Exams]: https://docs.microsoft.com/learn/certifications/browse/?products=azure
  [Microsoft Learn]: https://docs.microsoft.com/learn/
  [Azure Fundamentals (AZ-900) Learning Path]: https://docs.microsoft.com/learn/paths/az-900-describe-cloud-concepts/
  [19]: https://www.pgadmin.org/
  [This image demonstrates the control and data plane for Azure Database for PostgreSQL Flexible Server.]:
    ./media/postgresql-conceptual-diagram.png
    "Control plane for Azure Database for PostgreSQL Flexible Server"
  [Choose the right PostgreSQL Server option in Azure]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-compare-single-server-flexible-server
  [Note]: media/note.png "Note"
  [Watch icon]: media/watch.png "Watch"
  [20]: https://youtu.be/NSEmJfUgNzE
  [*burstable* tier]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-compute-storage
  [Flexible Server instances can also be paused]: https://learn.microsoft.com/azure/postgresql/flexible-server/how-to-stop-start-server-portal
  [availability zone]: https://docs.microsoft.com/azure/availability-zones/az-overview
  [This image demonstrates how PostgreSQL Flexible Server works, with compute, storage, and backup storage.]:
    ./media/flexible-server.png
    "Operation of PostgreSQL Flexible Server"
  [User-scheduled service maintenance:]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-maintenance
  [This image demonstrates how to set a custom maintenance schedule in Flexible Server.]:
    media/custom_maintenance_schedule.png
    "Setting a custom maintenance schedule"
  [Network security:]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-security
  [Automatic backups:]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-backup-restore
  [This image demonstrates how to configure Flexible Server automatic backups.]:
    media/postgresql_backup_configuration.png
    "Configuring automatic backups"
  [Read replicas:]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-read-replicas
  [Input-output operations per second (IOPS):]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-compute-storage#iops
  [This image demonstrates server IOPS configuration.]: media/postgresql_iops_configuration.png
    "Configuring server IOPS"
  [Azure Pricing Calculator]: https://azure.microsoft.com/pricing/calculator/
  [Azure TCO Calculator]: https://azure.microsoft.com/pricing/tco/calculator/
  [detailed list of the limitations of Flexible Server]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-limits
  [Azure Database Migration Service (DMS)]: https://learn.microsoft.com/azure/dms/tutorial-postgresql-azure-postgresql-online
  [pgcopydb]: https://github.com/dimitri/pgcopydb
  [pg_dump and dp_restore]: https://learn.microsoft.com/azure/postgresql/migrate/how-to-migrate-using-dump-and-restore
  [Azure Portal]: https://learn.microsoft.com/azure/postgresql/migrate/how-to-migrate-single-to-flexible-portal
  [21]: https://learn.microsoft.com/azure/postgresql/migrate/how-to-migrate-single-to-flexible-cli
  [migration prerequisites]: https://learn.microsoft.com/azure/postgresql/migrate/concepts-single-to-flexible#migration-prerequisites
  [\$200 free credit for developers to trial Azure]: https://azure.microsoft.com/free
  [22]: ../02_IntroToPostgreSQL/02_02_Introduction_to_Azure_resource_mgmt.md
  [Azure's comprehensive list of service and subscription limits]: https://docs.microsoft.com/azure/azure-resource-manager/management/azure-subscription-service-limits
  [23]: #introduction-to-azure-resource-management
  [Microsoft docs]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-azure-ad-authentication
  [Microsoft download page.]: https://code.visualstudio.com/download
  [A simple screenshot of Visual Studio Code.]: media/VSCode_screenshot.png
    "Visual Studio Code"
  [24]: https://marketplace.visualstudio.com/items?itemName=ms-ossdata.vscode-postgresql
  [Azure App Service plan overview]: https://docs.microsoft.com/azure/app-service/overview-hosting-plans
  [Plan and manage costs for Azure App Service]: https://docs.microsoft.com/azure/app-service/overview-manage-costs
  [Quickstart document]: https://learn.microsoft.com/azure/postgresql/flexible-server/quickstart-create-server-portal
  [Azure's quickstart guide]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/quickstart-create-server-cli
  [`flexible-server create`]: https://learn.microsoft.com/cli/azure/postgres/flexible-server?view=azure-cli-latest#az-postgres-flexible-server-create
  [`flexible-server db create`]: https://learn.microsoft.com/cli/azure/postgres/flexible-server/db?view=azure-cli-latest#az-postgres-flexible-server-db-create
  [25]: https://learn.microsoft.com/azure/postgresql/flexible-server/quickstart-create-server-arm-template
  [26]: https://learn.microsoft.com/azure/postgresql/flexible-server/quickstart-create-server-bicep
  [article]: https://learn.microsoft.com/en-us/azure/developer/terraform/deploy-postgresql-flexible-server-database?tabs=azure-cli
  [27]: ./03_00_Getting_Started_Provision_PostgreSQL_Flexible_Server.md
  [pgAdmin Downloads]: https://www.pgadmin.org/download/
  [Chocolatey]: https://community.chocolatey.org/packages/pgadmin4
  [WinGet]: https://winget.run/search?query=pgAdmin
  [Homebrew]: https://formulae.brew.sh/cask/pgadmin4
  [The pgAdmin splash screen.]: media/pgadmin-splash.png
    "The pgAdmin splash screen"
  [28]: https://portal.azure.com
  [pgAdmin instructions are displayed on the Connect screen of the Flexible Server resource in the Azure Portal.]:
    media/pgadmin4-connection-instructions.png
    "pgAdmin server connection instructions"
  [The pgAdmin application displays with a connection to the Azure Database for PostgreSQL Flexible Server.]:
    media/flexible-server-connected.png
    "Connection established to Flexible Server in pgAdmin"
  [The pgAdmin Object explorer displays with the context menu open on the postgres database. Query Tool is selected in the context menu.]:
    media/query-tool-menu-postgres-db.png
    "postgres database context menu"
  [The pgAdmin Query Tool displays with the SQL statement to create a new database having executed successfully.]:
    media/query-tool-create-database.png
    "Query Tool with CREATE DATABASE statement"
  [The pgAdmin Object Explorer displays with the inventory database expanded to show the database objects.]:
    media/inventory-database-created.png "inventory database created"
  [The pgAdmin Object Explorer displays with the context menu open on the inventory database. PSQL Tool is selected in the context menu.]:
    media/psql-tool-menu-inventory-db.png
    "inventory database context menu"
  [The pgAdmin PSQL Tool displays with the SQL statement to create a new table having executed successfully.]:
    media/psql-tool-create-table.png
    "PSQL Tool with CREATE TABLE statement"
  [The pgAdmin Object Explorer displays with the inventory database expanded to show the products table.]:
    media/products-table-created.png "products table created"
  [The pgAdmin PSQL Tool displays with the SQL statements inserting new records having executed successfully.]:
    media/psql-tool-insert-record.png "PSQL Tool with INSERT statements"
  [The pgAdmin Query Tool displays with the SQL statement to query the products table having executed successfully.]:
    media/query-tool-select-all.png "Query Tool with SELECT statement"
  [The Query Tool displays with the value for orange having been changed to 125. The Save data changes button is highlighted.]:
    media/update-row-gui.png "Update row in grid"
  [The pgAdmin Query Tool displays with the SQL statement to delete a record from the products table having executed successfully.]:
    media/query-tool-delete-record.png
    "Query Tool with DELETE statement"
  [29]: media/query-tool-select-all-after-delete.png
    "Query Tool with SELECT statement"
  [The inventory database context window displays with the Delete item highlighted.]:
    media/delete-inventory-db.png
  [Quickstart: Connect and query with Azure CLI with Azure Database for PostgreSQL Flexible Server - Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/connect-azure-cli#create-a-database
  [30]: #create-a-flexible-server-database
  [This image demonstrates running queries against the Flexible Server instance using the Azure CLI.]:
    ./media/analyst-query.png
    "Running an admin query from the Azure CLI"
  [this document.]: https://learn.microsoft.com/azure/postgresql/flexible-server/howto-create-users?tabs=flexible-server
  [PHP]: #php
  [Java]: #java
  [Python]: #python
  [Other notable languages for PostgreSQL apps]: #other-notable-languages-for-postgresql-apps
  [downloads page.]: https://windows.php.net/download/
  [connection certificate]: https://dl.cacerts.digicert.com/DigiCertGlobalRootCA.crt.pem
  [Quickstart guide]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/connect-php
  [Tip]: media/tip.png "Tip"
  [Create a PHP web app in Azure App Service]: https://aka.ms/php-qs
  [Backend libraries for PostgreSQLi and PDO_PostgreSQL]: https://www.php.net/manual/en/PostgreSQLinfo.library.choosing.php
  [Introduction to PDO]: https://www.php.net/manual/en/intro.pdo.php
  [PDO_PostgreSQL Reference]: https://www.php.net/manual/en/ref.pdo-PostgreSQL.php
  [Configure a PHP app for Azure App Service]: https://docs.microsoft.com/azure/app-service/configure-language-php?pivots=platform-linux
  [php.ini directives]: https://www.php.net/manual/en/ini.list.php
  [Quickstart: Use Java and JDBC with Azure Database for PostgreSQL Flexible Server]:
    https://docs.microsoft.com/azure/PostgreSQL/flexible-server/connect-java
  [PostgreSQL drivers and management tools compatible with Azure Database for PostgreSQL Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-compatibility
  [PostgreSQL Connector/J Introduction]: https://dev.PostgreSQL.com/doc/connector-j/8.0/en/connector-j-overview.html
  [Flexible Server]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/connect-java
  [Single Server]: https://learn.microsoft.com/azure/postgresql/flexible-server/connect-java
  [Introduction to Spring Data JPA]: https://www.baeldung.com/the-persistence-layer-with-spring-data-jpa
  [Hibernate ORM]: https://hibernate.org/orm/
  [Installing the Azure Toolkit for Eclipse]: https://docs.microsoft.com/azure/developer/java/toolkit-for-eclipse/installation
  [Create a Hello World web app for Azure App Service using Eclipse]: https://docs.microsoft.com/azure/developer/java/toolkit-for-eclipse/create-hello-world-web-app
  [31]: #end-to-end-application-development
  [Azure for Java developer documentation]: https://docs.microsoft.com/azure/developer/java/?view=azure-java-stable
  [Maven Introduction]: https://maven.apache.org/guides/getting-started/index.html
  [Develop Java web app on Azure using Maven (App Service)]: https://docs.microsoft.com/learn/modules/publish-web-app-with-maven-plugin-for-azure-app-service/
  [Deploy Spring microservices to Azure (Spring Cloud)]: https://docs.microsoft.com/learn/modules/azure-spring-cloud-workshop/
  [Develop Java serverless Functions on Azure using Maven]: https://docs.microsoft.com/learn/modules/develop-azure-functions-app-with-maven-plugin/
  [Downloads page]: https://www.python.org/downloads/
  [Microsoft's sample]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/connect-python
  [Introduction to PostgreSQL Connector/Python]: https://dev.PostgreSQL.com/doc/connector-python/en/connector-python-introduction.html
  [PyPostgreSQL Samples]: https://pyPostgreSQL.readthedocs.io/en/latest/user/examples.html
  [PostgreSQLdb (PostgreSQLclient) User's Guide]: https://PostgreSQLclient.readthedocs.io/user_guide.html#PostgreSQLdb
  [Django ORM Support for PostgreSQL]: https://docs.djangoproject.com/en/3.2/ref/databases/#PostgreSQL-notes
  [PostgreSQL Connector/NET]: https://github.com/PostgreSQL/PostgreSQL-connector-net
  [from the PostgreSQL documentation]: https://dev.PostgreSQL.com/doc/connector-net/en/connector-net-entityframework-core.html
  [Async PostgreSQL Connector for .NET]: https://github.com/PostgreSQL-net/PostgreSQLConnector
  [*PostgreSQL2*]: https://github.com/brianmario/PostgreSQL2
  [This image explains the progression of topics in this chapter.]: media/end-to-end-deployment-chapter-steps.png
    "Chapter topics list"
  [32]: https://github.com/Azure/azure-PostgreSQL/blob/master/DeveloperGuide/step-1-sample-apps/README.md
  [33]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/02-02-CloudDeploy-AppSvc
  [Azure Functions]: https://docs.microsoft.com/azure/azure-functions/functions-overview
  [Azure Logic Apps]: https://docs.microsoft.com/azure/logic-apps/logic-apps-overview
  [custom handlers.]: https://docs.microsoft.com/azure/azure-functions/functions-custom-handlers
  [documentation]: https://docs.microsoft.com/azure/azure-functions/durable/durable-functions-overview?tabs=csharp
  [Azure Functions hosting options]: https://docs.microsoft.com/azure/azure-functions/functions-scale
  [34]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/06-01-FunctionApp-DotNet
  [35]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/06-02-FunctionApp-Python
  [Compare Azure Functions and Azure Logic Apps]: https://docs.microsoft.com/azure/azure-functions/functions-compare-logic-apps-ms-flow-webjobs#compare-azure-functions-and-azure-logic-apps
  [36]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/06-05-LogicApp
  [Build microservices on Azure]: https://docs.microsoft.com/azure/architecture/microservices/
  [Using domain analysis to model microservices]: https://docs.microsoft.com/azure/architecture/microservices/model/domain-analysis
  [37]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/sample-php-app-rest
  [About API Management]: https://docs.microsoft.com/azure/api-management/api-management-key-concepts
  [Self-hosted gateway overview]: https://docs.microsoft.com/azure/api-management/self-hosted-gateway-overview
  [Azure Functions:]: https://docs.microsoft.com/azure/azure-functions/functions-bindings-timer
  [Logic Apps:]: https://docs.microsoft.com/azure/logic-apps/concepts-schedule-automated-recurring-tasks-workflows
  [Read more icon]: media/read-more.png "Read more"
  [Copy activity performance and scalability guide]: https://docs.microsoft.com/azure/data-factory/copy-activity-performance
  [This image shows a sample architecture involving a PHP App Service instance and a Flexible Server instance.]:
    media/sample-app-level-1-architecture.png
    "Basic Azure deployment architecture"
  [This image shows the sample app site map.]: media/sample-app-site-map.png
    "Sample app site map"
  [Sample application tutorial]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-1-sample-apps
  [38]: #classic-deployment
  [39]: #azure-vm-deployment
  [40]: #simple-app-service-deployment-with-azure-database-for-postgresql-flexible-server
  [41]: #continuous-integration-ci-and-continuous-delivery-cd
  [42]: #containerizing-layers-with-docker
  [43]: #azure-container-instances-aci
  [44]: #app-service-containers
  [45]: #azure-kubernetes-service-aks
  [46]: #aks-with-postgresql-flexible-server
  [This image shows how to enter the Deploy a custom template wizard in the Azure portal.]:
    media/search-for-custom-template.png
    "Entering the Deploy a custom template wizard"
  [This image shows the Build your own template in the editor button.]: media/build-your-own-custom-template.png
    "Build your own template in the editor"
  [This image shows how to load the ARM template from the local drive.]:
    media/load-local-arm-template.png "Loading the ARM template"
  [This image shows how to save the ARM template in the editor.]: media/save-the-template.png
    "Saving the ARM template in the Azure editor"
  [Tutorial: Deploy a local ARM template]: https://docs.microsoft.com/azure/azure-resource-manager/templates/deployment-tutorial-local-template?tabs=azure-cli
  [Basic Template]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-0-create-development-vm/basic-template/template.json
  [Secure Template]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-0-create-development-vm/secure-template/template-secure.json
  [47]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/01-ClassicDeploy
  [48]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/02-01-CloudDeploy-Vm
  [Continuous Integration / Continuous Delivery]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/02-03-CloudDeploy-CICD
  [49]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/03-00-Docker
  [50]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/03-01-CloudDeploy-ACI
  [51]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/03-02-CloudDeploy-AppService-Container
  [52]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/04-AKS
  [53]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/05-CloudDeploy-PostgreSQLFlex
  [AKS]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/06-03-FunctionApp-AKS
  [Secured with MSI]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/06-04-FunctionApp-MSI
  [Azure Data Factory]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/07-01-AzureDataFactory
  [Azure Synapse Analytics]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/07-02-AzureSynapseAnalytics
  [Azure Batch]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-2-developer-journey-steps/07-03-AzureBatch
  [microservice]: https://azure.microsoft.com/solutions/microservice-applications/#solution-architectures
  [Design patterns for microservices]: https://docs.microsoft.com/azure/architecture/microservices/design/patterns
  [54]: https://github.com/Azure/azure-PostgreSQL/tree/master/DeveloperGuide/step-1-sample-apps/sample-php-app-rest
  [YAML.]: yaml.org
  [Azure Boards:]: https://docs.microsoft.com/azure/devops/boards/get-started/what-is-azure-boards?view=azure-devops
  [processes.]: https://docs.microsoft.com/azure/devops/boards/work-items/guidance/choose-process?view=azure-devops&tabs=basic-process
  [Azure Pipelines:]: https://docs.microsoft.com/azure/devops/pipelines/get-started/what-is-azure-pipelines?view=azure-devops
  [Azure Test Plans:]: https://docs.microsoft.com/azure/devops/test/overview?view=azure-devops
  [Azure Repos:]: https://docs.microsoft.com/azure/devops/repos/get-started/what-is-repos?view=azure-devops
  [Azure Artifacts:]: https://docs.microsoft.com/azure/devops/artifacts/start-using-azure-artifacts?view=azure-devops
  [Azure Pipelines]: https://docs.microsoft.com/azure/azure-resource-manager/templates/add-template-to-azure-pipelines
  [GitHub Actions]: https://docs.microsoft.com/azure/azure-resource-manager/templates/deploy-github-actions
  [Azure Service Operator]: https://azure.github.io/azure-service-operator/
  [Here]: https://techcommunity.microsoft.com/t5/azure-database-for-PostgreSQL-blog/using-azure-service-operator-to-provision-azure-db-for-PostgreSQL/ba-p/3056231
  [Azure Monitor]: https://docs.microsoft.com/azure/azure-monitor/overview
  [Log Analytics]: https://docs.microsoft.com/azure/azure-monitor/platform/design-logs-deployment
  [Azure Sentinel]: https://docs.microsoft.com/azure/sentinel/overview
  [Azure runbooks]: https://docs.microsoft.com/azure/automation/automation-quickstart-create-runbook
  [This image explains the Azure Monitor workflow.]: media/azure-monitor-overview-topics.png
    "Azure Monitor workflow"
  [This image clarifies how Azure Monitor integrates with various Azure data sources and management tools.]:
    media/how-azure-monitor-works.png "Azure Monitor integrations"
  [What is monitored by Azure Monitor?]: https://docs.microsoft.com/azure/azure-monitor/monitor-reference
  [plan their monitoring strategy]: https://docs.microsoft.com/azure/azure-monitor/best-practices-plan
  [Azure Monitor Pricing]: https://azure.microsoft.com/pricing/details/monitor/
  [This image shows the Azure Monitor Metrics icon.]: media/azure-metric-icon.png
    "Azure Monitor Metrics icon"
  [Azure Monitor Metrics overview]: https://docs.microsoft.com/azure/azure-monitor/essentials/data-platform-metrics
  [This image shows the Activity Logs icon.]: media/activity-logs.png
    "Activity logs icon"
  [platform log]: https://docs.microsoft.com/azure/azure-monitor/essentials/platform-logs-overview
  [Azure Activity log]: https://docs.microsoft.com/azure/azure-monitor/essentials/activity-log
  [This image shows the Azure Log Analytics icon.]: media/log-analytics-icon.png
    "Azure Log Analytics icon"
  [Overview of Log Analytics in Azure Monitor]: https://docs.microsoft.com/azure/azure-monitor/logs/log-analytics-overview
  [Log Analytics tutorial]: https://docs.microsoft.com/azure/azure-monitor/logs/log-analytics-tutorial
  [This image shows the Azure Monitor Workbooks icon.]: media/workbooks-icon.png
    "Azure Monitor Workbooks icon"
  [Azure Monitor Workbooks]: https://docs.microsoft.com/azure/azure-monitor/visualize/workbooks-overview
  [This image shows the Azure Resource Health icon.]: media/resource-health.png
    "Azure Resource Health icon"
  [Resource Health overview]: https://docs.microsoft.com/azure/service-health/resource-health-overview
  [Application Insights]: https://docs.microsoft.com/azure/azure-monitor/app/app-insights-overview
  [55]: media/application-insights-overview.png
  [Connection Strings]: https://docs.microsoft.com/azure/azure-monitor/app/sdk-connection-string?tabs=net
  [Azure Metrics Explorer]: https://docs.microsoft.com/azure/azure-monitor/essentials/metrics-getting-started
  [The Azure Metrics workflow is displayed.]: media/azure-metrics-workflow.png
    "Azure Metrics workflow"
  [The picture shows the time frame options for metric filtering.]: media/azure-metric-time-range.png
    "Metric time-frame filtering"
  [The picture shows the Metric category filter options.]: media/PostgreSQL-guide-metric-counters.png
    "Metric category filter options"
  [The Azure Metric request count example is displayed.]: media/PostgreSQL-guide-request-count-metric.png
    "Metrics request count"
  [The Azure Metrics new alert rule is displayed.]: media/azure-metric-new-alert-rule.png
    "Metrics alert rule example"
  [Manage usage and costs for Application Insights]: https://docs.microsoft.com/azure/azure-monitor/app/pricing
  [56]: https://www.youtube.com/watch?v=yQOnRNgly0M&list=PLlrxD0HtieHghqeFLMwaGxfxPbndt52Ap&index=7
  [This image shows PostgreSQL metrics in the Azure portal.]: media/azure-portal-PostgreSQL-overview.png
    "PostgreSQL metrics in the Azure portal"
  [This image shows Metrics on the Monitoring tab in the Azure portal.]:
    media/PostgreSQL-azure-portal-metrics.png
    "Monitoring tab in the Azure portal"
  [Monitor Azure Database for PostgreSQL Flexible Servers with built-in metrics]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/concepts-monitoring
  [This image shows how to graph metrics in the Azure portal Monitoring tab.]:
    media/PostgreSQL-diagnostic-settings.png
    "Graphing metrics in the Azure portal"
  [Set up diagnostics]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/tutorial-configure-audit#set-up-diagnostics
  [This image shows a KQL query.]: media/azure-diagnostic-query.png
    "Sample KQL query"
  [This image shows KQL query results.]: media/azure-diagnostic-query-result.png
    "Sample KQL query results"
  [This image shows a KQL query that polls the PostgreSQL audit log.]: media/PostgreSQL-log-analytics-audit-log-query.png
    "KQL query for the PostgreSQL audit log"
  [View query insights by using Log Analytics]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/tutorial-query-performance-insights#view-query-insights-by-using-log-analytics
  [This image shows Azure Monitor Workbooks visualizations.]: media/workbook-example.png
    "Visualizations in Azure Monitor Workbooks"
  [This image shows QPI in the Azure portal.]: media/query-performance-insight.png
    "Azure portal QPI configuration"
  [Query Performance Insight tool]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/tutorial-query-performance-insights
  [Warning]: media/warning.png "Warning"
  [Monitor Azure Database for PostgreSQL Flexible Server by using Azure Monitor workbooks]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/concepts-workbooks
  [This image shows Azure Resource Health.]: media/resource-health-example.png
    "Azure Resource Health"
  [This image shows administrative events in the Azure Activity Log.]: media/activity-logs-example.png
    "Administrative events"
  [This image shows the details of an Activity Log event.]: media/activity-log-example-detail.png
    "Activity Log event details"
  [This image shows how to create resource alerts in the Azure portal.]:
    media/create-alert.png "Creating resource alerts"
  [This image shows how to create resource alerts from the Metrics section in the Azure portal.]:
    media/configure-alert-example.png
    "Creating resource alerts from the Metrics section"
  [Set up alerts on metrics for Azure Database for PostgreSQL Flexible Server-Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-alert-on-metric
  [audit log feature is disabled]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/concepts-audit-logs
  [Successful alerting strategy]: https://docs.microsoft.com/azure/cloud-adoption-framework/manage/monitor/response#successful-alerting-strategy
  [Azure Automation Runbooks]: https://docs.microsoft.com/azure/automation/automation-runbook-types
  [Microsoft blog]: https://azure.microsoft.com/blog/best-practices-for-alerting-on-metrics-with-azure-database-for-PostgreSQL-monitoring/
  [scale storage to increase IOPS capacity or provision additional IOPS]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/concepts-compute-storage
  [common alert schema]: https://docs.microsoft.com/azure/azure-monitor/alerts/alerts-common-schema
  [integrate with incident management systems like PagerDuty]: https://www.pagerduty.com/docs/guides/azure-integration-guide/
  [call Logic Apps]: https://docs.microsoft.com/azure/connectors/connectors-native-webhook
  [execute Azure Automation runbooks]: https://docs.microsoft.com/azure/automation/automation-webhooks
  [Azure CLI reference commands for Azure Monitor]: https://docs.microsoft.com/cli/azure/azure-cli-reference-for-monitor
  [Monitor and scale an Azure Database for PostgreSQL Flexible Server using Azure CLI]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/scripts/sample-cli-monitor-and-scale
  [Tutorial: Analyze metrics for an Azure resource]: https://docs.microsoft.com/azure/azure-monitor/essentials/tutorial-metrics
  [REST API Walkthrough]: https://docs.microsoft.com/azure/azure-monitor/essentials/rest-api-walkthrough
  [Azure Monitor REST API Reference]: https://docs.microsoft.com/rest/api/monitor/
  [Azure Service Health]: https://azure.microsoft.com/features/service-health/
  [Configure audit logs (Azure portal)]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/tutorial-configure-audit
  [Azure Monitor best practices]: https://docs.microsoft.com/azure/azure-monitor/best-practices
  [Cloud monitoring guide: Collect the right data]: https://docs.microsoft.com/azure/cloud-adoption-framework/manage/monitor/data-collection
  [Configure and access audit logs in the Azure CLI]: https://learn.microsoft.com/azure/postgresql/flexible-server/howto-configure-audit-logs-cli
  [Write your first query with Kusto Query Language (Microsoft Learn)]: https://docs.microsoft.com/learn/modules/write-first-query-kusto-query-language/
  [Azure Monitor Logs Overview]: https://docs.microsoft.com/azure/azure-monitor/logs/data-platform-logs
  [Application Monitoring for Azure App Service Overview]: https://docs.microsoft.com/azure/azure-monitor/app/azure-web-apps
  [Configure and access audit logs for Azure Database for PostgreSQL Flexible Server in the Azure Portal]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/howto-configure-audit-logs-portal
  [Kusto Query Language (KQL)]: https://docs.microsoft.com/azure/data-explorer/kusto/query/
  [SQL Kusto cheat sheet]: https://docs.microsoft.com/azure/data-explorer/kusto/query/sqlcheatsheet
  [Get started with log queries in Azure Monitor]: https://docs.microsoft.com/azure/azure-monitor/log-query/get-started-queries
  [Monitor Azure Database for PostgreSQL Flexible Server using Percona Monitoring and Management (PMM)]:
    https://techcommunity.microsoft.com/t5/azure-database-for-PostgreSQL-blog/monitor-azure-database-for-PostgreSQL-using-percona-monito%20ring-and/ba-p/2568545
  [57]: https://www.youtube.com/watch?v=LSNV5BW-g-U&list=PLlrxD0HtieHghqeFLMwaGxfxPbndt52Ap&index=6
  [firewall rules]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-firewall-rules
  [restrict public access]: https://learn.microsoft.com/azure/postgresql/flexible-server/howto-deny-public-network-access
  [This image shows how PostgreSQL Flexible Server instances evaluate firewall rules.]:
    media/firewall-rule-diagram.png "Firewall rule evaluation"
  [Manage firewall rules for Azure Database for PostgreSQL Flexible Server - Flexible Server using the Azure portal]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-manage-firewall-portal
  [Manage firewall rules for Azure Database for PostgreSQL Flexible Server - Flexible Server using Azure CLI]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-manage-firewall-cli
  [ARM Reference for Firewall Rules]: https://docs.microsoft.com/azure/templates/microsoft.dbforPostgreSQL/flexibleservers/firewallrules?tabs=json
  [Create and manage Azure Database for PostgreSQL Flexible Server firewall rules by using the Azure portal]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/howto-manage-firewall-using-portal
  [Create and manage Azure Database for PostgreSQL Flexible Server firewall rules by using the Azure CLI]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/howto-manage-firewall-using-cli
  [58]: https://docs.microsoft.com/azure/templates/microsoft.dbforPostgreSQL/servers/firewallrules?tabs=json
  [basic Azure Networking considerations]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-data-access-and-security-vnet
  [59]: media/warning.png "warning"
  [RFC 1918.]: https://datatracker.ietf.org/doc/html/rfc1918
  [Introduction to Azure]: ../02_IntroToPostgreSQL/02_02_Introduction_to_Azure.md
  [Virtual Network Peering]: https://docs.microsoft.com/azure/virtual-network/virtual-network-peering-overview
  [Azure VPN Gateway]: https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-about-vpngateways
  [Azure ExpressRoute]: https://docs.microsoft.com/azure/expressroute/expressroute-introduction
  [Introduction to Azure Virtual Networks]: https://docs.microsoft.com/learn/modules/introduction-to-azure-virtual-networks/
  [Portal]: https://docs.microsoft.com/azure/virtual-network/quick-create-portal
  [PowerShell]: https://docs.microsoft.com/azure/virtual-network/quick-create-powershell
  [CLI]: https://docs.microsoft.com/azure/virtual-network/quick-create-cli
  [ARM Template]: https://docs.microsoft.com/azure/virtual-network/quick-create-template
  [Private DNS zone overview]: https://docs.microsoft.com/azure/dns/private-dns-overview
  [60]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-manage-virtual-network-portal
  [61]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-manage-virtual-network-cli
  [62]: #introduction-to-azure-database-for-postgresql-flexible-server-1
  [hub and spoke configuration.]: https://docs.microsoft.com/azure/architecture/reference-architectures/hybrid-networking/hub-spoke?tabs=cli
  [Security and Compliance document]: 03_PostgreSQL_Security_Compliance.md
  [General Azure Networking Best Practices]: https://docs.microsoft.com/azure/cloud-adoption-framework/migrate/azure-best-practices/migrate-best-practices-networking
  [modify the applications]: https://learn.microsoft.com/azure/postgresql/flexible-server/howto-configure-ssl
  [63]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-connect-tls-ssl
  [Microsoft Purview]: https://docs.microsoft.com/azure/purview/overview
  [security baseline]: https://learn.microsoft.com/azure/postgresql/flexible-server/security-baseline
  [Selenium]: https://www.selenium.dev/
  [Selenium Grid]: https://www.selenium.dev/documentation/grid/
  [Selenium IDE]: https://www.selenium.dev/selenium-ide/
  [Selenium tests in Azure DevOps.]: https://techcommunity.microsoft.com/t5/testingspot-blog/continuous-testing-with-selenium-and-azure-devops/ba-p/3143366
  [This image demonstrates screenshots from a Selenium test in Azure DevOps.]:
    ./media/selenium-test-azure-devops.png "Selenium test screenshots"
  [This image shows how to implement a Blue/Green test using Azure Traffic Manager.]:
    media/azure-traffic-manager-blue-green.png
    "Azure Traffic Manager Blue/Green test"
  [Deployment Center example]: https://docs.microsoft.com/azure/app-service/deploy-github-actions?tabs=applevel
  [Azure Traffic Manager example]: https://azure.microsoft.com/blog/blue-green-deployments-using-azure-traffic-manager/
  [Application Gateway example]: https://techcommunity.microsoft.com/t5/apps-on-azure-blog/upgrading-aks-version-with-blue-green-deployment-i/ba-p/2527145
  [Event Hub throughput by tier]: https://docs.microsoft.com/azure/event-hubs/event-hubs-quotas#basic-vs-standard-vs-premium-vs-dedicated-tiers
  [Apache JMeter]: https://jmeter.apache.org/
  [This image demonstrates how to perform a load test at scale using CI/CD, JMeter, and ACI.]:
    ./media/load-testing-pipeline-jmeter.png "Load testing at scale"
  [Azure Load Testing Preview.]: https://docs.microsoft.com/azure/load-testing/quickstart-create-and-run-load-test
  [Grafana K6]: https://k6.io/
  [Azure DevOps Pipelines]: https://techcommunity.microsoft.com/t5/azure-devops/load-testing-with-azure-devops-and-k6/m-p/2489134
  [This image demonstrates container logs in the AKS cluster's Log Analytics workspace.]:
    ./media/container-logs-in-log-analytics.png
    "AKS cluster container logs"
  [This image demonstrates the maximum CPU usage of the AKS cluster's nodes, a feature provided by metrics from AKS.]:
    ./media/metric-visualization.png "Maximum CPU usage graph"
  [Supported languages for Azure App Insights]: https://docs.microsoft.com/azure/azure-monitor/app/platforms
  [Monitoring Azure Kubernetes Service (AKS) with Azure Monitor]: https://docs.microsoft.com/azure/aks/monitor-aks#scope-of-the-scenario
  [This image demonstrates a dashboard in Grafana showing CPU usage for a pod.]:
    ./media/grafana-dashboard.png "Pod CPU usage in Grafana"
  [Using Azure Kubernetes Service with Grafana and Prometheus]: https://techcommunity.microsoft.com/t5/apps-on-azure-blog/using-azure-kubernetes-service-with-grafana-and-prometheus/ba-p/3020459
  [Prometheus Overview]: https://prometheus.io/docs/introduction/overview
  [What is Grafana OSS]: https://grafana.com/docs/grafana/latest/introduction/oss-details/
  [Store Prometheus Metrics with Thanos, Azure Storage and Azure Kubernetes Service (AKS)]:
    https://techcommunity.microsoft.com/t5/apps-on-azure-blog/store-prometheus-metrics-with-thanos-azure-storage-and-azure/ba-p/3067849
  [What are Azure Pipelines?]: https://docs.microsoft.com/azure/devops/pipelines/get-started/what-is-azure-pipelines?view=azure-devops#:~:text=Azure%20Pipelines%20automatically%20builds%20and,ship%20it%20to%20any%20target
  [What is Azure Load Testing?]: https://docs.microsoft.com/azure/load-testing/overview-what-is-azure-load-testing?wt.mc_id=loadtesting_acompara4_webpage_cnl
  [read replica]: https://dev.PostgreSQL.com/doc/refman/5.7/en/replication-features.html
  [Best practices for optimal performance of your Azure Database for PostgreSQL Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/concept-performance-best-practices
  [limits]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-pricing-tiers
  [PostgreSQL DB Metrics]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-monitoring#metrics
  [paired Azure region]: https://docs.microsoft.com/azure/availability-zones/cross-region-replication-azure
  [This image shows PostgreSQL server parameters in the Azure portal.]: media/server_parameters.png
    "PostgreSQL server parameters"
  [64]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/concepts-server-parameters
  [Microsoft documentation]: https://learn.microsoft.com/azure/postgresql/flexible-server/migrate/PostgreSQL-on-premises-azure-db/08-data-migration
  [PHPBench tool]: https://github.com/phpbench/phpbench
  [Container insights overview]: https://docs.microsoft.com/azure/azure-monitor/containers/container-insights-overview
  [DBT2 Benchmark]: https://downloads.PostgreSQL.com/source/dbt2-0.37.50.16.tar.gz
  [SysBench Benchmark Tool]: https://downloads.PostgreSQL.com/source/sysbench-0.4.12.16.tar.gz
  [TPC-H]: https://www.tpc.org/tpch/
  [types of tests]: https://www.tpc.org/information/benchmarks5.asp
  [PostgreSQL Performance Schema]: https://learn.microsoft.com/azure/postgresql/flexible-server/howto-troubleshoot-sys-schema
  [This image shows how to use tables in the sys schema to optimize PostgreSQL queries.]:
    media/employee-query-full-table-scan.png
    "Using tables in the sys schema to optimize PostgreSQL queries"
  [log_bin_trust_function_creators]: https://dev.PostgreSQL.com/doc/refman/8.0/en/replication-options-binary-log.html#sysvar_log_bin_trust_function_creators
  [innodb_buffer_pool_size]: https://dev.PostgreSQL.com/doc/refman/8.0/en/innodb-parameters.html#sysvar_innodb_buffer_pool_size
  [innodb_file_per_table]: https://dev.PostgreSQL.com/doc/refman/8.0/en/innodb-parameters.html#sysvar_innodb_file_per_table
  [Use Azure portal to configure server parameters]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-configure-server-parameters-portal
  [User Azure CLI to configure server parameters]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-configure-server-parameters-cli
  [This graph demonstrates the performance benefits of thread pooling for a Flexible Server instance.]:
    ./media/thread-pooling-performance.png
    "Performance benefits of thread pooling"
  [Microsoft TechCommunity post]: https://techcommunity.microsoft.com/t5/azure-database-for-PostgreSQL-blog/achieve-up-to-a-50-performance-boost-in-azure-database-for-PostgreSQL/ba-p/2909691
  [Caching guidance]: https://docs.microsoft.com/azure/architecture/best-practices/caching
  [Redis cache]: https://redis.io/
  [Azure Cache for Redis]: https://docs.microsoft.com/azure/azure-cache-for-redis/cache-overview
  [Enterprise, Premium, Standard, and Basic tiers]: https://azure.microsoft.com/pricing/details/cache/
  [This image demonstrates how Azure CDN POPs optimize content delivery.]:
    ./media/cdn-overview.png "Azure CDN POP static content delivery"
  [65]: #postgresql-architectures
  [Troubleshoot connection issues to Azure Database for PostgreSQL Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/howto-troubleshoot-common-connection-issues
  [Handle transient errors and connect efficiently to Azure Database for PostgreSQL Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-connectivity
  [Error 1184]: https://dev.PostgreSQL.com/doc/PostgreSQL-errors/8.0/en/server-error-reference.html#error_er_new_aborting_connection
  [retire older gateways]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-connectivity-architecture#azure-database-for-PostgreSQL-gateway-ip-addresses
  [Azure Network Watcher]: https://docs.microsoft.com/azure/network-watcher/network-watcher-monitoring-overview
  [Error 1419]: https://dev.PostgreSQL.com/doc/PostgreSQL-errors/8.0/en/server-error-reference.html#error_er_binlog_create_routine_need_super
  [Error 1227]: https://dev.PostgreSQL.com/doc/PostgreSQL-errors/8.0/en/server-error-reference.html#error_er_specific_access_denied_error
  [PostgreSQL documentation]: https://dev.PostgreSQL.com/doc/refman/8.0/en/converting-tables-to-innodb.html
  [to set custom maintenance schedules.]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/concepts-maintenance
  [circuit breaker pattern]: https://docs.microsoft.com/azure/architecture/patterns/circuit-breaker
  [debugging an App Service app]: https://docs.microsoft.com/azure/app-service/troubleshoot-diagnostic-logs
  [Troubleshoot slow app performance issues in Azure App Service]: https://docs.microsoft.com/azure/app-service/troubleshoot-performance-degradation
  [Environment variables and app settings in Azure App Service]: https://docs.microsoft.com/azure/app-service/reference-app-settings?tabs=kudu%2Cdotnet
  [Azure App Service on Linux FAQ]: https://docs.microsoft.com/azure/app-service/faq-app-service-linux
  [KLogger]: https://github.com/katzgrau/KLogger
  [XDebug]: https://xdebug.org/docs/
  [Apps running on Azure App Service PHP and Container instances can take advantage of XDebug.]:
    https://azureossd.github.io/2020/05/05/debugging-php-application-on-azure-app-service-linux/
  [PHP Debug extension]: https://marketplace.visualstudio.com/items?itemName=xdebug.php-debug
  [opcode caching]: https://www.php.net/manual/en/intro.opcache.php
  [66]: #testing
  [retry logic]: https://docs.microsoft.com/azure/architecture/patterns/retry
  [This image demonstrates the Diagnose and solve problems tab of a Flexible Server instance in the Azure portal.]:
    ./media/troubleshoot-problems-portal.png
    "Diagnose and solve problems"
  [This image demonstrates how Azure Resource Health correlates Azure service outages with the customer's provisioned resources.]:
    ./media/resource-health-integration.png
    "Azure Resource Health integration"
  [send a support request from the Azure portal.]: https://portal.azure.com/#blade/Microsoft_Azure_Support/HelpAndSupportBlade/overview
  [This image shows how to open a detailed support ticket for Microsoft from the Azure portal.]:
    media/open-a-support%20ticket.png
    "Opening a detailed support ticket for Microsoft"
  [Troubleshoot errors commonly encountered during or post migration to Azure Database for PostgreSQL Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/howto-troubleshoot-common-errors
  [Troubleshoot data encryption in Azure Database for PostgreSQL Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/howto-data-encryption-troubleshoot
  [Azure Community Support]: https://azure.microsoft.com/support/community/
  [67]: https://www.youtube.com/watch?v=5hp8KlNNPpA&list=PLlrxD0HtieHghqeFLMwaGxfxPbndt52Ap&index=9
  [This image demonstrates Zone-Redundant HA for PostgreSQL Flexible Server.]:
    media/1-flexible-server-overview-zone-redundant-ha.png
    "Zone-Redundant HA"
  [This image demonstrates HA for PostgreSQL Flexible Server in a single zone.]:
    ./media/flexible-server-overview-same-zone-ha.png
    "HA in a single zone"
  [documentation.]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/concepts-high-availability
  [This image demonstrates a possible cross-region HA scenario using two virtual networks.]:
    ./media/cross-region-ha.png "Cross-region HA scenario"
  [68]: https://www.youtube.com/watch?v=K-MScJu4Jqw&list=PLlrxD0HtieHghqeFLMwaGxfxPbndt52Ap&index=10
  [69]: media/warning.png
  [70]: https://docs.microsoft.com/azure/azure-resource-manager/management/lock-resources
  [Azure Load Balancer]: https://docs.microsoft.com/azure/load-balancer/load-balancer-overview
  [Application Gateway]: https://docs.microsoft.com/azure/application-gateway/overview
  [run on an Azure VM]: https://techcommunity.microsoft.com/t5/azure-database-for-PostgreSQL-blog/load-balance-read-replicas-using-proxysql-in-azure-database-for/ba-p/880042
  [Azure Kubernetes Service.]: https://techcommunity.microsoft.com/t5/azure-database-for-PostgreSQL-blog/deploy-proxysql-as-a-service-on-kubernetes-using-azure-database/ba-p/1105959
  [71]: media/tip.png
  [This image demonstrates a possible microservices architecture with PostgreSQL read replicas.]:
    ./media/microservices-with-replication.png
    "Possible microservices architecture"
  [72]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-read-replicas-portal
  [73]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-read-replicas-cli
  [74]: https://www.youtube.com/watch?v=B7qGSX8IeSY&list=PLlrxD0HtieHghqeFLMwaGxfxPbndt52Ap&index=8
  [here.]: https://azure.microsoft.com/pricing/details/PostgreSQL/flexible-server/
  [Backup and restore in Azure Database for PostgreSQL Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-backup
  [Some regions]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-pricing-tiers#storage
  [Perform post-restore tasks]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-backup#perform-post-restore-tasks
  [Microsoft documentation.]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/concepts-backup-restore
  [Point-in-time restore with Azure Portal]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-restore-server-portal
  [Point-in-time restore with CLI]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-restore-server-cli
  [Azure CLI samples for Azure Database for PostgreSQL Flexible Server - Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/sample-scripts-azure-cli
  [this]: https://azure.microsoft.com/global-infrastructure/data-residency/#select-geography
  [75]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-connectivity-architecture
  [Manage scheduled maintenance settings using the Azure Portal (Flexible Server)]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-maintenance-portal
  [View service health notifications in the Azure Portal]: https://docs.microsoft.com/azure/service-health/service-notifications
  [Configure resource health alerts using Azure Portal]: https://docs.microsoft.com/azure/service-health/resource-health-alert-monitor-guide
  [Retired PostgreSQL engine versions not supported in Azure Database for PostgreSQL Flexible Server]:
    https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-version-policy#retired-PostgreSQL-engine-versions-not-supported-in-azure-database-for-PostgreSQL
  [planned maintenance notification]: https://learn.microsoft.com/azure/postgresql/flexible-server/concepts-monitoring#planned-maintenance-notification
  [76]: #networking-and-security
  [77]: #performance-and-optimization
  [78]: #business-continuity-and-disaster-recovery
  [Azure Well-Architected Framework]: https://docs.microsoft.com/azure/architecture/framework/
  [Azure Well-Architected Review utility.]: https://docs.microsoft.com/assessments/?id=azure-architecture-review&mode=pre-assessment
  [regions that support Availability Zones.]: https://docs.microsoft.com/azure/availability-zones/az-region
  [ProxySQL on a VM]: https://techcommunity.microsoft.com/t5/azure-database-for-PostgreSQL-blog/setting-up-proxysql-as-a-connection-pool-for-azure-database-for/ba-p/2589350
  [list of per-service retry recommendations.]: https://docs.microsoft.com/azure/architecture/best-practices/retry-service-specific
  [sysbench.]: https://techcommunity.microsoft.com/t5/azure-database-for-PostgreSQL-blog/benchmarking-azure-database-for-PostgreSQL-flexible-server-using/ba-p/3108799
  [Azure Architecture center]: https://docs.microsoft.com/azure/architecture/
  [Digital marketing using Azure Database for PostgreSQL Flexible Server:]:
    https://docs.microsoft.com/azure/architecture/solution-ideas/articles/digital-marketing-using-azure-database-for-PostgreSQL
  [Finance management apps using Azure Database for PostgreSQL Flexible Server:]:
    https://docs.microsoft.com/azure/architecture/solution-ideas/articles/finance-management-apps-using-azure-database-for-PostgreSQL
  [Power BI]: https://docs.microsoft.com/power-bi/fundamentals/power-bi-overview
  [Intelligent apps using Azure Database for PostgreSQL Flexible Server:]:
    https://docs.microsoft.com/azure/architecture/solution-ideas/articles/intelligent-apps-using-azure-database-for-PostgreSQL
  [Gaming using Azure Database for PostgreSQL Flexible Server:]: https://docs.microsoft.com/azure/architecture/solution-ideas/articles/gaming-using-azure-database-for-PostgreSQL
  [Retail and e-commerce using Azure PostgreSQL:]: https://docs.microsoft.com/azure/architecture/solution-ideas/articles/retail-and-ecommerce-using-azure-database-for-PostgreSQL
  [Scalable web and mobile applications using Azure Database for PostgreSQL Flexible Server:]:
    https://docs.microsoft.com/azure/architecture/solution-ideas/articles/scalable-web-and-mobile-applications-using-azure-database-for-PostgreSQL
  [Microsoft Customer Stories portal]: https://customers.microsoft.com/search?sq=%22Azure%20Database%20for%20PostgreSQL%22&ff=&p=2&so=story_publish_date%20desc
  [This image shows the Minecraft logo.]: media/minecraft-logo.png
    "Minecraft logo"
  [This image demonstrates the Minecraft Realms service running in Azure, accessing Azure Database for PostgreSQL Flexible Server.]:
    ./media/realms-migration.png "Minecraft Realms migration to Azure"
  [This image shows the LinkedBrain logo.]: media/linked-brain-logo.png
    "LinkedBrain logo"
  [Linked Brain]: https://customers.microsoft.com/story/1418505453083122843-linked-brain-en-japan
  [This image shows the T-Systems logo.]: media/t-systems-logo.png
    "T-Systems logo"
  [T-Systems]: https://customers.microsoft.com/story/724200-deutsche-telekom-telecommunications-azure
  [This image shows the logo of Children's Mercy Kansas City.]: media/children-mercy-logo.png
    "Children's Mercy Kansas City logo"
  [Children's Mercy Kansas City]: https://customers.microsoft.com/story/860516-childrens-mercy-health-provider-azure
  [This image shows the GeekWire logo.]: media/geekwire.png
    "GeekWire logo"
  [GeekWire]: https://customers.microsoft.com/story/geekwire
  [one from WordPress]: https://azuremarketplace.microsoft.com/marketplace/apps/WordPress.WordPress?tab=Overview
  [this offering]: https://azuremarketplace.microsoft.com/marketplace/apps/bitnami.moodle-frontend-manageddb-multitier?tab=Overview
  [79]: https://azuremarketplace.microsoft.com/marketplace/apps/bitnami.magento-chart?tab=Overview
  [Review homepage]: https://aka.ms/PostgreSQL
  [80]: http://aka.ms/PostgreSQLdocs
  [Tutorial]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/how-to-deploy-on-azure-free-account
  [Get started for free with an Azure free account!]: https://azure.microft.com/free/PostgreSQL
  [Azure Pricing Calculator, TCO Calculator]: https://azure.microsoft.com/pricing
  [Migrate your workloads to Azure DB for PostgreSQL]: https://learn.microsoft.com/azure/postgresql/flexible-server/migrate
  [What's new in Flexible Server?]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/whats-new
  [Tech Community Blog]: https://aka.ms/azure-db-PostgreSQL-blog
  [Twitter]: https://twitter.com/AzureDBPostgreSQL
  [LinkedIn]: https://www.linkedin.com/company/azure-database-for-PostgreSQL/
  [search for a Microsoft Partner]: https://www.microsoft.com/solution-providers/home
  [Microsoft MVP]: https://mvp.microsoft.com/MvpSearch
  [Microsoft Community Forum]: https://docs.microsoft.com/answers/topics/azure-database-PostgreSQL.html
  [StackOverflow for Azure PostgreSQL]: https://stackoverflow.com/questions/tagged/azure-database-PostgreSQL
  [Azure Facebook Group]: https://www.facebook.com/groups/MsftAzure
  [LinkedIn Azure Group]: https://www.linkedin.com/groups/2733961/
  [LinkedIn Azure Developers Group]: https://www.linkedin.com/groups/1731317/
  [whitepaper GitHub repository]: https://github.com/solliancenet/microsoft-PostgreSQL-developer-guide.git
  [PowerShell Core]: https://github.com/PowerShell/PowerShell
  [secure ARM template]: ../Artifacts/template-secure.json
  [parameters file]: ../Artifacts/template-secure.parameters.json
  [insecure ARM template]: ../Artifacts/template.json
  [81]: ../Artifacts/template.parameters.json
  [82]: https://github.com/Azure-App-Service/nginx-fpm
  [83]: https://github.com/Azure-App-Service/php
  [Displays the Marketplace button.]: media/market-place-button.png
    "Marketplace button"
  [Web app + database search result.]: media/microsoft-web-app-database-marketplace.png
  [Create web app database.]: media/create-web-app-database.png
    "Create Web App + Database"
  [App Service repository options.]: media/local-git.png
  [Local Git URL example]: media/local-git-url.png
  [Application Scope user and password]: media/application-scope-user-password.png
  [Git Credential Manager]: media/git-credential-manager-for-windows.png
  [Azure local git push example.]: media/azure-local-git-push.png
  [This image shows how to access the App Service SSH prompt from the Azure portal.]:
    media/ssh_terminal.png "Accessing the App Service SSH prompt"
  [Update APP_URL value]: media/update-app-url-env.png
  [This image shows the needed modifications to the /home/default file.]:
    media/nginx-home-default-update.png
    "Modifications to the /home/default file"
  [This image shows how to configure the App Service startup command in the Azure portal.]:
    media/general-settings-startup-command.png
    "App Service startup command"
  [ContosoNoshNow home page]: media/ContosoNoshNow-home-page.png
  [This image shows how to create the contosonoshnow database in the new Flexible Server instance.]:
    media/create-contosonoshnow-database.png
    "Creating the contosonoshnow database"
  [Configure the database environment variables.]: media/update-PostgreSQL-connection-info.png
  [This image shows how to create PHP migrations.]: media/php-laravel-database-creation.png
    "Creating PHP migrations"
  [Seeded database.]: media/seeded-database.png
  [This image shows how to create a sample order from the Laravel app.]:
    media/sample-order.png
    "Creating a sample order from the Laravel app"
  [This image shows the output of a SQL query that demonstrates the new order.]:
    media/verify-order-data.png "New order in SQL query results"
  [Configure a PHP app for Azure App Service - Access diagnostic logs]: https://docs.microsoft.com/azure/app-service/configure-language-php?pivots=platform-linux#access-diagnostic-logs
  [Deploying a Laravel application to Nginx server.]: https://laravel.com/docs/8.x/deployment#nginx
  [Local Git deployment to Azure App Service]: https://docs.microsoft.com/azure/app-service/deploy-local-git?tabs=cli
  [How PHP apps are detected and built.]: https://github.com/microsoft/Oryx/blob/main/doc/runtimes/php.md
  [Apache Maven:]: https://maven.apache.org/
  [Docker Desktop:]: https://docs.docker.com/desktop/
  [kubectl:]: https://kubernetes.io/docs/reference/kubectl/kubectl/
  [84]: https://learn.microsoft.com/azure/postgresql/flexible-server/flexible-server/tutorial-deploy-springboot-on-aks-vnet
  [This image demonstrates the IP address of the LoadBalancer service for the Laravel app.]:
    ./media/laravel-service-ip.png "Laravel service IP address"
  [This image demonstrates that the Laravel app functions without a problem when deployed to AKS.]:
    ./media/app-loads-aks.png "Laravel app loads"
  [This screen shot shows the results of the above commands.]: ./media/php_setup.png
    "Powershell window with results displayed"
  [This image demonstrates the loading screen for the Contoso NoshNow app.]:
    ./media/noshnow-app-load.png "Loading screen with random user"
  [This image demonstrates the VM IP address in the Overview tab.]: ./media/vm-ip-address.png
    "VM IP address"
  [This image demonstrates the added inbound security rule.]: ./media/nsg-rule.png
    "New inbound security rule"
  [This image demonstrates the Server Certificates tab in IIS Manager.]:
    ./media/server-certificates-iis-manager.png
    "Server Certificates in IIS Manager"
  [This image demonstrates an HTTPS binding in IIS.]: ./media/site-binding-iis.png
    "IIS HTTPS binding"
  [This image demonstrates the changes made to the /home/site/default file in the SSH session.]:
    ./media/web-server-config.png
    "Web server configuration file changes"
  [85]: ./Misc/02_MigrateDatabase
  [Push Images to Acr]: ./../Misc/01_PushImagesToAcr.md
  [Visual Studio 2022 Community Edition]: https://visualstudio.microsoft.com/downloads/
  [Azure Functions core tools MSI]: https://go.microsoft.com/fwlink/?linkid=2174087
  [This image demonstrates choosing the Azure Function App Linux deployment option.]:
    ./media/choose-linux-function-app.png "Azure Function App Linux"
  [This image demonstrates how to configure a GET request to the Function App endpoint from the Azure portal.]:
    ./media/azure-portal-function-test.png "GET request test"
  [86]: https://docs.microsoft.com/azure/azure-functions/configure-monitoring?tabs=v2#enable-application-insights-integration
  [`Azure Functions`]: https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azurefunctions
  [`Python`]: https://marketplace.visualstudio.com/items?itemName=ms-python.python
  [This image demonstrates how to create a new Function App project.]: ./media/create-function-app-vscode.png
    "New Function App project"
  [This image demonstrates configuring the HTTP Trigger for the new Function App.]:
    ./media/http-trigger-vscode.png "Configuring HTTP Trigger"
  [This image demonstrates the Virtual Environment and PostgreSQL connector installation in the PowerShell terminal.]:
    ./media/terminal-set-up.png
    "Virtual environment and connector installation"
  [Azure SSL certificate]: https://www.digicert.com/CACerts/BaltimoreCyberTrustRoot.crt.pem
  [This image demonstrates how to select the AddCustomerFunction from the Function App instance.]:
    ./media/select-function-from-portal.png "Selecting the Function"
  [This image demonstrates the logs of a successful Function App invocation.]:
    ./media/function-app-logs.png "Function App invocation logs"
  [This image demonstrates the first provisioning screen for Azure Database for PostgreSQL Flexible Server.]:
    ./media/az-PostgreSQL-db-create.png
    "First provisioning screen for Flexible Server"
  [This image demonstrates the Azure VNet integration.]: ./media/vnet-integration.png
    "Flexible Server VNet integration"
  [This image demonstrates how to disable SSL transport for Flexible Server.]:
    ./media/disable-secure-transport.png "Disable SSL transport"
  [`az PostgreSQL flexible-server create`]: https://docs.microsoft.com/cli/azure/PostgreSQL/flexible-server?view=azure-cli-latest#az-PostgreSQL-flexible-server-create
  [Download]: https://go.microsoft.com/fwlink/?LinkId=278885
  [87]: https://www.microsoft.com/download/details.aspx?id=53127
  [This image demonstrates the configuration for the on-premises data gateway.]:
    ./media/on-premises-data-gateway-config.png
    "On-premises data gateway configuration"
  [This image demonstrates how to configure the on-premises data gateway Azure connection.]:
    ./media/logic-apps-gateway-azure-config.png
    "Azure connection for data gateway"
  [This image demonstrates the recurrence trigger parameters for the Logic Apps instance.]:
    ./media/recurrence-logic-apps-trigger.png
    "Recurrence trigger parameters"
