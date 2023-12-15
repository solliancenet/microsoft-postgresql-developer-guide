
## Vectors

Dimension: The dimension of a vector is the number of elements that it contains. In the example above, vector1 and vector2 are both two-dimensional since they each have two elements. You can only visualize vectors with three dimensions or less, but generally, vectors can have any number of dimensions. In fact, as you’ll see later, vectors that encode words and text tend to have hundreds or thousands of dimensions.

Magnitude: The magnitude of a vector is a non-negative number that represents the vector’s size or length. You can also refer to the magnitude of a vector as the norm, and you can denote it with ||v|| or |v|. There are many different definitions of magnitude or norm, but the most common is the Euclidean norm or 2-norm. You’ll learn how to compute this later.

Unit vector: A unit vector is a vector with a magnitude of one. In the example above, vector1 and vector2 are unit vectors.

Direction: The direction of a vector specifies the line along which the vector points. You can represent direction using angles, unit vectors, or coordinates in different coordinate systems.

Dot product (scalar product): The dot product of two vectors, u and v, is a number given by u ⋅ v = ||u|| ||v|| cos(θ), where θ is the angle between the two vectors. Another way to compute the dot product is to do an element-wise multiplication of u and v and sum the results. The dot product is one of the most important and widely used vector operations because it measures the similarity between two vectors. You’ll see more of this later on.

Orthogonal vectors: Vectors are orthogonal if their dot product is zero, meaning that they’re at a 90 degree angle to each other. You can think of orthogonal vectors as being completely unrelated to each other.

Dense vector: A vector is considered dense if most of its elements are non-zero. Later on, you’ll see that words and text are most usefully represented with dense vectors because each dimension encodes meaningful information.

## Vector Similarity

Euclidean distance – The straight-line distance between points.
L1 (Manhattan) distance – The sum of the differences of all of the vector components. L1 distance measures how many orthogonal city blocks you need to traverse from point A to point B.
L-infinity (chessboard) distance – The number of moves a King would make on an n-dimensional chessboard. It’s different than Euclidean distance on the diagonals—a diagonal step on a 2-dimensional chessboard is 1.41 Euclidean units away, but 2 L-infinity units away.
Inner product – The product of the magnitudes of two vectors and the cosine of the angle between them. Usually used for natural language processing (NLP) vector similarity.
Cosine similarity – The cosine of the angle between two vectors in a vector space.
Hamming distance – For binary-coded vectors, the number of bits that differ between the two vectors.

## Embeddings

### Text

### Voice

### Image

# References - DELETE 

https://realpython.com/chromadb-vector-database/
