Parameter Inference
===================

### MLE

> ISLR

Maximum Likelihood Estimation

To estimate ![\beta_0](http://latex.codecogs.com/gif.latex?%5Cbeta_0) and ![\beta_1](http://latex.codecogs.com/gif.latex?%5Cbeta_1), we choose the estimates ![\hat{\beta}_0](http://latex.codecogs.com/gif.latex?%5Chat%7B%5Cbeta%7D_0) and ![\hat{\beta}_1](http://latex.codecogs.com/gif.latex?%5Chat%7B%5Cbeta%7D_1) that maximize the likelihood function:

![\ell(\beta_0,\beta_1)=\prod_{i:y_i=1}p(x_i)\prod_{i':y_{i'}=0}(1-p(x_{i'})](http://latex.codecogs.com/gif.latex?%5Cell%28%5Cbeta_0%2C%5Cbeta_1%29%3D%5Cprod_%7Bi%3Ay_i%3D1%7Dp%28x_i%29%5Cprod_%7Bi%27%3Ay_%7Bi%27%7D%3D0%7D%281-p%28x_%7Bi%27%7D%29%29)

> ESL

Suppose we have a random sample yi, i=1,...,N from a density Prθ(y) indexed by some parameters θ. The log-probability of the observed sample is

![L(\theta)=\sum_{i=1}^{N}\log\mathrm{Pr}_{\theta}(y_i)](http://latex.codecogs.com/gif.latex?L%28%5Ctheta%29%3D%5Csum_%7Bi%3D1%7D%5E%7BN%7D%5Clog%5Cmathrm%7BPr%7D_%7B%5Ctheta%7D%28y_i%29)

The principle of maximum likelihood assumes that the most reasonable values for θ are those for which the probability of the observed sample is largest.

Least squares for the additive error model Y = fθ(X) + ε, with ε～N(0, σ2), is equivalent to maximum likelihood using the conditional likelihood Pr(Y|X,θ)=N (fθ (X), σ2).

> Larry Wasserman, All of Statistics

The most common method for estimating parameters in a parametric model is the **maximum likelihood** method. Let X1,...,Xn be iid with pdf f(x;θ).

The likelihood function is defined by

![\mathcal{L}_n(\theta)=\prod_{i=1}^n f(X_i;\theta)](http://latex.codecogs.com/gif.latex?%5Cmathcal%7BL%7D_n%28%5Ctheta%29%3D%5Cprod_%7Bi%3D1%7D%5En%20f%28X_i%3B%5Ctheta%29)

The log-likelihood function is defined by ![\ell_n(\theta)=\log\mathcal{L}_n(\theta)](http://latex.codecogs.com/gif.latex?%5Cell_n%28%5Ctheta%29%3D%5Clog%5Cmathcal%7BL%7D_n%28%5Ctheta%29)

The likelihood function is just the joint density of the data, except that we treat it is a function of the parameter θ. Thus ![\mathcal{L}_n:\Theta\rightarrow\[0,\infty\)](http://latex.codecogs.com/gif.latex?%5Cmathcal%7BL%7D_n%3A%5CTheta%5Crightarrow%5C%5B0%2C%5Cinfty%5C%29)

The **maximum likelihood estimator** MLE, denoted by ![\hat{\theta}_n](http://latex.codecogs.com/gif.latex?%5Chat%7B%5Ctheta%7D_n), is the value of θ that maximizes ![\mathcal{L}_n(\theta)](http://latex.codecogs.com/gif.latex?%5Cmathcal%7BL%7D_n%28%5Ctheta%29)

The maximum of ![\ell_n(\theta)](http://latex.codecogs.com/gif.latex?%5Cell_n%28%5Ctheta%29) occurs at the same place as the maximum of ![\mathcal{L}_n(\theta)](http://latex.codecogs.com/gif.latex?%5Cmathcal%7BL%7D_n%28%5Ctheta%29), so maximizing the log-likelihood leads to the same answer as maximizing the likelihood. Often, it is easier to work with the log-likelihood.

### `GridSearchCV`

Grid Search is used to optimize the parameters of a model using an internal Cross-Validation: evaluating estimator performance scheme.

```python
tuned_parameters = [{'kernel': ['rbf'], 'gamma': [1e-3, 1e-4],
                     'C': [1, 10, 100, 1000]},
                    {'kernel': ['linear'], 'C': [1, 10, 100, 1000]}]
scores = ['precision', 'recall']
clf = GridSearchCV(SVC(C=1), tuned_parameters, cv=5, scoring=score)
    clf.fit(X_train, y_train)
					
```

It is recommended to split the data into a development set (to be fed to the GridSearchCV instance) and an evaluation set to compute performance metrics. This can be done by using the `cross_validation.train_test_split` utility function.

### Model specific cross-validation

The most common parameter amenable to this strategy is the parameter encoding the strength of the regularizer. In this case we say that we compute the regularization path of the estimator.

### Information Criterion

`linear_model.LassoLarsIC([criterion, ...])` benefitting from the Aikike Information Criterion (AIC) or the Bayesian Information Criterion (BIC) for automated model selection.

### Out of Bag Estimates
