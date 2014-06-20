# -*- coding: utf-8 -*-
"""
use SGDClassifier on Iris dataset
"""

print(__doc__)

from sklearn import datasets

iris = datasets.load_iris()

X_iris, y_iris = iris.data, iris.target

print X_iris.shape, y_iris.shape

# print the first instance
print X_iris[0], y_iris[0]

from sklearn.cross_validation import train_test_split

# Split the dataset into a training and a testing set
# Test set will be the 25% taken randomly
X_train, X_test, y_train, y_test = train_test_split(X_iris, y_iris, test_size=0.25, random_state=33)

print X_train.shape, y_train.shape

from sklearn.linear_model import SGDClassifier

clf = SGDClassifier()
clf.fit(X_train, y_train)

print clf.coef_

print clf.intercept_

from sklearn import metrics

y_train_pred = clf.predict(X_train)

print "the precision of training data is ", metrics.accuracy_score(y_train, y_train_pred)

y_test_pred= clf.predict(X_test)

print "the precision of test data is ", metrics.accuracy_score(y_test, y_test_pred)
