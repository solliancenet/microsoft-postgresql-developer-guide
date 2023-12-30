## Generative Artificial Intelligence (AI)

Generative AI is artificial intelligence capable of generating text, images, audio and video content. With the myrid of free or low-cost Generative AI services available online, anyone can use it with as little as a simple text prompt written in a natural language. There's no need to learn a new language such as Python or JavaScript.  All that is required is for you to state what you want and the AI model will provide you with a response (also called a completion). The applications and impact for this is huge, you write or understand reports, write applications and much more, all in seconds.

In the next few sections, we will explore how generative AI is used to unlock new scenarios in various industries and how we address the new challenges and limitations associated with its usage.

## Tokens

The latest AI works by taking text and converting it to numbers. Large language models (LLMs) such as OpenAI GPT are commonly referred to as Generative Pre-trained Transformer models.

After decades of research in the AI field (and what some would call AI winters), a new type of model architecture called Transformer was created that overcame the limits of RNNs.  These new models are capable of taking much longer sequences of text as input than previous models. Transformers are based on the attention mechanism, enabling the model to give different weights to the inputs it receives, `paying more attention` where the most relevant information is concentrated, regardless of the order in the text sequence.

Most of the generative AI models available today work with textual inputs and outputs and are based on the Transformer style architecture. These models tend to be trained on a huge amounts of unlabeled data from varying sources like books, articles and websites.  Amazingly, these trained models can be adapted to a wide variety of tasks and generate grammatically correct text with amazing creativity. Not only can these models enhance the capacity of a machine to understand an input text, but they also enabled a capacity to generate original responses in human language.

In order to do these transformations, the text has to be broken up into chunks that make sense. These chunks are then broken down further into tokens.  Models don't tend to be in charge of the chunking aspect of the process, but they are respondible for the tokenization via a Tokenizer model.

### Tokenizer

Large Language Models simply receive text as input and generate text as output. The models, however, work much better with numbers than text sequences.

Every input to a model is processed by a tokenizer before being used by the core part of the model. A token is a chunk of text consisting of a variable number of characters.  The tokenizer's main task is splitting the input into an array of tokens. Then, each token is mapped with a token index, which is the integer encoding of the original text chunk.
