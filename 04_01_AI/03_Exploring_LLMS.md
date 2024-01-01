## Language Models

In this section we will explore the different types of LLMs that exist today along with how you can test different models for your use case in Azure.  We will then show how easy it is to deploy an LLM in Azure.

### Large Languange Models (LLMs)

A Large Language Model (LLM) is a type of AI model trained on massive amounts of text data to understand and generate human-like language. LLMs are typically based on deep learning architectures, such as Transformers, and they're known for their ability to perform a wide range of natural language understanding and generation tasks. LLMs can be categorized based on their architecture, training data, and use case. Understanding how a model was built help in selecting the right model for the target scenario.  It will also help with understanding how to test, iterate, and improve the model performance.

Key characteristics and capabilities of Large Language Models include:

- Scale: immense scale in terms of the number of parameters used in LLM architecture are characteristic for them. Models like GPT-3 (Generative Pretrained Transformer 3) contain hundreds of millions to trillions of parameters, which allow them to capture complex patterns in language.
- Pretraining: LLMs undergo pretraining on a large corpus of text data from the internet, which enables them to learn grammar, syntax, semantics, and a broad range of knowledge about language and the world.
- Fine-tuning: After pretraining, LLMs can be fine-tuned on specific tasks or domains with smaller, task-specific datasets. This fine-tuning process allows them to adapt to more specialized tasks, such as text classification, translation, summarization, and question-answering.

Your choice of model comes down to three major areas:

    - What is your goal
    - What your data looks like
    - How much you're ready to pay

