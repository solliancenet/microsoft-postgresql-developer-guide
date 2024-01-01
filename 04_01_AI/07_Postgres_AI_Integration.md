## Azure Database for PostgreSQL AI

### Vector Databases

A vector database, also known as a vector database management system (DBMS), is a type of database system designed to store, manage, and query vector data efficiently. Traditional relational databases primarily handle structured data in tables, while vector databases are optimized for the storage and retrieval of multidimensional data points represented as vectors. These databases are useful for applications where operations such as similarity searches, geospatial data, recommendation systems, and clustering are involved.

Some key characteristics of vector databases:

- Vector Storage: Vector databases store data points as vectors with multiple dimensions. Each dimension represents a feature or attribute of the data point. These vectors could represent a wide range of data types, including numerical, categorical, and textual data.
- Efficient Vector Operations: Vector databases are optimized for performing vector operations, such as vector addition, subtraction, dot products, and similarity calculations (for example, cosine similarity or Euclidean distance).
- Efficient Search: Efficient indexing mechanisms are crucial for quick retrieval of similar vectors. Vector databases use various indexing mechanisms to enable fast retrieval.
- Query Languages: They provide query languages and APIs tailored for vector operations and similarity search. These query languages allow users to express their search criteria efficiently.
- Similarity Search: They excel at similarity searches, allowing users to find data points that are similar to a given query point. This characteristic is valuable in search and recommendation systems.
- Geospatial Data Handling: Some vector databases are designed for geospatial data, making them well-suited for applications like location-based services, GIS (Geographic Information Systems), and map-related tasks.
- Support for Diverse Data Types: Vector databases can store and manage various types of data, including vectors, images, text and more.

PostgreSQL can gain the capabilities of a vector database with the help of the `pgvector` extension.

### pgvector extension

The pgvector extension adds an open-source vector similarity search to PostgreSQL. By enabling the extension, you can utilize the various operators and functions on vector based data.

For more information, review [How to enable and use pgvector on Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-use-pgvector).

> NOTE: Although there are other embedding extensions (such as `pg_embedding`) available for PostgreSQL, only the `pgvector` extension is currently available for Azure Database for PostgreSQL Flexible Server.

### azure_ai extension

Azure Database for PostgreSQL extension for Azure AI enables you to use large language models (LLMS) and build rich generative AI applications within the database.  The Azure AI extension enables the database to call into various Azure AI services including Azure OpenAI and Azure Cognitive Services simplifying the development process allowing seamless integration into those services.

Once enabled, you will need to setup the endpoint and key settings for the extension in order to utilize it in your queries.

For more information, review the following:

- [Azure Database for PostgreSQL Flexible Server Azure AI Extension (Preview)](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/generative-ai-azure-overview).
- [Integrate Azure AI capabilities into Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-integrate-azure-ai)

### Embedding performance

If you co-locate your database instance in the same region as your Azure Open AI instance, you can gain some performance enhancements versus making the same calls over the internet or private networks.

If you will be performing a lot of vector embedding operations, ensure you resources are located as close as possible to each other.

### Other vector databases

In production, the Embedding Index would be stored in a vector database such as Azure Cognitive Search, Redis, Pinecone, Weaviate, to name but a few.
