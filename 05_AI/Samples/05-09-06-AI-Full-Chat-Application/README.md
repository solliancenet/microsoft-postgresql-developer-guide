# Hands-on Lab: Full Chat Application with Semantic Kernel, PostgreSQL, Azure Open AI

This solution demonstrates how to design and implement a RAG Pattern solution that incorporates PostgreSQL with Azure OpenAI Service and Azure Cognitive Search to build a vector search solution with an AI assistant user interface. The solution shows how to generate vectors on data stored in PostgreSQL using Azure OpenAI Service, how to implement vector search using the vector search capability of Azure Cognitive Search and get the response from Azure OpenAI Service's ChatGPT using the matched documents as a context. The solution includes the frontend and backend components hosted on Azure Kubernetes Service. The solution also showcases key concepts such as managing conversational context and history, managing tokens consumed by Azure OpenAI Service, as well as understanding how to write prompts for large language models such as ChatGPT so they produce the desired responses.

The scenario for this sample centers around a consumer retail "Intelligent Agent" that allows users to ask questions on vectorized product, customer and sales order data stored in the database. The data in this solution is the Cosmic Works sample. This data is an adapted subset of the Adventure Works 2017 dataset for a retail bike shop that sells bicycles, biking accessories, components and clothing. It has been ported over to PostgreSQL.

## Setup

### Required Resources

Several resources are required to perform this lab. These include:

- Azure Database for PostgreSQL Flexible Server
- Azure OpenAI enabled subscription
- Azure AI Search
- Azure App Service Plan, Azure App Service
- Storage Account

Create these resources using the PostgreSQL Flexible Server Developer Guide Setup documentation:

- [Deployment Instructions](../../../11_03_Setup/00_Template_Deployment_Instructions.md)

### Software pre-requisites

All of this is done already in the lab setup scripts for the Lab virtual machine but is provided here for reference.

- Install Visual Studio
- Install latest [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli-windows?tabs=powershell)

## Exercise 1: Full Chat Application with Semantic Kernel, PostgreSQL, Azure Open AI

- Clone the `TODO` repository
- Follow the instructions to deploy the environment
- Update the configuration and run the project
