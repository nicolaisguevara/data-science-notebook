Bias-Variance Trade-Off
=======================

(islr)

![Y=f(X)+\epsilon](http://latex.codecogs.com/gif.latex?Y%3Df%28X%29&plus;%5Cepsilon)

- ϵ is a random error term, which is independent of X and has mean zero.
- f represents the systematic information that X provides about Y.

![\hat{Y}=\hat{f}(X)](http://latex.codecogs.com/gif.latex?%5Chat%7BY%7D%3D%5Chat%7Bf%7D%28X%29)

![\begin{align*}E(Y-\hat{Y})^2 &=E[f(X)+\epsilon-\hat{f}(X)]^2\\&=[f(X)-\hat{f}(X))]^2+\textrm{Var}(\epsilon)\end{align*}](http://latex.codecogs.com/gif.latex?%5Cbegin%7Balign*%7DE%28Y-%5Chat%7BY%7D%29%5E2%20%26%3DE%5Bf%28X%29&plus;%5Cepsilon-%5Chat%7Bf%7D%28X%29%5D%5E2%5C%5C%26%3D%5Bf%28X%29-%5Chat%7Bf%7D%28X%29%29%5D%5E2&plus;%5Ctextrm%7BVar%7D%28%5Cepsilon%29%5Cend%7Balign*%7D)

- ![E(Y-\hat{Y})^2](http://latex.codecogs.com/gif.latex?E%28Y-%5Chat%7BY%7D%29%5E2) represents the average, or expected value, of the squared expected value difference between the predicted and actual value of Y.
- ![\textrm{Var}(\epsilon)](http://latex.codecogs.com/gif.latex?%5Ctextrm%7BVar%7D%28%5Cepsilon%29) represents the variance associated with the error term ϵ.

![E\left(y_0-\hat{f}(x_0)\right)^2=\textrm{Var}(\hat{f}(x_0))+\textrm{Bias}[(\hat{f}(x_0))]^2+\textrm{Var}(\epsilon)](http://latex.codecogs.com/gif.latex?E%5Cleft%28y_0-%5Chat%7Bf%7D%28x_0%29%5Cright%29%5E2%3D%5Ctextrm%7BVar%7D%28%5Chat%7Bf%7D%28x_0%29%29&plus;%5Ctextrm%7BBias%7D%5B%28%5Chat%7Bf%7D%28x_0%29%29%5D%5E2&plus;%5Ctextrm%7BVar%7D%28%5Cepsilon%29)

- *Variance* refers to the amount by which ![\hat{f}](http://latex.codecogs.com/gif.latex?%5Chat%7Bf%7D) would change if we estimated it using a different training data set.
- *Bias* refers to the error that is introduced by approximating a real-life problem, which may be extremely complicated, by a much simpler model.

