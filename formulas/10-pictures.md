Machine Learning in 10 Pictures
===============================

### Test and training error

Why lower training error is not always a good thing: ESL Figure 2.11. Test and training error as a function of model complexity.

![1](http://3.bp.blogspot.com/-I7RePzkTwV8/Uv3juzHvmhI/AAAAAAAABls/AiyXsLCpE8o/s320/Screen+Shot+2014-02-14+at+11.35.49+AM.png)

### Under and overfitting

PRML Figure 1.4. Plots of polynomials having various orders M, shown as red curves, fitted to the data set generated by the green curve.

![2](http://3.bp.blogspot.com/-6B-XiC_ZoaI/UwYkIr0zDoI/AAAAAAAABn0/NSEA47IHbxA/s320/Screen+Shot+2014-02-20+at+5.48.39+PM.png)

### Occam's razor

ITILA Figure 28.3. Why Bayesian inference embodies Occam’s razor.

![3](http://2.bp.blogspot.com/-ypWCLY3qMIw/Uv3iTCFVBEI/AAAAAAAABlk/0B-QPrUSXYI/s320/Screen+Shot+2014-02-14+at+11.29.59+AM.png)

### Feature combinations

1. Why collectively relevant features may look individually irrelevant, and also
2. Why linear methods may fail. From Isabelle Guyon's feature extraction slides.

![4](http://2.bp.blogspot.com/-bjRCSHtwAI0/Uv30_ZlxojI/AAAAAAAABmo/dX2Z3nwmKMY/s320/Screen+Shot+2014-02-14+at+12.49.50+PM.png)

### Irrelevant features

Why irrelevant features hurt kNN, clustering, and other similarity based methods. The figure on the left shows two classes well separated on the vertical axis. The figure on the right adds an irrelevant horizontal axis which destroys the grouping and makes many points nearest neighbors of the opposite class.

![5](http://2.bp.blogspot.com/-XGfbFxQW_vw/Uv4x6d5O_lI/AAAAAAAABnE/ifK2X_BNb38/s320/irrelevant+features+(1).png)

### Basis functions

How non-linear basis functions turn a low dimensional classification problem without a linear boundary into a high dimensional problem with a linear boundary. From SVM tutorial slides by Andrew Moore: a one dimensional non-linear classification problem with input x is turned into a 2-D problem z=(x, x^2) that is linearly separable.

![6](http://3.bp.blogspot.com/-nl096TR2zE8/Uv3ukxE2ZRI/AAAAAAAABmI/EdLT10talBY/s320/Screen+Shot+2014-02-14+at+12.21.41+PM.png)

### Discriminative vs. Generative

Why discriminative learning may be easier than generative: PRML Figure 1.27. Example of the class-conditional densities for two classes having a single input variable x (left plot) together with the corresponding posterior probabilities (right plot). Note that the left-hand mode of the class-conditional density p(x|C1), shown in blue on the left plot, has no effect on the posterior probabilities. The vertical green line in the right plot shows the decision boundary in x that gives the minimum misclassification rate.

![7](http://4.bp.blogspot.com/-6ME6FjzHcag/Uv31hkiDu5I/AAAAAAAABm0/j8Qc-pdqvbg/s320/Screen+Shot+2014-02-14+at+12.51.35+PM.png)

### Loss functions

Learning algorithms can be viewed as optimizing different loss functions: PRML Figure 7.5. Plot of the ‘hinge’ error function used in support vector machines, shown in blue, along with the error function for logistic regression, rescaled by a factor of 1/ln(2) so that it passes through the point (0, 1), shown in red. Also shown are the misclassification error in black and the squared error in green.

![8](http://1.bp.blogspot.com/-LUK45njH10A/Uv30p0CnG5I/AAAAAAAABmg/sVbUWqJjWFc/s320/Screen+Shot+2014-02-14+at+12.47.03+PM.png)

### Geometry of least squares

ESL Figure 3.2. The N-dimensional geometry of least squares regression with two predictors. The outcome vector y is orthogonally projected onto the hyperplane spanned by the input vectors x1 and x2. The projection yˆ represents the vector of the least squares predictions.

![9](http://4.bp.blogspot.com/-wQwYTZR1cU0/Uv41AN0MZII/AAAAAAAABnQ/jRtYqBvKB7Y/s320/Screen+Shot+2014-02-14+at+5.21.38+PM.png)

### Sparsity: Why Lasso (L1 regularization or Laplacian prior) gives sparse solutions (i.e. weight vectors with more zeros)

ESL Figure 3.11. Estimation picture for the lasso (left) and ridge regression (right). Shown are contours of the error and constraint functions. The solid blue areas are the constraint regions |β1| + |β2| ≤ t and β12 + β22 ≤ t2, respectively, while the red ellipses are the contours of the least squares error function. 

![10](http://4.bp.blogspot.com/-KQ4UlC18gmc/Uv3lyrffxII/AAAAAAAABl4/GJFH7BNAEVg/s320/Screen+Shot+2014-02-14+at+11.40.12+AM.png)