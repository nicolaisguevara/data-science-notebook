Estimators
==========

### Unbiased estimators

Let δ be an estimator of a function g of a parameter θ. We say that δ is unbiased if for all value of θ:

![E_\theta[\delta(X)]=g(\theta)](http://latex.codecogs.com/gif.latex?E_%5Ctheta%5B%5Cdelta%28X%29%5D%3Dg%28%5Ctheta%29)

if an estimator δis unbiased, then its MSE ![E_\theta[(\delta-g(\theta))^2]](http://latex.codecogs.com/gif.latex?E_%5Ctheta%5B%28%5Cdelta-g%28%5Ctheta%29%29%5E2%5D) is equal to its variance ![\mathrm{Var}_\theta(\delta)](http://latex.codecogs.com/gif.latex?%5Cmathrm%7BVar%7D_%5Ctheta%28%5Cdelta%29).

The bias of an estimator of g(θ) is ![E_\theta[\delta(X)]-g(\theta)](http://latex.codecogs.com/gif.latex?E_%5Ctheta%5B%5Cdelta%28X%29%5D-g%28%5Ctheta%29)

- The MSE of an estimator equals its variance plus the square of its bias.
- The MSE of an unbiased estimator equals its variance.
