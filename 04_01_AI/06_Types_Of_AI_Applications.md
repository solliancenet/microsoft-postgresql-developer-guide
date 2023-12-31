## Types of AI Applications

## Standard Patterns

### RAG

Retrieval Augmented Generation, RAG. Your data might exist in a database or web endpoint for example, to ensure this data, or a subset of it, is included at the time of prompting, you can fetch the relevant data and make that part of the user's prompt.

LLMs have the limitation that they can use only the data that has been used during their training to generate an answer. This means that they don't know anything about the facts that happened after their training process, and they cannot access non-public information (like company data). This can be overcome through RAG, a technique that augments prompt with external data in the form of chunks of documents, considering prompt length limits. This is supported by Vector database tools (like Azure Vector Search) that retrieve the useful chunks from varied pre-defined data sources and add them to the prompt Context.

This technique is very helpful when a business doesn't have enough data, enough time, or resources to fine-tune an LLM, but still wishes to improve performance on a specific workload and reduce risks of fabrications, i.e., mystification of reality or harmful content.

### CoT

### ReAct

## Text Generation

In a text generation app, you can use natural language to interact with the app. Benefits of using a text generation model with an app is that you can now interact with a model that has been trained on a vast corpus of information, whereas a traditional app might be limited on what's in a database.  So what can a developer build with a text generation app?

- **A chatbot**. A chatbot answering questions about topics, like your company and its products could be a good match.
- **Helper**. LLMs are great at things like summarizing text, getting insights from text, producing text like resumes and more.
- **Code assistant**. Depending on the language model you use, you can build a code assistant that helps you write code. For example, you can use a product like GitHub Copilot as well as ChatGPT to help you write code.

Chat applications have become integrated into our daily lives, offering more than just a means of casual conversation. They're integral parts of customer service, technical support, and even sophisticated advisory systems. It's likely that you've gotten some help from a chat application not too long ago. As we integrate more advanced technologies like generative AI into these platforms, the complexity increases and so does the challenges.

As we move further into an age defined by automation and seamless human-machine interactions, understanding how generative AI transforms the scope, depth, and adaptability of chat applications becomes essential. This lesson will investigate the aspects of architecture that support these intricate systems, delve into the methodologies for fine-tuning them for domain-specific tasks, and evaluate the metrics and considerations pertinent to ensuring responsible AI deployment.

## Image Generation

TODO

## Low Code Applciations

TODO

## External Applications with function calling

TODO

## User Experience (UX)

General UX principles apply to chat applications, but here are some additional considerations that become particularly important due to the machine learning components involved.

- Mechanism for addressing ambiguity: Generative AI models occasionally generate ambiguous answers. A feature that allows users to ask for clarification can be helpful should they come across this problem.
- Context retention: Advanced generative AI models have the ability to remember context within a conversation, which can be a necessary asset to the user experience. Giving users the ability to control and manage context improves the user experience, but introduces the risk of retaining sensitive user information. Considerations for how long this information is stored, such as introducing a retention policy, can balance the need for context against privacy.
- Personalization: With the ability to learn and adapt, AI models offer an individualized experience for a user. Tailoring the user experience through features like user profiles not only makes the user feel understood, but it also helps their pursuit of finding specific answers, creating a more efficient and satisfying interaction.
One such example of personalization is the "Custom instructions" settings in OpenAI's ChatGPT. It allows you to provide information about yourself that may be important context for your prompts.

### Accessiblity

Whether a user has visual, auditory, motor, or cognitive impairments, a well-designed chat application should be usable by all. The following list breaks down specific features aimed at enhancing accessibility for various user impairments.

- Features for Visual Impairment: High contrast themes and resizable text, screen reader compatibility.
- Features for Auditory Impairment: Text-to-speech and speech-to-text functions, visual cues for audio notifications.
- Features for Motor Impairment: Keyboard navigation support, voice commands.
- Features for Cognitive Impairment: Simplified language options.

## Key Metrics

To maintain the high-quality performance an application, it's essential to keep track of key metrics and considerations. These measurements not only ensure the functionality of the application but also assess the quality of the AI model and user experience. Below is a list that covers basic, AI, and user experience metrics to consider.

- **Uptime** : Measures the time the application is operational and accessible by users. For example: How will you minimize downtime?
- **Response Time** : The time taken by the application to reply to a user's query. For example: How can you optimize query processing to improve response time?
- **Precision** : The ratio of true positive predictions to the total number of positive predictions For example: How will you validate the precision of your model?
- **Recall (Sensitivity)** : The ratio of true positive predictions to the actual number of positives For example: How will you measure and improve recall?
- **F1 Score** : The harmonic mean of precision and recall, that balances the trade-off between both. For example: What is your target F1 Score? How will you balance precision and recall?
- **Perplexity** : Measures how well the probability distribution predicted by the model aligns with the actual distribution of the data. For example: How will you minimize perplexity?
- **User Satisfaction Metrics** : Measures the user's perception of the application. Often captured through surveys. For example: How often will you collect user feedback? How will you adapt based on it?
- **Error Rate** : The rate at which the model makes mistakes in understanding or output. For example: What strategies do you have in place to reduce error rates?
- **Retraining Cycles** : The frequency with which the model is updated to incorporate new data and insights. For example: How often will you retrain the model? What triggers a retraining cycle?
- **Anomaly Detection** : Tools and techniques for identifying unusual patterns that do not conform to expected behavior. For example: How will you respond to anomalies?

## Libraries and SDKs

When building an AI integreated application, a great first step is to assess what is already out there. Using SDKs and APIs to build chat applications is an advantageous strategy for a variety of reasons. By integrating well-documented SDKs and APIs, you're strategically positioning your application for long-term success, addressing scalability and maintenance concerns.

- Expedites the development process and reduces overhead: Relying on pre-built functionalities instead of the expensive process of building them yourself allows you to focus on other aspects of your application that you may find more important, such as business logic.
- Better performance: When building functionality from scratch, you'll eventually ask yourself "How does it scale? Is this application capable of handling a sudden influx of users?" Well maintained SDK and APIs often have built in solutions for these concerns.
- Easier maintenance: Updates and improvements are easier to manage as most APIs and SDKs simply require an update to a library when a newer version is released.
- Access to cutting edge technology: Leveraging models that have been fined tuned and trained on extensive datasets provides your application with natural language capabilities.

Accessing functionality of an SDK or API typically involves obtaining permission to use the provided services, which is often through the use of a unique key or authentication token.

There are a few well known libraries for working with LLMs like:

- OpenAI, this library makes it easy to connect to your model and send in prompts.

Then there are libraries that operate on a higher level like:

- Langchain. Langchain is well known and supports Python.
- Semantic Kernel. Semantic Kernel is a library by Microsoft supporting the languages C#, Python, and Java.