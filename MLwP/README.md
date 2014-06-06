Building Machine Learning Systems with Python
=============================================

by Willi Richert, Luis Pedro Coelho

### Contents

- Chapter 1, Getting Started with Python Machine Learning
  - NumPy, SciPy and Matplotlib
  - First (tiny) machine learning application
    - SciPy's `ployfit`
	- Hold-out
- Chapter 2, Learning How to Classify with Real-world Examples
  - Iris dataset
    - Visualization
	- Cross-validation
	- Multiclass classification
  - Seeds dataset
    - Nearest neighbor
- Chapter 3, Clustering – Finding Related Posts
  - bag-of-word
  - Stemming using Natural Language Toolkit (NLTK)
  - Term frequency – inverse document frequency (TF-IDF)
  - KMeans
- Chapter 4, Topic Modeling
  - Latent Dirichlet allocation (LDA) using `gensim`
  - Modeling the whole of Wikipedia
- Chapter 5, Classification – Detecting Poor Answers
  - Parsing XML using `cElementTree`
  - k-nearest neighbor (kNN) 
  - Feature Engineering
    1. Add more data
	2. Play with the model complexity
	3. Modify the feature space
	4. Change the model
  - Bias-variance and its trade-off
  - Logistic Regression
  - Precision and Recall
    - P/R curve
- Chapter 6, Classification II – Sentiment Analysis
  - Twitter data
    - Naive Bayes Classifier
	  - `GaussianNB`: assumes the features to be normally distributed
	  - `MultinomialNB`: assumes the features to be occurrence counts
	  - `BernoulliNB`: similar to `MultinomialNB`, but more suited when using binary word occurrences and not word counts
	- Part of speech (POS) tagging
	- SentiWordNet
- Chapter 7, Regression – Recommendations
  - Ordinary Least Squares (OLS)
  - L1 and L2 penalties
  - SEC data
  - GroupLens dataset
- Chapter 8, Regression – Recommendations Improved
  - Nearest neighbour
  - Ensemble learning
  - Basket analysis
  - Association rule mining
	- Apriori
- Chapter 9, Classification III – Music Genre Classification
  - GTZAN dataset
  - Fast Fourier Transform (FFT)
  - Confusion Matrix
    - Receiver operator characteristic (ROC)
    - area under curve(AUC)
- Chapter 10, Computer Vision – Pattern Recognition
- Chapter 11, Dimensionality Reduction
  - Correlation
  - Mutual Information
  - Recursive feature elimination (RFE)
  - Principal component analysis (PCA)
  - Linear discriminant analysis (LDA)
  - Multidimensional scaling (MDS)
- Chapter 12, Big(ger) Data
  - Using `jug` to break up pipeline into tasks
  - Amazon Web Services (AWS)
