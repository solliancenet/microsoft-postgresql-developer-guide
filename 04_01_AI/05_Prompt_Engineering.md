## Prompt Engineering

The input of a large language model is known as prompt, while the output is known as completion. Completion is a term that refers to the model mechanism of generating the next token to complete the current input. In the next few sections, we will dive deep into what is a prompt and how to design it in a way to get the most out of our model. But for now, let’s just say that a prompt may include:

    - An instruction: specifying the type of output we expect from the model. This instruction sometimes might embed some examples or some additional data.
    - A question: asked in the form of a conversation with an agent.
      - Text to complete: which implicitly is an ask for writing assistance.
      - Code with Task:
        - A chunk of code + the task of doing something with it such as explaining and documenting it.
        - A comment asking to generate a piece of code performing a specific task.

Outputs of Generative AI models are not perfect and in some cases the creativity of the model can work against it.  When this happens, the resulting output can be a combination of words that the human user can interpret as a mystification of reality, or even offensive.

Generative AI is not intelligent per se.  When compared to the more comprehensive definition of intelligence, including critical and creative reasoning or emotional intelligence; it is not deterministic, and it is should not be considered trustworthy, since fabrications, such as erroneous references, content, and statements, may be combined with correct information, and presented in a persuasive and confident manner. Prompt engineering is a method designed to deal with some of these limitations, or at least mitigate them a bit.  The idea is to provide enough context when you prompt to ensure you get the responses you require.

### What is a prompt


### What is prompt engineering

### Anatomy of a prompt

### Zero-shot

Pre-trained LLMs work very well on generalized natural language tasks, even by calling them with a short prompt, like a sentence to complete or a question – the so-called “zero-shot” learning.

However, the more the user can frame their query, with a detailed request and examples – the Context – the more accurate and closest to user’s expectations the answer will be. In this case, we talk about “one-shot” learning if the prompt includes only one example and “few shot learning” if it includes multiple examples. Prompt engineering with context is the most cost-effective approach to kick-off with.

### Few-shot

