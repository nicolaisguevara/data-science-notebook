Chapter 2
=========

Learning How to Classify with Real-world Examples

### The Iris dataset

```python
plength = features[:, 2]
# use numpy operations to get setosa features
is_setosa = (labels == 'setosa')
# This is the important step:
max_setosa = plength[is_setosa].max()
min_non_setosa = plength[~is_setosa].min()
print('Maximum of setosa: {0}.'.format(max_setosa))
print('Minimum of others: {0}.'.format(min_non_setosa))
```

### The Seeds dataset

#### knn

```python
def distance(p0, p1):
	'Computes squared euclidean distance'
	return np.sum( (p0-p1)**2)

def nn_classify(training_set, training_labels, new_example):
	dists = np.array([distance(t, new_example)
		for t in training_set])
	nearest = dists.argmin()
	return training_labels[nearest]
```

The Z-score of a value is how far away from the mean it is in terms of units of standard deviation.

```python
# subtract the mean for each feature:
features -= features.mean(axis=0)
# divide each feature by its standard deviation
features /= features.std(axis=0)
```

### Binary and multiclass classification
