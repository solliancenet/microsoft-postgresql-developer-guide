## Responsible AI

It's easy to be fascinated with AI and generative AI in particular, but you need to consider how you would use it responsibly. You need to consider things like how to ensure the output is fair, non-harmful and more. This chapter aims to provide you with mentioned context, what to consider, and how to take active steps to improve your AI usage.

## Principles

The principles of Responsible AI include:

    - Fairness
    - Inclusiveness
    - Reliability/Safety
    - Security & Privacy
    - Transparency and Accountability. 

With these principles in mind, developers should consider their context with the use of Generative AI in their applications.

## Harmful Results

### Hallucinations

Hallucinations are a term used to describe when an LLM produces content that is either completely nonsensical or something we know is factually wrong based on other sources of information.

In many cases, AI can provide confident and thorough answers. Unfortunately, these answers can also be incorrect. For individuals that may be new to your application and data, AI answers can be persuasive enough to not be questioned and treated as fact. The consequences of this can lead to the AI system being unreliable and negatively impact the reputation of your users and company as a whole.

With each iteration of any given LLM, there have been several performance improvements around minimizing hallucinations. However, even with these improvements, we as application builders and users still need to remain aware of these limitations.

### Harmful Content

In addition to Hallucinations, another risk we need to be aware of is when a model responds with harmful content.

Harmful content can be defined as:

- Providing instructions or encouraging self-harm or harm to certain groups.
- Hateful or demeaning content.
- Guiding planning any type of attack or violent acts.
- Providing instructions on how to find illegal content or commit illegal acts.
- Displaying sexually explicit content.

As AI developers, we want to make sure we have the right tools and strategies in place to prevent this type of content from being seen by users.

For example, the [Azure AI Content Safety](https://learn.microsoft.com/azure/ai-services/content-safety/overview?WT.mc_id=academic-105485-koreyst) can help detect harmful content and images via simple API requests.

### Lack of Fairness

Fairness is defined as **ensuring that an AI system is free from bias and discrimination and that they treat everyone fairly and equally**. In the world of Generative AI, we want to ensure that exclusionary worldviews of marginalized groups are not reinforced by the model's output.

These types of outputs are not only destructive to building positive product experiences for our users, but they also cause further societal harm. As application builders, we should always keep a wide and diverse user base in mind when building solutions with Generative AI.

### Helpful Hints

### Measure Potential Harms

In software testing, we test the expected actions of a user on an application. Similarly, testing a diverse set of prompts users are most likely going to use is a good way to measure potential harm.

Focus on the type of product or content the model with be used on. For example, if the product is an educational product, it would be good to prepare a list of education-related prompts. This could be to cover a certain subject, historical facts, and prompts about student life.

### Mitigate Potential Harms

It is now time to find ways where we can prevent or limit the potential harm caused by the model and its responses. We can look at this in 4 different layers:

- **Model**. Choosing the right model for the right use case. Larger and more complex models like GPT-4 can cause more of a risk of harmful content when applied to smaller and more specific use cases. Using your training data to fine-tune also reduces the risk of harmful content.

- **Safety System**. A safety system is a set of tools and configurations on the platform serving the model that help mitigate harm. An example of this is the content filtering system on the Azure OpenAI service. Systems should also detect jailbreak attacks and unwanted activity like requests from bots.

- **Metaprompt**. Metaprompts and grounding are ways we can direct or limit the model based on certain behaviors and information. This could be using system inputs to define certain limits of the model. In addition, providing outputs that are more relevant to the scope or domain of the system. It can also be using techniques like Retrieval Augmented Generation (RAG) to have the model only pull information from a selection of trusted sources. There is a lesson later in this course for building search applications

- **User Experience**. The final layer is where the user interacts directly with the model through our application's interface in some way. In this way we can design the UI/UX to limit the user on the types of inputs they can send to the model as well as text or images displayed to the user. When deploying the AI application, we also must be transparent about what our Generative AI application can and can't do.

### Operationalize AI

Building an operational practice around your AI applications is one of the final stages. This includes partnering with other parts of your company, like Legal and Security, to ensure we are compliant with all regulatory policies. Before launching any AI integrated product, build plans around delivery, handling incidents, and rollback to prevent any harm to our users or company.

Working with LLMs can be challenging because you may not always have control over the data the model was trained on. Regardless, we should always evaluate the model's performance and outputs. It's still important to measure the model's accuracy, similarity, groundedness, and relevance of the output. This helps provide transparency and trust to stakeholders and users.

