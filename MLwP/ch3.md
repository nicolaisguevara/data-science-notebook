Chapter 3
=========

### Measuring the relatedness of posts

#### bag-of-word approach

Word | Occurrences in Post 1 | Occurrences in Post 2
--- | --- | ---
disk | 1 | 1
format | 1 | 1
how | 1 | 0
hard | 1 | 1
my | 1 | 0
problems | 0 | 1
to | 1 | 0

1. Extract the salient features from each post and store it as a vector per post.
2. Compute clustering on the vectors.
3. Determine the cluster for the post in question.
4. From this cluster, fetch a handful of posts that are different from the post in question. This will increase diversity.

### Preprocessing

#### converting raw text into a bag-of-words

```python
from sklearn.feature_extraction.text import CountVectorizer
vectorizer = CountVectorizer(min_df=1)
content = ["How to format my hard disk", " Hard disk format problems "]
X = vectorizer.fit_transform(content)
vectorizer.get_feature_names() # [u'disk', u'format', u'hard', u'how', u'my', u'problems', u'to']
print(X.toarray().transpose())
```

#### counting words

```python
posts = [open(os.path.join(DIR, f)).read() for f in os.listdir(DIR)]
from sklearn.feature_extraction.text import CountVectorizer
vectorizer = CountVectorizer(min_df=1)
X_train = vectorizer.fit_transform(posts)
num_samples, num_features = X_train.shape
print("#samples: %d, #features: %d" % (num_samples, num_features)) ## #samples: 5, #features: 25
```

```python
new_post = "imaging databases"
new_post_vec = vectorizer.transform([new_post])
print(new_post_vec)
print(new_post_vec.toarray()) ## [[0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]]
```

```python
# calculate Eucliean distances
import scipy as sp
def dist_raw(v1, v2):
delta = v1-v2
return sp.linalg.norm(delta.toarray())
```

#### normalizing the word count vectors

### term frequency – inverse document frequency (TF-IDF)

```python
import scipy as sp
>>> def tfidf(term, doc, docset):
... tf = float(doc.count(term))/sum(doc.count(w) for w in docset)
... idf = math.log(float(len(docset))/(len([doc for doc in docset
if term in doc])))
... return tf * idf
```
