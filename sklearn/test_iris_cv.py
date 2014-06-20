"""
use SGDClassfier on Iris with cross-validaton and pipeline
"""

print __doc__

from sklearn import datasets
iris = datasets.load_iris()
X, y = iris.data, iris.target

from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import SGDClassifier
from sklearn.cross_validation import cross_val_score, KFold
from sklearn.pipeline import Pipeline

# create a composite estimator made by a pipeline of the standarization and the linear model
clf = Pipeline([
('scaler', StandardScaler()),
('linear_model', SGDClassifier())
])

# create a k-fold cross validation iterator of k=5 folds
cv = KFold(X.shape[0], 5, shuffle=True, random_state=33)

# by default the score used is the one returned by score method of the estimator (accuracy)
scores = cross_val_score(clf, X, y, cv=cv)

print scores

import numpy as np
from scipy.stats import sem

def mean_score(scores):
    return ("Mean score: {0:.3f} (+/-{1:.3f})").format(np.mean(scores), sem(scores))

print mean_score(scores)
