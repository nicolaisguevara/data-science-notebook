ANOVA
=====

Analysis of Variance: is a method for decomposing variance in a measured outcome in to variance that can be explained, such as by a regression model or an experimental treatment assignment, and variance which cannot be explained, which is often attributable to random error.

"Sum of squares" can be decompsed as:

![\sum_{i=1}^N(Y_i-\bar{Y})^2=\sum_{i=1}^N(\hat{Y}_i-\bar{Y})^2+\sum_{i=1}^Ne_i^2](http://latex.codecogs.com/gif.latex?%5Csum_%7Bi%3D1%7D%5EN%28Y_i-%5Cbar%7BY%7D%29%5E2%3D%5Csum_%7Bi%3D1%7D%5EN%28%5Chat%7BY%7D_i-%5Cbar%7BY%7D%29%5E2&plus;%5Csum_%7Bi%3D1%7D%5ENe_i%5E2)

where

![SS_{total}=\sum_{i=1}^N(Y_i-\bar{Y})^2](http://latex.codecogs.com/gif.latex?SS_%7Btotal%7D%3D%5Csum_%7Bi%3D1%7D%5EN%28Y_i-%5Cbar%7BY%7D%29%5E2)

![SS_{regresssion}=\sum_{i=1}^N(\hat{Y}_i-\bar{Y})^2](http://latex.codecogs.com/gif.latex?SS_%7Bregresssion%7D%3D%5Csum_%7Bi%3D1%7D%5EN%28%5Chat%7BY%7D_i-%5Cbar%7BY%7D%29%5E2)

![SS_{error}=\sum_{i=1}^Ne_i^2=\sum_{i=1}^{N}(Y_i-\hat{Y}_i)^2](http://latex.codecogs.com/gif.latex?SS_%7Berror%7D%3D%5Csum_%7Bi%3D1%7D%5ENe_i%5E2%3D%5Csum_%7Bi%3D1%7D%5E%7BN%7D%28Y_i-%5Chat%7BY%7D_i%29%5E2)

### One-way ANOVA

Source | df | SS | MS | F
------ | -- | -- | -- | -
Error | n-p-1 | SSerror | SSerror/(n-p-1)
Total | n-1 | SStotal

![F=\frac{\textrm{explained variance}}{\textrm{unexplained variance}}=\frac{SS_{regression}/p}{SS_{error}/(n-p-1)}](http://latex.codecogs.com/gif.latex?F%3D%5Cfrac%7B%5Ctextrm%7Bexplained%20variance%7D%7D%7B%5Ctextrm%7Bunexplained%20variance%7D%7D%3D%5Cfrac%7BSS_%7Bregression%7D/p%7D%7BSS_%7Berror%7D/%28n-p-1%29%7D)

![R^2=\frac{SS_{regression}}{SS_{total}}=1-\frac{SS_{error}}{SS_{total}}](http://latex.codecogs.com/gif.latex?R%5E2%3D%5Cfrac%7BSS_%7Bregression%7D%7D%7BSS_%7Btotal%7D%7D%3D1-%5Cfrac%7BSS_%7Berror%7D%7D%7BSS_%7Btotal%7D%7D)

The R^2 refers to how much of the variance is explained by the model.

- A high R^2 value means that much of the variation is explained by the model, which in a regression framework means that the model fits the data well.
- In the experimental framework, a high R^2 value would mean that much of the variation is explained by the treatment assignment, and little of the variance is due to random error within those treatment assignments.

### Two-way ANOVA

Analysis of variance is generally used with linear regression to assess model selection. When selecting the best model, we seek to strike a balance between goodness of fit and parsimony. If two models fit the data equally well, the model selected should include only those explanatory variables that explain a significant degree of the variance in the response variable.

The question is how to distinguish between important and trivial variables in a way that is systematic. Analysis of variance is one method for identifying the parameters of interest. 

Consider two normal linear models:

![y=\alpha+\beta_1X_1+\beta_2X2+\epsilon](http://latex.codecogs.com/gif.latex?y%3D%5Calpha&plus;%5Cbeta_1X_1&plus;%5Cbeta_2X2&plus;%5Cepsilon)

![y=\alpha+\beta_1X_1+\epsilon](http://latex.codecogs.com/gif.latex?y%3D%5Calpha&plus;%5Cbeta_1X_1&plus;%5Cepsilon)

We often refer to model one as the unrestricted model and model two as the restricted model. The question is which model is better. If the restricted model fits the data equally well then adding complexity does not improve the accuracy of the estimation significantly and the simpler (restricted) model is preferable.

The vector of residuals for the restricted model can be broken into two components:

![y-\hat{y}_1=(y-\hat{y}_2)+(\hat{y}_2-\hat{y}_1)](http://latex.codecogs.com/gif.latex?y-%5Chat%7By%7D_1%3D%28y-%5Chat%7By%7D_2%29&plus;%28%5Chat%7By%7D_2-%5Chat%7By%7D_1%29)

where ![\hat{y}_1=\hat{\beta}_1X_1](http://latex.codecogs.com/gif.latex?%5Chat%7By%7D_1%3D%5Chat%7B%5Cbeta%7D_1X_1) and ![\hat{y}_2=\hat{\beta}_1X_1+\hat{\beta}_2X_2](http://latex.codecogs.com/gif.latex?%5Chat%7By%7D_2%3D%5Chat%7B%5Cbeta%7D_1X_1&plus;%5Chat%7B%5Cbeta%7D_2X_2)

![SS_{\hat{\beta_1}}=SS_{\hat{\beta}_1\hat{\beta_2}}+(SS_{\hat{\beta_1}}-SS_{\hat{\beta}_1\hat{\beta}_2})](http://latex.codecogs.com/gif.latex?SS_%7B%5Chat%7B%5Cbeta_1%7D%7D%3DSS_%7B%5Chat%7B%5Cbeta%7D_1%5Chat%7B%5Cbeta_2%7D%7D&plus;%28SS_%7B%5Chat%7B%5Cbeta_1%7D%7D-SS_%7B%5Chat%7B%5Cbeta%7D_1%5Chat%7B%5Cbeta%7D_2%7D%29)

We want to choose the model that produces the most precise estimates of
the parameters of interest; the model that includes only those explanatory variables that explain a significant amount of the variance in the dependent variable.

Under the assumptions of OLS, ![SS_{\hat{\beta_1}}](http://latex.codecogs.com/gif.latex?SS_%7B%5Chat%7B%5Cbeta_1%7D%7D) and ![SS_{\hat{\beta}_1\hat{\beta_2}}](http://latex.codecogs.com/gif.latex?SS_%7B%5Chat%7B%5Cbeta%7D_1%5Chat%7B%5Cbeta_2%7D%7D) are muutually independent and have a Chi-squared distribution.

![F=\frac{(SS_{\hat{\beta_1}-\hat{\beta}_1\hat{\beta_2}})/(p-q)}{SS_{\hat{\beta}_1\hat{\beta}_2}/(n-p-1)}](http://latex.codecogs.com/gif.latex?F%3D%5Cfrac%7B%28SS_%7B%5Chat%7B%5Cbeta_1%7D-%5Chat%7B%5Cbeta%7D_1%5Chat%7B%5Cbeta_2%7D%7D%29/%28p-q%29%7D%7BSS_%7B%5Chat%7B%5Cbeta%7D_1%5Chat%7B%5Cbeta%7D_2%7D/%28n-p-1%29%7D)

where p and q represent the number of parameters in the unrestricted and restricted model respectively (excluding the intercept).

Under the null hypothesis that the unrestricted model does not provide significantly better fit than the restricted model, reject the null if
the F calculated from the data is greater than the critical value of the F distribution with (p-q, n-p) degrees of freedom.

Model | df | ΔSS | MS | F
------ | -- | -- | -- | -
![\hat{y}=\hat{\alpha}](http://latex.codecogs.com/gif.latex?%5Chat%7By%7D%3D%5Chat%7B%5Calpha%7D) | 1 | SSerror-SSa | ![\frac{SS_{error}-SS_{\hat{\alpha}}}{n-(n-1)}](http://latex.codecogs.com/gif.latex?%5Cfrac%7BSS_%7Berror%7D-SS_%7B%5Chat%7B%5Calpha%7D%7D%7D%7Bn-%28n-1%29%7D) | ![\frac{SS_{error}-SS_{\hat{\alpha}}}{SS_{\hat{\alpha}}/(n-1)}](http://latex.codecogs.com/gif.latex?%5Cfrac%7BSS_%7Berror%7D-SS_%7B%5Chat%7B%5Calpha%7D%7D%7D%7BSS_%7B%5Chat%7B%5Calpha%7D%7D/%28n-1%29%7D)
![\hat{y}=\hat{\alpha}+\hat{\beta}X_1](http://latex.codecogs.com/gif.latex?%5Chat%7By%7D%3D%5Chat%7B%5Calpha%7D&plus;%5Chat%7B%5Cbeta%7DX_1) | 2 | ![SS_{\hat{\alpha}}-SS_{\hat{\beta}_1}](http://latex.codecogs.com/gif.latex?SS_%7B%5Chat%7B%5Calpha%7D%7D-SS_%7B%5Chat%7B%5Cbeta%7D_1%7D)
![\hat{y}=\hat{\alpha}+\hat{\beta}_1X_1+\hat{\beta}_2X_2](http://latex.codecogs.com/gif.latex?%5Chat%7By%7D%3D%5Chat%7B%5Calpha%7D&plus;%5Chat%7B%5Cbeta%7D_1X_1&plus;%5Chat%7B%5Cbeta%7D_2X_2) | 3 | ![SS_{\hat{\beta}_1}-SS_{\hat{\beta}_1,\hat{\beta}_2}](http://latex.codecogs.com/gif.latex?SS_%7B%5Chat%7B%5Cbeta%7D_1%7D-SS_%7B%5Chat%7B%5Cbeta%7D_1%2C%5Chat%7B%5Cbeta%7D_2%7D)
Total | 3 | SSerror | SSerror/(n-3)
