# Hands on lab: Using Hugging Face with Azure Database for PostgreSQL Flexible Server

The integration of embeddings generated using Azure OpenAI and Azure Database for PostgreSQL Flexible Server with the pgvector open-source extension for PostgreSQL presents a powerful and efficient solution for optimizing the product catalog similarity search experience. By using ML models and vector embeddings, businesses can enhance the accuracy and speed of similarity searches, personalized recommendations, and fraud detection, which ultimately leads to improved user satisfaction and a more personalized experience.

The use of pgvector provides scalability to query large datasets and also integrates with PostgreSQL’s existing features. Whether you’re navigating through extensive e-commerce product catalogs or delivering highly relevant recommendations, the combination of Azure OpenAI and pgvector equips organizations with the tools they need to succeed in a dynamic and data-driven world.

PostgreSQL’s extensibility makes it possible for developers to build new data types and indexing mechanisms as workloads continue to evolve. As we continue to see new innovations in AI and ML, we can use PostgreSQL for building applications that harness the power of these new AI/ML models.

## Setup

### Required Resources

You will need several resource to perform this lab.  These include:

- Azure Database for PostgreSQL Flexible Server
- Azure OpenAI enabled subscription
- Azure Machine Learning Studio

You can create these resources using the PostgreSQL Flexible Server Developer Guide Setup documentation:

- [Deployment Instructions](../../../11_03_Setup/00_Template_Deployment_Instructions.md)

### Software pre-requisites

All of this is done already in the lab setup scripts for the Lab virtual machine, but is provided here for reference.

- Install [Visual Studio Code](https://code.visualstudio.com/download)
- Install the [`Python`](https://marketplace.visualstudio.com/items?itemName=ms-python.python) extension
- Install [Python 3.11.x](https://www.python.org/downloads/)
- Install latest [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=powershell)

## Exercise 1: Hugging Face with Images

- Open the `ai_hugging_face.ipynb` notebook in Visual Studio Code.
- Follow the instructions in the notebook to run each cell.