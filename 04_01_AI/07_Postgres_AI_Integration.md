## Azure Database for PostgreSQL Flexible Server and Artificial Intelligence (AI)

### Vector Databases

A vector database, also known as a vector database management system (DBMS), is a type of database system designed to store, manage, and query vector data efficiently. Traditional relational databases primarily handle structured data in tables, while vector databases are optimized for the storage and retrieval of multidimensional data points represented as vectors. These databases are useful for applications where operations such as similarity searches, geospatial data, recommendation systems, and clustering are involved.

Some key characteristics of vector databases:

- **Vector Storage**: Vector databases store data points as vectors with multiple dimensions. Each dimension represents a feature or attribute of the data point. These vectors could represent a wide range of data types, including numerical, categorical, and textual data.
- **Efficient Vector Operations**: Vector databases are optimized for performing vector operations, such as vector addition, subtraction, dot products, and similarity calculations (for example, cosine similarity or Euclidean distance).
- **Efficient Search**: Efficient indexing mechanisms are crucial for quick retrieval of similar vectors. Vector databases use various indexing mechanisms to enable fast retrieval.
- **Query Languages**: They provide query languages and APIs tailored for vector operations and similarity search. These query languages allow users to express their search criteria efficiently.
- **Similarity Search**: They excel at similarity searches, allowing users to find data points that are similar to a given query point. This characteristic is valuable in search and recommendation systems.
- **Geospatial Data Handling**: Some vector databases are designed for geospatial data, making them well-suited for applications like location-based services, GIS (Geographic Information Systems), and map-related tasks.
- **Support for Diverse Data Types**: Vector databases can store and manage various types of data, including vectors, images, text and more.

PostgreSQL instances can gain the capabilities of a vector database with the help of the `pgvector` extension.

### pgvector extension

