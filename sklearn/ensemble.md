Emsemble methods
================

> scikit-learn

The goal of ensemble methods is to combine the predictions of several models built with a given learning algorithm in order to improve generalizability / robustness over a single model.

1. In averaging methods, the driving principle is to build several models *independently* and then to *average* their predictions. On average, the combined model is usually better than any of the single model because its **variance** is reduced.
  - Examples: Bagging methods, Forests of randomized trees...
2. In boosting methods, models are built *sequentially* and one tries to reduce the **bias** of the combined model. The motivation is to combine several weak models to produce a powerful ensemble.
  - Examples: AdaBoost, Gradient Tree Boosting, ...
  
### Forests of randomized trees
  
The `sklearn.ensemble` module includes two averaging algorithms based on randomized decision trees: the `RandomForest` algorithm and the `Extra-Trees` method.

#### Random Forests

In random forests (see `RandomForestClassifier` and `RandomForestRegressor` classes), each tree in the ensemble is built from a *sample* drawn with replacement (i.e., a *bootstrap* sample) from the training set. In addition, when splitting a node during the construction of the tree, the split that is chosen is no longer the best split among all features. Instead, the split that is picked is the best split among a *random subset* of the features. As a result of this randomness, the **bias** of the forest usually slightly increases (with respect to the bias of a single non-random tree) but, due to averaging, its **variance** also decreases, usually more than compensating for the increase in bias, hence yielding an overall better model.

In contrast to the original publication [B2001], the scikit-learn implementation combines classifiers by *averaging their probabilistic prediction*, instead of letting each classifier vote for a single class.

#### Extemely Randomized Trees

In extremely randomized trees (see `ExtraTreesClassifier` and `ExtraTreesRegressor` classes), randomness goes one step further in the way splits are computed. As in random forests, a random subset of candidate features is used, but instead of looking for the most discriminative thresholds, *thresholds are drawn at random* for each candidate feature and the best of these randomly-generated thresholds is picked as the splitting rule. This usually allows to reduce the **variance** of the model a bit more, at the expense of a slightly greater increase in **bias**.

#### Parameters

The main parameters to adjust when using these methods is `n_estimators` and `max_features`.

`n_estimators` is the number of trees in the forest. The larger the better, but also the longer it will take to compute. In addition, note that results will stop getting significantly better beyond a critical number of trees.

`max_features` is the size of the random subsets of features to consider when splitting a node. The lower the greater the reduction of **variance**, but also the greater the increase in **bias**.

Empirical good default values are:

- `max_features=n_features` for regression problems
- `max_features=sqrt(n_features)` for classification tasks (where n_features is the number of features in the data).
- The best results are also usually reached when setting `max_depth=None` in combination with `min_samples_split=1` (i.e., when fully developing the trees).

Bear in mind though that these values are usually not optimal. The best parameter values should always be *cross-validated*. In addition, note that

- bootstrap samples are used by default in random forests (`bootstrap=True`)
- while the default strategy is to use the original dataset for building extra-trees (`bootstrap=False`).

### AdaBoost

The core principle of AdaBoost is to fit a sequence of weak learners (i.e., models that are only slightly better than random guessing, such as small decision trees) on repeatedly modified versions of the data. The predictions from all of them are then combined through a *weighted majority vote (or sum)* to produce the final prediction.

AdaBoost can be used both for classification and regression problems:

- For multi-class classification, AdaBoostClassifier implements `AdaBoost-SAMME` and `AdaBoost-SAMME.R`.
- For regression, AdaBoostRegressor implements `AdaBoost.R2`.

#### Gradient Tree Boosting

Gradient Tree Boosting or Gradient Boosted Regression Trees (GBRT) is a generalization of boosting to arbitrary differentiable loss functions. GBRT is an accurate and effective off-the-shelf procedure that can be used for both regression and classification problems.

- classification: `GradientBoostingClassifier` supports both binary and multi-class classification via the deviance loss function
- regression: `GradientBoostingRegressor` supports a number of different loss functions for regression which can be specified via the argument loss; the default loss function for regression is **least squares** (`ls`).
