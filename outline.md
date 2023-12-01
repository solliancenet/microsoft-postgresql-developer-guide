Outline (Combined)

Introduction

	Overall Target Audience (L200-L300)

	AI Target Audience (L100-L400) - Zero to Hero
	
		Azure PostgreSQL application development topics.
		
		Architectural examples and samples.
	
	What the guide is, what the guide isn't.
	
		Learn to build, test and deploy Azure PostgreSQL projects.
		
		Integrate PostgreSQL with other Azure Services.

Introduction to Azure Database for PostgreSQL Flexible Server

	What is PostgreSQL?
	
	PostgreSQL Hosting Options
	
		Iaas/PaaS
	
	Why Azure?
	
	Azure Database for PostgreSQL Flexible Server (Features and Concepts)
	
		Pricing Tiers
		
		Unsupported features

Getting Started

	Environment setup
	
		Azure
		
			Subscriptions
			
			Authentication (control vs data plane)
			
			Creating Landing zones
	
		Windows
		
			Visual Studio
			Visual Studio Code
				PostgreSQL extension
			IntelliJ
			Eclipse
		
		Linux
		
			TBD
		
		MacOS
		
			Visual Studio Code
			
	SDKs
	
		Language Support

			Python
		
			NodeJS
			
			Java
			
			Windows/.NET Core, Framework
	
	Get started with Azure Free Account
	
		Create Azure free account
		
		Guide to deploy Az DB for PostgreSQL with Azure free account
	
	Create Database
		
		Azure Portal
		
		Azure CLI
		
		ARM Template

	Connect & query databases
		
		PostgreSQL Workbench
		
		Azure CLI

		PHP

		Python
		
		Java

		.NET

		Connect to server in VNET
		
		Connect using TLS/SSL
	
	DB server Configuration
		
		Network
		
		Security
		
		Business Continuity

End to end development

	Type of PostgreSQL applications
	
		Web App
		
		Function App
		
		Microservices
		
		Batch
		
	Guide to choose the right service to host the application
	
		On Prem / Cloud - Azure, non-Azure
		
		Azure Cloud - App Services / Containers / AKS / 3rd party on Azure
	
	Integrating with other Azure Services
	
		Azure VMs
		
		Azure App Service
		
		Containerized Apps (ACI, ACR, App Svc)
		
		Azure Kubernetes Service 

		3rd party services: CMS like Wordpress, LMS like Moodle, e-commerce like Magento, 

	Versioning
	
		GitHub
		
		AzureDev Ops
		
		Code vs Database
	
	CI/CD
	
		Deployment Tools
		
			ARM
			
			Powershell
			
			CLI
			
			Azure DevOps
			
			GitHub
			
			Terraform
			
		Deployment targets
		
			Azure VM
			
			Azure App Svc / Slots
			
			MicroServices - ACI / ACR / AKS
			
			Choosing the right target.
		
		Configurations / Key Vault 

Developing AI Solutions

	Intro to AI

	AI Models

	Common Patterns (React, RAG)

	Vectors and Vector Stores

	PostgreSQL AI Features

	Building a PostgreSQL-based AI application

Application Telemetry

	Azure Monitor / Log Analytics

	App Insights

	OpenTelemetry

	Debugging

	Reporting / Read Replicas
	
Application Security / Secure Coding

	Managed Service Identities

	Security Baselines

	Azure Defender

Testing

	Unit Tests (xUnit)

	JMeter

Performance

	Tools (pgbench)

	Load Balancers
	
	Caching (app level + database level)
	
	Connection Pooling
	
	Read-replication
	
	Scaling

Troubleshooting
	
	Connection Errors / Networking

	Configuration errors

Best Practices

	Well architected framework (WAF)

Sample Architectures with Azure Database for PostgreSQL Flexible Server

	Industry focused (gaming, ecommerce, etc)
	
	Multi-node / instances
	
	Geo-routing (Azure Front Door)
	
Case Studies

	Reference customers and applications

Zero To Hero

	Determining the evolutionary waypoint

Resources

	All links / accounts
