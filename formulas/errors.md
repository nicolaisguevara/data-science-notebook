Evaluation
==========

### MAE

mean absolute error

![MAE=\frac{1}{n}\sum_{i=1}^{n}|y_i-\hat{y}_i|](http://latex.codecogs.com/gif.latex?MAE%3D%5Cfrac%7B1%7D%7Bn%7D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%7Cy_i-%5Chat%7By%7D_i%7C)

### MSE

mean squared error

![MSE=\frac{1}{n}\sum_{i=1}^{n}(y_i-\hat{y_i})^2](http://latex.codecogs.com/gif.latex?MSE%3D%5Cfrac%7B1%7D%7Bn%7D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28y_i-%5Chat%7By_i%7D%29%5E2)

![MSE=\frac{1}{n}\sum_{i=1}^{n}(y_i-\hat{f}(x_i))^2](http://latex.codecogs.com/gif.latex?MSE%3D%5Cfrac%7B1%7D%7Bn%7D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28y_i-%5Chat%7Bf%7D%28x_i%29%29%5E2)

### RMSE

root mean squared error

![RMSE=\sqrt{\frac{1}{n}\sum_{i=1}^{n}(y_i-\hat{y}_i)^2}](http://latex.codecogs.com/gif.latex?RMSE%3D%5Csqrt%7B%5Cfrac%7B1%7D%7Bn%7D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28y_i-%5Chat%7By%7D_i%29%5E2%7D)

### SSE/RSS

sum of squared errors of prediction (SSE) = residual sum of squares (RSS)

![SSE=\sum_{i=1}^{n}(y_i-\hat{y}_i)^2](http://latex.codecogs.com/gif.latex?SSE%3D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28y_i-%5Chat%7By%7D_i%29%5E2)

![\textrm{RSS}=\sum(y_i-\hat{y}_i)^2](http://latex.codecogs.com/gif.latex?%5Ctextrm%7BRSS%7D%3D%5Csum%28y_i-%5Chat%7By%7D_i%29%5E2)

### SSR/ESS

sum of squared regression (SSR) = explained sum of sqaures (ESS)

![SSR=\sum_{i=1}^{n}(\hat{y}_i-\bar{y})^2](http://latex.codecogs.com/gif.latex?SSR%3D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28%5Chat%7By%7D_i-%5Cbar%7By%7D%29%5E2)

![\textrm{ESS}=\sum(\hat{y_i}-\bar{y})^2](http://latex.codecogs.com/gif.latex?%5Ctextrm%7BESS%7D%3D%5Csum%28%5Chat%7By_i%7D-%5Cbar%7By%7D%29%5E2)

### SST/TSS

sum of squared total (SST) = total sum of squares (TSS)

![SST=\sum_{i=1}^{n}(y_i-\bar{y})^2](http://latex.codecogs.com/gif.latex?SST%3D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28y_i-%5Cbar%7By%7D%29%5E2)

![SST=SSE+SSR](http://latex.codecogs.com/gif.latex?SST%3DSSE&plus;SSR)

![\textrm{TSS}=\textrm{RSS}+\textrm{ESS}](http://latex.codecogs.com/gif.latex?%5Ctextrm%7BTSS%7D%3D%5Ctextrm%7BRSS%7D&plus;%5Ctextrm%7BESS%7D)

### R^2

R-squared statistic

![R^2&=\frac{SSR}{SST}=1-\frac{SSE}{SST}](http://latex.codecogs.com/gif.latex?R%5E2%26%3D%5Cfrac%7BSSR%7D%7BSST%7D%3D1-%5Cfrac%7BSSE%7D%7BSST%7D)

![R^2&=\frac{\textrm{TSS}-\textrm{RSS}}{\textrm{TSS}}=1-\frac{\textrm{RSS}}{\textrm{TSS}}](http://latex.codecogs.com/gif.latex?R%5E2%26%3D%5Cfrac%7B%5Ctextrm%7BTSS%7D-%5Ctextrm%7BRSS%7D%7D%7B%5Ctextrm%7BTSS%7D%7D%3D1-%5Cfrac%7B%5Ctextrm%7BRSS%7D%7D%7B%5Ctextrm%7BTSS%7D%7D)

### Covariance

![\sigma_{X,Y}=\textrm{Cov}(X,Y)=\frac{1}{n-1}\sum_{i=1}^{n}(x_i-\bar{x})(y_i-\bar{y})](http://latex.codecogs.com/gif.latex?%5Csigma_%7BX%2CY%7D%3D%5Ctextrm%7BCov%7D%28X%2CY%29%3D%5Cfrac%7B1%7D%7Bn-1%7D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28x_i-%5Cbar%7Bx%7D%29%28y_i-%5Cbar%7By%7D%29)

### Correlation

![\textrm{Cor}(X,Y)=\frac{\sum_{i=1}^{n}(x_i-\bar{x})(y_i-\bar{y})}{\sqrt{\sum_{i=1}^{n}(x_i-\bar{x})^2}\sqrt{\sum_{i=1}^{n}(y_i-\bar{y})^2}}](http://latex.codecogs.com/gif.latex?%5Ctextrm%7BCor%7D%28X%2CY%29%3D%5Cfrac%7B%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28x_i-%5Cbar%7Bx%7D%29%28y_i-%5Cbar%7By%7D%29%7D%7B%5Csqrt%7B%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28x_i-%5Cbar%7Bx%7D%29%5E2%7D%5Csqrt%7B%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28y_i-%5Cbar%7By%7D%29%5E2%7D%7D)

![\rho_{X,Y}=Corr(X,Y)=\frac{\textrm{Cov}(X,Y)}{\sigma_X\sigma_Y}](http://latex.codecogs.com/gif.latex?%5Crho_%7BX%2CY%7D%3DCorr%28X%2CY%29%3D%5Cfrac%7B%5Ctextrm%7BCov%7D%28X%2CY%29%7D%7B%5Csigma_X%5Csigma_Y%7D)
