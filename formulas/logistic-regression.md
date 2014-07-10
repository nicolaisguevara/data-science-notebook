Logistic Regression
===================

> DeGroot. Probability and Statistics

### Bernoulli Distributions

A random variable X has the *Bernoulli distribution with parameter p* (![0 \leq p \leq 1](http://latex.codecogs.com/gif.latex?%5Cinline%20%5Cdpi%7B100%7D%20%5Cbg_white%200%20%5Cleq%20p%20%5Cleq%201)) if X can only take the values 0 and 1 and the probabilities are

![\mathrm{Pr}(X=1)=p\quad\textrm{and}\quad\mathrm{Pr}(X=0)=1-p](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Cmathrm%7BPr%7D%28X%3D1%29%3Dp%5Cquad%5Ctextrm%7Band%7D%5Cquad%5Cmathrm%7BPr%7D%28X%3D0%29%3D1-p).

The p.f. of X can be written as follows:

![f(x|p)=\begin{cases}p^{x}(1-p)^{1-x}&\textrm{for }x=0,1,\\0&\textrm{otherwise}\end{cases}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20f%28x%7Cp%29%3D%5Cbegin%7Bcases%7Dp%5E%7Bx%7D%281-p%29%5E%7B1-x%7D%26%5Ctextrm%7Bfor%20%7Dx%3D0%2C1%2C%5C%5C0%26%5Ctextrm%7Botherwise%7D%5Cend%7Bcases%7D)

![E(X)=1\cdot p+0\cdot(1-p)=p](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20E%28X%29%3D1%5Ccdot%20p&plus;0%5Ccdot%281-p%29%3Dp)

![\mathrm{Var}(X)=E(X^2)-[E(X)]^2=p(1-p)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Cmathrm%7BVar%7D%28X%29%3DE%28X%5E2%29-%5BE%28X%29%5D%5E2%3Dp%281-p%29)

### Bernoulli Trials/Process

If the random variables in a finite or infinite sequence X1,X2,... are i.i.d., and if each random variable Xi has the Bernoulli distribution with parameter p, then it is said that X1,X2,... are *Bernoulli trials with parameter p*. The infinite sequence of Bernoulli trials is also called a *Bernoulli process*.

*Example*: Tossing a coin: random variables X1,X2,... are Bernoulli trials with parameter p=1/2.

### Binomial Distributions

A random variable X has the *binomial distribution with parameters n and p* if X has a discrete distribution for which the p.f. is as follows:

![f(x|n,p)=\begin{cases}\binom{n}{x}p^{x}(1-p)^{n-x}&\textrm{for }x=0,1,2,\dots,n,\\0&\textrm{otherwise}\end{cases}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20f%28x%7Cn%2Cp%29%3D%5Cbegin%7Bcases%7D%5Cbinom%7Bn%7D%7Bx%7Dp%5E%7Bx%7D%281-p%29%5E%7Bn-x%7D%26%5Ctextrm%7Bfor%20%7Dx%3D0%2C1%2C2%2C%5Cdots%2Cn%2C%5C%5C0%26%5Ctextrm%7Botherwise%7D%5Cend%7Bcases%7D).

where n is a positive integer and p lies in the interval ![0 \leq p \leq 1](http://latex.codecogs.com/gif.latex?%5Cinline%20%5Cdpi%7B100%7D%20%5Cbg_white%200%20%5Cleq%20p%20%5Cleq%201).

![E(X)=\sum_{i=1}^{n}E(X_i)=np](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20E%28X%29%3D%5Csum_%7Bi%3D1%7D%5E%7Bn%7DE%28X_i%29%3Dnp)

![\mathrm{Var}(X)=\sum_{i=1}^{n}\mathrm{Var}(X_i)=np(1-p)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Cmathrm%7BVar%7D%28X%29%3D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%5Cmathrm%7BVar%7D%28X_i%29%3Dnp%281-p%29)

### Relationship between Bernoulli and Binomial

If the random variables X1,...,Xn form n Bernoulli trials with parameter p, and X=X1+...+Xn, then X has the binomial distribution with parameters n and p.

*Notes*

Every random varialbe that takes only the two values 0 and 1 must have a Bernoulli distribution. However, not every sum of Bernoulli random variables has a binomial distribution. The Bernoulli random variables must be mutual independent, and they must all have the same parameter.

*Summary*

A random variable X has the Bernoulli distribution with parameter p if the p.f. of X is ![f(x|p)=p^x(1-p)^{1-x}](http://latex.codecogs.com/gif.latex?%5Cinline%20%5Cdpi%7B100%7D%20%5Cbg_white%20f%28x%7Cp%29%3Dp%5Ex%281-p%29%5E%7B1-x%7D) for x=0,1 and 0 otherwise. If X1,...,Xn are i.i.d random varialbes all having the Bernoulli distribution with parameter p, then we refer X1,...,Xn as Bernoulli trials, and ![X=\sum_{i=1}^{n}X_i](http://latex.codecogs.com/gif.latex?%5Cinline%20%5Cdpi%7B100%7D%20%5Cbg_white%20X%3D%5Csum_%7Bi%3D1%7D%5E%7Bn%7DX_i) has the binomial distribution with parameters n and p. Also, X is the number of successes in the n Bernoulli trials, where success on trial i corresponds to Xi=1 and failure corresponds to Xi=0.

### Logistic Regression

> Dr. David A. Stephens. [CHAPTER 5 LOGISTIC AND POISSON REGRESSION](http://www2.imperial.ac.uk/~das01/MyWeb/M3S12/Handouts/Notes/Chap5.pdf)

Logistic regression is a special case of the binomial/Bernoulli GLM for binary response random Yi with canonical logistic (or logit) link:

![Y_i|\theta_{0i}\sim \mathit{Bernoulli}(\theta_{0i})\quad f_{Y_i|\theta_{0i}}(y_i;\theta_{0i})=\theta_{0i}^{yi}(1-\theta_{0i})^{1-y_i}
](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20Y_i%7C%5Ctheta_%7B0i%7D%5Csim%20%5Cmathit%7BBernoulli%7D%28%5Ctheta_%7B0i%7D%29%5Cquad%20f_%7BY_i%7C%5Ctheta_%7B0i%7D%7D%28y_i%3B%5Ctheta_%7B0i%7D%29%3D%5Ctheta_%7B0i%7D%5E%7Byi%7D%281-%5Ctheta_%7B0i%7D%29%5E%7B1-y_i%7D)

![\mathrm{logit}(\theta_{0i})=\log\Big(\frac{\theta_{0i}}{1-\theta_{0i}}\Big)=x_i^T\beta](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Cmathrm%7Blogit%7D%28%5Ctheta_%7B0i%7D%29%3D%5Clog%5CBig%28%5Cfrac%7B%5Ctheta_%7B0i%7D%7D%7B1-%5Ctheta_%7B0i%7D%7D%5CBig%29%3Dx_i%5ET%5Cbeta)

For this model, the expected response ![\mu_i](http://latex.codecogs.com/gif.latex?%5Cinline%20%5Cdpi%7B100%7D%20%5Cbg_white%20%5Cmu_i) is:

![\mu_i=\theta_{0i}=\frac{\exp\{x_i^T\beta\}}{1+\exp\{x_i^T\beta\}}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Cmu_i%3D%5Ctheta_%7B0i%7D%3D%5Cfrac%7B%5Cexp%5C%7Bx_i%5ET%5Cbeta%5C%7D%7D%7B1&plus;%5Cexp%5C%7Bx_i%5ET%5Cbeta%5C%7D%7D).

### Risks, Odds, and Odds Ratios

For the logistic regression GLM, results relating to odds and odds ratios are straightforward. We have the odds on occurence or odds on incidence

![\frac{P[Y_i=1]}{P[Y_i=0]}=\frac{\theta_i}{1-\theta_i}=exp\{x_i^T\beta\}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Cfrac%7BP%5BY_i%3D1%5D%7D%7BP%5BY_i%3D0%5D%7D%3D%5Cfrac%7B%5Ctheta_i%7D%7B1-%5Ctheta_i%7D%3Dexp%5C%7Bx_i%5ET%5Cbeta%5C%7D)

and for two different predictor vectors xi and xj, the odds ratio

![\psi=\frac{P[Y_i]=1/P[Y_i=0]}{P[Y_j=1]/P[Y_j=0]}=\frac{\theta_i/(1-\theta_i)}{\theta_j/(1-\theta_j)}=\frac{\exp\{x_i^T\beta\}}{\exp\{x_j^T\beta\}}=\exp\{(x_i-x_j)^T\beta\}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Cpsi%3D%5Cfrac%7BP%5BY_i%5D%3D1/P%5BY_i%3D0%5D%7D%7BP%5BY_j%3D1%5D/P%5BY_j%3D0%5D%7D%3D%5Cfrac%7B%5Ctheta_i/%281-%5Ctheta_i%29%7D%7B%5Ctheta_j/%281-%5Ctheta_j%29%7D%3D%5Cfrac%7B%5Cexp%5C%7Bx_i%5ET%5Cbeta%5C%7D%7D%7B%5Cexp%5C%7Bx_j%5ET%5Cbeta%5C%7D%7D%3D%5Cexp%5C%7B%28x_i-x_j%29%5ET%5Cbeta%5C%7D)

![\log\psi=(x_i-x_j)^T\beta](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Clog%5Cpsi%3D%28x_i-x_j%29%5ET%5Cbeta)

Suppose xi and xj (both vectors of K+1 elements) differ only in element k, then

![\psi=\exp\big\{(x_i-x_j)^T\beta\big\}=\exp\big\{(x_{ik}-x_{jk})\beta_k\big\}\quad\Rightarrow\quad\log\psi=(x_{ik}-x{jk})\beta_k](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Cpsi%3D%5Cexp%5Cbig%5C%7B%28x_i-x_j%29%5ET%5Cbeta%5Cbig%5C%7D%3D%5Cexp%5Cbig%5C%7B%28x_%7Bik%7D-x_%7Bjk%7D%29%5Cbeta_k%5Cbig%5C%7D%5Cquad%5CRightarrow%5Cquad%5Clog%5Cpsi%3D%28x_%7Bik%7D-x%7Bjk%7D%29%5Cbeta_k)

and thus the odds ratios for different predictor values is available in a straightforward form. Thus the log-odds ratio is a linear function of the predictor and the coefficient. The odds ratio for *discrete (factor) predictors* in the logistic GLM is particularly straightforward.

### Poisson Regression

Poisson Regression is the term applied to the Poisson GLM, for non-negative integer response variable Yi where the **canonical** log link is used:

![Y_i|\lambda_{0i}\sim\mathit{Poisson}(\lambda_{0i})\quad f_{Y_i|\lambda_{0i}}(y_i\lambda_{0i})=\frac{\exp\{-\lambda_{0i}\lambda_{0i}^{y_i}\}}{y_i!}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20Y_i%7C%5Clambda_%7B0i%7D%5Csim%5Cmathit%7BPoisson%7D%28%5Clambda_%7B0i%7D%29%5Cquad%20f_%7BY_i%7C%5Clambda_%7B0i%7D%7D%28y_i%5Clambda_%7B0i%7D%29%3D%5Cfrac%7B%5Cexp%5C%7B-%5Clambda_%7B0i%7D%5Clambda_%7B0i%7D%5E%7By_i%7D%5C%7D%7D%7By_i%21%7D)

![\log(\lambda_{0i})=x_i^T\beta](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Clog%28%5Clambda_%7B0i%7D%29%3Dx_i%5ET%5Cbeta)

```
glm(y~factor(exposure)+offset(log(T)),family=poisson(link=log))
```

### Bayes Information Creiterion (BIC)

![\mathbf{BIC}_M=2\big[-l_M(\hat{\beta}_M)+d\log n\big]](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Cbg_white%20%5Cmathbf%7BBIC%7D_M%3D2%5Cbig%5B-l_M%28%5Chat%7B%5Cbeta%7D_M%29&plus;d%5Clog%20n%5Cbig%5D)

### Relationship Between Logistic Regression and LDA

> Larry Wasserman, All of Statistics

LDA and logistic regression are almost the same thing.

The joint density of a single observation is ![f(x,y)=f(x|y)f(y)=f(y|x)f(x)](http://latex.codecogs.com/gif.latex?f%28x%2Cy%29%3Df%28x%7Cy%29f%28y%29%3Df%28y%7Cx%29f%28x%29)

In LDA we estimated the whole joint distribution by maximizing the likelihood

![\prod_if(x_i,y_i)=\underbrace{\prod_if(x_i|y_i)}_{\mathrm{Gaussian}}\underbrace{\prod_if(y_i)}_{\mathrm{Bernoulli}}](http://latex.codecogs.com/gif.latex?%5Cprod_if%28x_i%2Cy_i%29%3D%5Cunderbrace%7B%5Cprod_if%28x_i%7Cy_i%29%7D_%7B%5Cmathrm%7BGaussian%7D%7D%5Cunderbrace%7B%5Cprod_if%28y_i%29%7D_%7B%5Cmathrm%7BBernoulli%7D%7D)

In logistic regression we maximized the conditional likelihood ![\prod_if(y_i|x_i)](http://latex.codecogs.com/gif.latex?%5Cprod_if%28y_i%7Cx_i%29) but we ignored the second term ![f(x_i)](http://latex.codecogs.com/gif.latex?f%28x_i%29)

![\prod_if(x_i,y_i)=\underbrace{\prod_if(y_i|x_i)}_{\mathrm{logistic}}\underbrace{\prod_if(x_i)}_{\mathrm{ignored}}](http://latex.codecogs.com/gif.latex?%5Cprod_if%28x_i%2Cy_i%29%3D%5Cunderbrace%7B%5Cprod_if%28y_i%7Cx_i%29%7D_%7B%5Cmathrm%7Blogistic%7D%7D%5Cunderbrace%7B%5Cprod_if%28x_i%29%7D_%7B%5Cmathrm%7Bignored%7D%7D)

Since classification only requires knowing ![f(y|x)](http://latex.codecogs.com/gif.latex?f%28y%7Cx%29), we don’t really need to estimate the whole joint distribution. Logistic regression leaves the marginal distributionf(x) unspecified so it is more nonparametric than LDA. This is an advantage of the logistic regression approach over LDA.

To summarize: LDA and logistic regression both lead to a linear classification rule.

- In LDA we estimate the entire joint distribution ![f(x,y)=f(x|y)f(y)](http://latex.codecogs.com/gif.latex?f%28x%2Cy%29%3Df%28x%7Cy%29f%28y%29).
- In logistic regression we only estimate ![f(y|x)](http://latex.codecogs.com/gif.latex?f%28y%7Cx%29) and we don’t bother estimating ![f(x)](http://latex.codecogs.com/gif.latex?f%28x%29).