The [`pgvector` extension](https://github.com/pgvector/pgvector) adds an open-source vector similarity search to PostgreSQL. By enabling the extension, you can utilize the various operators and functions on vector based data.

For more information, review [How to enable and use pgvector on Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/azure/postgresql/flexible-server/how-to-use-pgvector).

> NOTE: Although there are other embedding extensions (such as `pg_embedding`) available for PostgreSQL, only the `pgvector` extension is currently available for Azure Database for PostgreSQL Flexible Server.

Once the `pgvector` extension is enabled, you can perform the following on your database:

- Define vector column types (up to 2000 dimensions)
- Perform vector searchs
- Create indexes (HNSW, IVFFlat)

For example, you can create a vector column with the following SQL:

```sql
CREATE TABLE IF NOT EXISTS products (
    id bigserial primary key,
    description text,
    url text,
    split int,
    descriptions_embeddings vector(384)
)
```

#### Search

By default, pgvector performs exact nearest neighbor search, which provides perfect recall.

#### Indexing

You can add an index to use approximate nearest neighbor search, which trades some recall for speed. Unlike typical indexes, you will see different results for queries after adding an approximate index. Supported index types are:

- **HNSW** - creates a multilayer graph. It has better query performance than IVFFlat (in terms of speed-recall tradeoff), but has slower build times and uses more memory. Also, an index can be created without any data in the table since there isn’t a training step like IVFFlat.
- **IVFFlat** - divides vectors into lists, and then searches a subset of those lists that are closest to the query vector. It has faster build times and uses less memory than HNSW, but has lower query performance (in terms of speed-recall tradeoff).

#### Functions

- **cosine_distance(vector, vector)** : double precision : cosine distance
- **inner_product(vector, vector)** : double precision : inner product
- **l2_distance(vector, vector)** : double precision : Euclidean distance
- **l1_distance(vector, vector)** : double precision : taxicab distance
- **vector_dims(vector)** : integer : number of dimensions
- **vector_norm(vector)** : double precision : Euclidean norm

### azure_ai extension

Azure Database for PostgreSQL Flexible Server extension for Azure AI enables you to use large language models (LLMS) and build rich generative AI applications within the database.  The Azure AI extension enables the database to call into various Azure AI services including Azure OpenAI and Azure Cognitive Services simplifying the development process allowing seamless integration into those services.

Once enabled, you will need to setup the endpoint and key settings for the extension in order to utilize it in your queries.

For more information, review the following:

- [Azure Database for PostgreSQL Flexible Server Azure AI Extension (Preview)](https://learn.microsoft.com/azure/postgresql/flexible-server/generative-ai-azure-overview).
- [Integrate Azure AI capabilities into Azure Database for PostgreSQL - Flexible Server](https://learn.microsoft.com/azure/postgresql/flexible-server/how-to-integrate-azure-ai)

### Embedding performance

If you co-locate your database instance in the same region as your Azure Open AI instance, you can gain some performance enhancements versus making the same calls over the internet or private networks.

If you will be performing a lot of vector embedding operations, ensure you resources are located as close as possible to each other.

### Other vector databases

In production, the Embedding Index would be stored in a vector database such as Azure Cognitive Search, Redis, Pinecone, Weaviate, to name but a few.

### Hybrid Search

In addition or searching on vectors, you can combine other content and metadata to further refine the results that are provided to the target models.  This can be helpful for creating category or metadata-based containers in your data.

### Integration with AI Frameworks

PostgreSQL is supported by several popular AI frameworks including:

- [Langchain](https://www.langchain.com/)
- [Semantic Kernal](https://learn.microsoft.com/en-us/semantic-kernel/overview/)

#### LangChain

LangChain is an open source framework for building AI applications using language models. LangChain provides tools and abstractions to improve the customization, accuracy, and relevancy of the information the target models generate. Developers can use LangChain components to build custom prompt chains or use several pre-built templates. LangChain also includes features that allow models to gain access to new data without retraining.

Language models excel at responding to user prompts in a general context, but do not perform well when used in a specific domain they were never trained on. Prompts are text strings that are used to help guide an LLM to the target response. For example, an LLM can provide a detailed answer in terms of how to approach the solution to a problem. However, it can't provide any realtime information of the solution without added context.

To support these types of scenerios, agents must integrate the organizations specific data sources and then apply prompt engineering tactis.  Prompt engineering refines inputs to a generative model with a specific structure and context.

LangChain's large set of open source code streamlines many of the intermediate steps when developing AI applications.  Using LangChain makes the process of prompt engineering much more efficient. Using its out of box capabilities, it is possible to effortlessly create applications such as chatbots, question-answering, content generation, summarizers, and more.

When using PostgreSQL with LangChain there three potential uses:

- Vector store (also called retreiver)
- Memory Store
- LangChain SqlToolkit

For example, the following psudo code shows how to create a retreiver that can be used in LangChain chains:

```python
connection_string = f'postgresql+psycopg2://{username}:{password}@{host}:{port}/{dbname}'

embeddings = OpenAIEmbeddings(
    deployment=embedding_model,
    openai_api_base=azure_endpoint,
    openai_api_key=azure_key,
    openai_api_type="azure",
)

collection_name = 'aidata'

db = PGVector(
    collection_name=collection_name,
    connection_string=connection_string,
    embedding_function=embeddings,
)

retriever = db.as_retriever()

prompt = PromptTemplate(
    template=prompt_prefix,
    input_variables=["context", "question"], #"summaries", "question"
)

llm = AzureChatOpenAI(deployment_name=deployment_name,
                        temperature=0,
                        openai_api_base=azure_endpoint,
                        openai_api_key=azure_key,
                        openai_api_type="azure",
                        openai_api_version=api_version,
                        model_version=model_version)

llm_chain = ConversationalRetrievalChain.from_llm(
    llm=llm,
    retriever=retriever,
    return_source_documents=False,
    chain_type="stuff",
    combine_docs_chain_kwargs={"prompt": prompt},
    verbose=True
)

answer = llm_chain.invoke(question, return_only_outputs=True)['answer']
```

When it comes to using it as a memory store:

```python
```

And then the SQLToolkit usage:

```python
db = SQLDatabase.from_uri(connection_string)

toolkit = SQLDatabaseToolkit(db=db, llm=llm)

agent_executor = create_sql_agent(
    llm=llm,
    toolkit=toolkit,
    verbose=True,
    handle_parsing_errors=handle_parsing_errors
)
```

#### Semantic Kernel

Semantic Kernel is an SDK that integrates Large Language Models (LLMs) like OpenAI, Azure OpenAI, and Hugging Face with conventional programming languages like C#, Python, and Java. Semantic Kernel achieves this by allowing you to define plugins that can be chained together in just a few lines of code.

What makes Semantic Kernel special, however, is its ability to automatically orchestrate plugins with AI. With Semantic Kernel planners, you can ask an LLM to generate a plan that achieves a user's unique goal. Afterwards, Semantic Kernel will execute the plan for the user.

Similar to LangChain, you can use PostgreSQL as a vector store or a memory store.

```python
kernel = sk.Kernel()

kernel.add_chat_service(
    "chat_completion",
    AzureChatCompletion(deployment_name=completions_deployment_name, endpoint=azure_endpoint, api_key=azure_key),
)

memory_store = PostgresMemoryStore(connection_string=connection_string, default_dimensionality=1536, min_pool=1, max_pool=10)

await memory_store.create_collection_async(collection_name='aboutMe')

await kernel.memory.save_information_async(collection="aboutMe", id="info1", text="My name is Chris")

question = "what is my name"

result = await kernel.memory.search_async("aboutMe", question)
```
