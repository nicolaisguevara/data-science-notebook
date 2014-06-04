ANOVA
=====

Analysis of Variance: is a method for decomposing variance in a measured outcome in to variance that can be explained, such as by a regression model or an experimental treatment assignment, and variance which cannot be explained, which is often attributable to random error.

"Sum of squares" can be decompsed as:

![\sum_{i=1}^N(Y_i-\bar{Y})^2=\sum_{i=1}^N(\hat{Y}_i-\bar{Y})^2+\sum_{i=1}^Ne_i^2](http://latex.codecogs.com/gif.latex?%5Csum_%7Bi%3D1%7D%5EN%28Y_i-%5Cbar%7BY%7D%29%5E2%3D%5Csum_%7Bi%3D1%7D%5EN%28%5Chat%7BY%7D_i-%5Cbar%7BY%7D%29%5E2&plus;%5Csum_%7Bi%3D1%7D%5ENe_i%5E2)

where

![SS_{total}=\sum_{i=1}^N(Y_i-\bar{Y})^2](http://latex.codecogs.com/gif.latex?SS_%7Btotal%7D%3D%5Csum_%7Bi%3D1%7D%5EN%28Y_i-%5Cbar%7BY%7D%29%5E2)

![SS_{regresssion}=\sum_{i=1}^N(\hat{Y}_i-\bar{Y})^2](http://latex.codecogs.com/gif.latex?SS_%7Bregresssion%7D%3D%5Csum_%7Bi%3D1%7D%5EN%28%5Chat%7BY%7D_i-%5Cbar%7BY%7D%29%5E2)

![SS_{error}=\sum_{i=1}^Ne_i^2](http://latex.codecogs.com/gif.latex?SS_%7Berror%7D%3D%5Csum_%7Bi%3D1%7D%5ENe_i%5E2)

### One-way ANOVA

![F=\frac{\textrm{explained variance}}{\textrm{unexplained variance}}=\frac{SS_{regression}/p}{SS_{error}/(n-p-1)}](http://latex.codecogs.com/gif.latex?F%3D%5Cfrac%7B%5Ctextrm%7Bexplained%20variance%7D%7D%7B%5Ctextrm%7Bunexplained%20variance%7D%7D%3D%5Cfrac%7BSS_%7Bregression%7D/p%7D%7BSS_%7Berror%7D/%28n-p-1%29%7D)

![R^2=\frac{SS_{regression}}{SS_{total}}=1-\frac{SS_{error}}{SS_{total}}](http://latex.codecogs.com/gif.latex?R%5E2%3D%5Cfrac%7BSS_%7Bregression%7D%7D%7BSS_%7Btotal%7D%7D%3D1-%5Cfrac%7BSS_%7Berror%7D%7D%7BSS_%7Btotal%7D%7D)

A high R^2 value means that much of the variation is explained by the model, which in a regression framework means that the model ts the data well.

### Two-way ANOVA