When it comes to data, a differnt model will be required based on if it is text, audio, video, image generation and so forth.

    - **Audio** : Whisper-type models are a great choice as they are general-purpose and aimed at speech recognition. Audio models are trained on diverse audio and can perform multilingual speech recognition. Learn more about Whisper type models [here](https://platform.openai.com/docs/models/whisper?WT.mc_id=academic-105485-koreyst).

    - **Images** : For image generation, DALL-E and Midjourney are two very well-known choices. DALL-E is offered by Azure OpenAI. Read more about DALL-E [here](https://platform.openai.com/docs/models/dall-e?WT.mc_id=academic-105485-koreyst).

    - **Text generation** : Most models are trained on text generation and there are a large variety of choices from GPT-3.5 to GPT-4 and others. They come at different costs with the latest GPT-4 being the most expensive. Azure offers many ways to deploy and utilize models which gives your flexibility in selecting the best fit for your needs in terms of capability and cost.

Selecting a model means you get some basic built-in capabilities of that model, however, you may need just a little bit more than the model is able to provide. In many cases, developers have company specific data that you want to use the LLM model with. There are a few different approaches for that and we will explore them in more detail in the upcoming sections.

### OpenAI

OpenAI is an artificial intelligence (AI) research organization and technology company known for its pioneering work in the field of artificial intelligence and machine learning. Their mission is to ensure that artificial general intelligence (AGI), which refers to highly autonomous AI systems that can outperform humans in most economically valuable work, benefits all of humanity. OpenAI brought to market state-of-the-art generative models such as GPT-3, GPT-3.5 and GPT-4 (Generative Pretrained Transformer).

Azure OpenAI is Azure’s LLM service offering to help build GenAI applications using Azure. Azure OpenAI Service gives customers advanced language AI with OpenAI GPT-4, GPT-3, Codex, DALL-E, and Whisper models with the security and enterprise promise of Azure. Azure OpenAI codevelops the APIs with OpenAI, ensuring compatibility and a smooth transition from one to the other.

With Azure OpenAI, customers get the security capabilities of Microsoft Azure while running the same models as OpenAI. Azure OpenAI offers private networking, regional availability, and responsible AI content filtering.

Learn more about [Azure OpenAI](https://learn.microsoft.com/en-us/azure/ai-services/openai/overview).

### GPT

GPT stands for Generative Pretrained Transformer, and it refers to a series of large language models developed by OpenAI. The GPT models are neural networks pretrained on vast amounts of data from the internet, making them capable of understanding and generating human-like text.

Here's an overview of the major GPT models and their key characteristics:

GPT-3: GPT-3, released in June 2020, is a well-known model in the GPT series. It has 175 billion parameters, making it one of the largest and most powerful language models in existence. GPT-3 achieved remarkable performance on a wide range of natural language understanding and generation tasks. It can perform tasks like text completion, translation, question-answering, and more with human-level fluency. GPT-3 is divided into various model sizes, ranging from the smallest (125M parameters) to the largest (175B parameters).

GPT-4: GPT-4, the latest GPT model from OpenAI, has 1.76 trillion parameters.

### Small Language Models (SLMs)

TODO

### Services vs Models

The world of AI can be confusing to someone learning all the terms and history.  It is important to be able to distingish beween a service and a model. A service is a product that is offered as a combination of models, data, and other components. A model is the core component of a service.

Services are often optimized for production use and tend to be easier to use than models.  They may have APIs or graphical user interfaces. Services are not always available for free, and may require a subscription or payment. These payments help pay for the equipment and resources and well as the optimizing of expenses and scaling needs required to support the service.

For example, Microsoft Azure OpenAI offers pay-as-you-go plans which allow developers to be charged proportionally to how much they use the service. In addtion to access to the models and service, Azure OpenAI offers enterprise-grade security and a responsible AI framework in addition to the models' capabilities.

Models are the Neural Network, with the parameters, weights, and others needed components. If you were to train and run a model locally, you would need to buy equipment, build infrastructure to scale and potentially buy a license for a closed-model or use an open-source model.

### Open vs Closed Source

Another way to categorize LLMs is whether they are open or closed source.  Open source meaning the code is published for everyone to see, such as on GitHub, versus a closed source where the developer keeps and own the source code.

Open-source models are made available to the public and can be used by anyone. They are often made available by the company that created them, or by the research community. These models are allowed to be inspected, modified, and customized for the various use cases in LLMs. However, they are not always optimized for production use, and may not be as performant as proprietary models. Plus, funding for open-source models can be limited, and they may not be maintained long term or may not be updated with the latest research. Examples of popular open source models include Alpaca, Bloom and LLaMA.

Closed-source models are models that are owned by an individual and/or company and are not made available to the public. These models are often optimized for production use. However, they are not allowed to be inspected, modified, or customized for different use cases. They are not always available for free and may require a subscription or payment to use them. Additionally, users do not have control over the data that is used to train the model.  This means they should entrust the model owner with ensuring commitment to data privacy and responsible use of AI (topics we explore in later sections). Examples of popular proprietary models include OpenAI models, Google Bard or Claude 2.

### LLM Outputs

LLMs can also be categorized by the output they generate.

### Embeddings

Embedding models are designed to convert input into a numerical form, called an embedding.  Embeddings are numerical representations of the input.
Embeddings make it easier for machines to understand the relationships between words or sentences and can be consumed as inputs by other models, such as classification models, or clustering models that have better performance on numerical data. Embedding models are often used for transfer learning, where a model is built for a surrogate task for which there is an abundance of data, and then the model weights (embeddings) are re-used for other downstream tasks. An example of this category is OpenAI embeddings.

### Text + Code

Text and code generation models are models that generate text or code. These models are often used for text summarization, translation, and question answering. Text generation models are often trained on large datasets of text, such as BookCorpus, and can be used to generate new text, or to answer questions. Code generation models, like CodeParrot, are often trained on large datasets of code, such as GitHub, and can be used to generate new code, or to fix bugs in existing code.

### Voice

### Image

Image generation models are models that generate images. These models are often used for image editing, image synthesis, and image translation. Image generation models are often trained on large datasets of images, such as LAION-5B, and can be used to generate new images or to edit existing images with inpainting, super-resolution, and colorization techniques. Examples include DALL-E-3 and Stable Diffusion models.

### Search

Now you might be wondering, why are we talking about Search with AI?  It is because search is core to the way models work.  

### Text Search

TODO

### Semantic Search

Semantic search is a search technique that uses the semantics, or meaning, of the words in a query to return relevant results.

Here is an example of a semantic search. Let's say you were looking to buy a car, you might search for 'my dream car', semantic search understands that you are not dreaming about a car, but rather you are looking to buy your ideal car. Semantic search understands your intention and returns relevant results. The alternative is keyword search which would literally search for dreams about cars and often returns irrelevant results.

As we have already discussed above, text embeddings are a text representation technique used in natural language processing. Text embeddings are semantic numerical representations of text. Embeddings are used to represent data in a way that is easy for a machine to understand. There are many models for building text embeddings

## Vectors

A vector is a mathematical concept used in linear algebra and geometry to represent quantities that have both magnitude and direction. In the context of machine learning, vectors are often used to represent data points or features. Some key vector attributes and operations include:

- Dimension: The dimension of a vector is the number of elements that it contains. In the example above, vector1 and vector2 are both two-dimensional since they each have two elements. You can only visualize vectors with three dimensions or less, but generally, vectors can have any number of dimensions. In fact, as you'll see later, vectors that encode words and text tend to have hundreds or thousands of dimensions.

- Magnitude: The magnitude of a vector is a non-negative number that represents the vector's size or length. You can also refer to the magnitude of a vector as the norm, and you can denote it with ||v|| or |v|. There are many different definitions of magnitude or norm, but the most common is the Euclidean norm or 2-norm. You'll learn how to compute this later.

- Unit vector: A unit vector is a vector with a magnitude of one. In the example above, vector1 and vector2 are unit vectors.

- Direction: The direction of a vector specifies the line along which the vector points. You can represent direction using angles, unit vectors, or coordinates in different coordinate systems.

- Dot product (scalar product): The dot product of two vectors, u and v, is a number given by u ⋅ v = ||u|| ||v|| cos(θ), where θ is the angle between the two vectors. Another way to compute the dot product is to do an element-wise multiplication of u and v and sum the results. The dot product is one of the most important and widely used vector operations because it measures the similarity between two vectors. You'll see more of this later on.

- Orthogonal vectors: Vectors are orthogonal if their dot product is zero, meaning that they're at a 90 degree angle to each other. You can think of orthogonal vectors as being completely unrelated to each other.

- Dense vector: A vector is considered dense if most of its elements are non-zero. Later on, you'll see that words and text are most usefully represented with dense vectors because each dimension encodes meaningful information.

## Vector Similarity

Euclidean distance – The straight-line distance between points.
L1 (Manhattan) distance – The sum of the differences of all of the vector components. L1 distance measures how many orthogonal city blocks you need to traverse from point A to point B.
L-infinity (chessboard) distance – The number of moves a King would make on an n-dimensional chessboard. It's different than Euclidean distance on the diagonals—a diagonal step on a 2-dimensional chessboard is 1.41 Euclidean units away, but 2 L-infinity units away.
Inner product – The product of the magnitudes of two vectors and the cosine of the angle between them. Usually used for natural language processing (NLP) vector similarity.
Cosine similarity – The cosine of the angle between two vectors in a vector space.
Hamming distance – For binary-coded vectors, the number of bits that differ between the two vectors.

## Cosine Similiarity

Cosine similarity is a measure of similarity between two vectors, you'll also hear this referred to as nearest neighbor search. To perform a cosine similarity search you need to vectorize for query text using the OpenAI Embedding API. Then calculate the cosine similarity between the query vector and each vector in the Embedding Index. Remember, the Embedding Index has a vector for each YouTube transcript text segment. Finally, sort the results by cosine similarity and the text segments with the highest cosine similarity are the most similar to the query.

From a mathematic perspective, cosine similarity measures the cosine of the angle between two vectors projected in a multidimensional space. This measurement is beneficial, because if two documents are far apart by Euclidean distance because of size, they could still have a smaller angle between them and therefore higher cosine similarity. For more information about cosine similarity equations, see [Cosine similarity](https://en.wikipedia.org/wiki/Cosine_similarity?WT.mc_id=academic-105485-koreyst).

## Vector Storage

Once you have generated embeddings, you will want to store them somewhere.  This could be in memory locally, or in memory remotely.  It could also be persisted to disk storage.  We will explore various types of storage mechanisms (such as PostgreSQL) in a later section.

## Improving Results

With a firm understading of the various pre-trained models, using tools like Azure Machine Learning can enable developers to compare different models, evaluate them on test data, improve performance and deploy manually or via a service.  But when should developers consider fine-tuning a model rather than using a pre-trained one? Fine-tuned models come with extra costs in terms of the hardware and time that is necessary to train them.  If the costs outweigh the benefits, then what might be other approaches to improve model performance on specific workloads?

It turns out there are several approaches a business can use to get the results they need from an LLM wether it is pre-trained or fine-tuned.  The most common in order of each and cheap to most difficult and expensive are:

    - Prompt Engineering
    - Retrieval augmented generation (RAG)
    - Fine tuned model
    - Trained model

We will explore prompt engineering and RAG in more detail in the following sections.

### Fine tuned models

Fine-tuning is a process that leverages transfer learning to adapt the model to a downstream task or to solve a specific problem. Different from few-shot learning and RAG, it results in a new model being generated, with updated weights and biases. It requires a set of training examples consisting of a single input (the prompt) and its associated output (the completion). This would be the preferred approach if:

    - Using fine-tuned models. A business would like to use fine-tuned less capable models (like embedding models) rather than high performance models, resulting in a more cost effective and fast solution.

    - Considering latency. Latency is important for a specific use-case, so it's not possible to use very long prompts or the number of examples that should be learned from the model doesn't fit with the prompt length limit.

    - Staying up to date. A business has a lot of high-quality data and ground truth labels and the resources required to maintain this data up to date over time.

### Trained model

Training an LLM from scratch is without a doubt the most difficult and the most complex approach to adopt, requiring massive amounts of data, skilled resources, and appropriate computational power. This option should be considered only in a scenario where a business has a domain-specific use case and a large amount of domain-centric data.

# References - DELETE 

https://realpython.com/chromadb-vector-database/

### Deploying Language Models in Azure

TODO