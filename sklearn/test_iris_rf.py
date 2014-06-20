# -*- coding: utf-8 -*-
"""
use RandomForestClassifier on Iris dataset
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

from sklearn.ensemble import RandomForestClassifier

clf = RandomForestClassifier(n_estimators=10)
clf.fit(X_train, y_train)

print clf.feature_importances_

from sklearn import metrics

y_train_pred = clf.predict(X_train)

print "the precision of train data is ", metrics.accuracy_score(y_train, y_train_pred)

from sklearn import metrics

print(metrics.classification_report(y_train, y_train_pred))

y_test_pred= clf.predict(X_test)

print "the precision of test data is ", metrics.accuracy_score(y_test, y_test_pred)

print(metrics.classification_report(y_test, y_test_pred))
