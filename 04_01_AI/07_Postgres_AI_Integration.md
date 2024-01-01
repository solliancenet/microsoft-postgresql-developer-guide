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

### pgvector

TODO

### Azure extension

TODO

### embedding performance

TODO

### Other vector databases

In production, the Embedding Index would be stored in a vector database such as Azure Cognitive Search, Redis, Pinecone, Weaviate, to name but a few.