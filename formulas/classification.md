Relationship Between Logistic Regression and LDA
===

> Larry Wasserman, All of Statistics

LDA and logistic regression are almost the same thing.

The joint density of a single observation is ![f(x,y)=f(x|y)f(y)=f(y|x)f(x)](http://latex.codecogs.com/gif.latex?f%28x%2Cy%29%3Df%28x%7Cy%29f%28y%29%3Df%28y%7Cx%29f%28x%29)

In LDA we estimated the whole joint distribution by maximizing the likelihood

![\prod_if(x_i,y_i)=\underbrace{\prod_if(x_i|y_i)}_{\mathrm{Gaussian}}\underbrace{\prod_if(y_i)}_{\mathrm{Bernoulli}}](http://latex.codecogs.com/gif.latex?%5Cprod_if%28x_i%2Cy_i%29%3D%5Cunderbrace%7B%5Cprod_if%28x_i%7Cy_i%29%7D_%7B%5Cmathrm%7BGaussian%7D%7D%5Cunderbrace%7B%5Cprod_if%28y_i%29%7D_%7B%5Cmathrm%7BBernoulli%7D%7D)

In logistic regression we maximized the conditional likelihood ![\prod_if(y_i|x_i)](http://latex.codecogs.com/gif.latex?%5Cprod_if%28y_i%7Cx_i%29) but we ignored the second term ![f(x_i)](http://latex.codecogs.com/gif.latex?f%28x_i%29)

![\prod_if(x_i,y_i)=\underbrace{\prod_if(x_i|y_i)}_{\mathrm{logistic}}\underbrace{\prod_if(y_i)}_{\mathrm{ignored}}](http://latex.codecogs.com/gif.latex?%5Cprod_if%28x_i%2Cy_i%29%3D%5Cunderbrace%7B%5Cprod_if%28x_i%7Cy_i%29%7D_%7B%5Cmathrm%7Blogistic%7D%7D%5Cunderbrace%7B%5Cprod_if%28y_i%29%7D_%7B%5Cmathrm%7Bignored%7D%7D)

Since classification only requires knowing ![f(y|x)](http://latex.codecogs.com/gif.latex?f%28y%7Cx%29), we don’t really need to estimate the whole joint distribution. Logistic regression leaves the marginal distributionf(x) unspecified so it is more nonparametric than LDA. This is an advantage of the logistic regression approach over LDA.

To summarize: LDA and logistic regression both lead to a linear classification rule.

- In LDA we estimate the entire joint distribution ![f(x,y)=f(x|y)f(y)](http://latex.codecogs.com/gif.latex?f%28x%2Cy%29%3Df%28x%7Cy%29f%28y%29).
- In logistic regression we only estimate ![f(y|x)](http://latex.codecogs.com/gif.latex?f%28y%7Cx%29) and we don’t bother estimating ![f(x)](http://latex.codecogs.com/gif.latex?f%28x%29).
