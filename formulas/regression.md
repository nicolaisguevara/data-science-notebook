Regression
==========

### Lienar Regression

fit by least squares: minimize RSS

### RSS

Residual Sum of Squares

![\textrm{RSS}=e_1^2+e_2^2+\cdots+e_n^2](http://latex.codecogs.com/gif.latex?%5Ctextrm%7BRSS%7D%3De_1%5E2&plus;e_2%5E2&plus;%5Ccdots&plus;e_n%5E2)

### RSE

Residual Standard Error

![\textrm{RSE}=\sqrt{\frac{1}{n-2}\textrm{RSS}}=\sqrt{\frac{1}{n-2}\sum_{i=1}^{n}(y_i-\hat{y}_i)^2}](http://latex.codecogs.com/gif.latex?%5Ctextrm%7BRSE%7D%3D%5Csqrt%7B%5Cfrac%7B1%7D%7Bn-2%7D%5Ctextrm%7BRSS%7D%7D%3D%5Csqrt%7B%5Cfrac%7B1%7D%7Bn-2%7D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28y_i-%5Chat%7By%7D_i%29%5E2%7D)

### R^2

R-squared Statistic

![R^2=\frac{\textrm{TSS}-\textrm{RSS}}{\textrm{TSS}}=1-\frac{\textrm{RSS}}{\textrm{TSS}}](http://latex.codecogs.com/gif.latex?R%5E2%3D%5Cfrac%7B%5Ctextrm%7BTSS%7D-%5Ctextrm%7BRSS%7D%7D%7B%5Ctextrm%7BTSS%7D%7D%3D1-%5Cfrac%7B%5Ctextrm%7BRSS%7D%7D%7B%5Ctextrm%7BTSS%7D%7D)

![\textrm{TSS}=\sum(y_i-\bar{y})^2](http://latex.codecogs.com/gif.latex?%5Ctextrm%7BTSS%7D%3D%5Csum%28y_i-%5Cbar%7By%7D%29%5E2)

- TSS measures the total variance in the response Y, and can be thought of as the amount of variability inherent in the response before the regression is performed.
- RSS measures the amount of variability that is left unexplained after performing the regression.
- TSS − RSS measures the amount of variability in the response that is explained.
- R^2 measures the proportion of variability inY that can be explained using X.

### F-statistic

![F=\frac{(\textrm{TSS}-\textrm{RSS})/p}{\textrm{RSS}/(n-p-1)}](http://latex.codecogs.com/gif.latex?F%3D%5Cfrac%7B%28%5Ctextrm%7BTSS%7D-%5Ctextrm%7BRSS%7D%29/p%7D%7B%5Ctextrm%7BRSS%7D/%28n-p-1%29%7D)

*Reference*

An Introduction to Statistical Learning
