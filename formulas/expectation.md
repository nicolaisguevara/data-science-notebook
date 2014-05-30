Expectation
===============

### Mean

![\mathbb{E}(X)=\int{xdF(x)}=\begin{cases}\sum_x{f(x)}&\text{if}\ X\ \text{is discrete}\\\int{xf(x)dx}&\text{if}\ X\ \text{is continuous} \end{cases}](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BE%7D%28X%29%3D%5Cint%7BxdF%28x%29%7D%3D%5Cbegin%7Bcases%7D%5Csum_x%7Bf%28x%29%7D%26%5Ctext%7Bif%7D%5C%20X%5C%20%5Ctext%7Bis%20discrete%7D%5C%5C%5Cint%7Bxf%28x%29dx%7D%26%5Ctext%7Bif%7D%5C%20X%5C%20%5Ctext%7Bis%20continuous%7D%20%5Cend%7Bcases%7D)

![\mathbb{E}(X)=\mathbb{E}X=\int{xdF(x)}=\mu=\mu_X](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BE%7D%28X%29%3D%5Cmathbb%7BE%7DX%3D%5Cint%7BxdF%28x%29%7D%3D%5Cmu%3D%5Cmu_X)

#### sum of means

![\mathbb{E}\left(\sum_{i}^{n}a_iX_i\right)=\sum_{i}^{n}a_i\mathbb{E}(X_i)](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BE%7D%5Cleft%28%5Csum_%7Bi%7D%5E%7Bn%7Da_iX_i%5Cright%29%3D%5Csum_%7Bi%7D%5E%7Bn%7Da_i%5Cmathbb%7BE%7D%28X_i%29)

#### product of means

![\mathbb{E}\left(\prod_{i=1}^{n}X_i\right)=\prod_{i=1}^{n}\mathbb{E}(X_i)](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BE%7D%5Cleft%28%5Cprod_%7Bi%3D1%7D%5E%7Bn%7DX_i%5Cright%29%3D%5Cprod_%7Bi%3D1%7D%5E%7Bn%7D%5Cmathbb%7BE%7D%28X_i%29)

![\bar{x}=\frac{1}{n}\sum_{i=1}^{n}x_i](http://latex.codecogs.com/gif.latex?%5Cbar%7Bx%7D%3D%5Cfrac%7B1%7D%7Bn%7D%5Csum_%7Bi%3D1%7D%5E%7Bn%7Dx_i)

### Variance

![\mathbb{V}(X)=\mathbb{E}(X-\mu)^2=\int(x-\mu)^2dF(x)](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BV%7D%28X%29%3D%5Cmathbb%7BE%7D%28X-%5Cmu%29%5E2%3D%5Cint%28x-%5Cmu%29%5E2dF%28x%29)

![\mathbb{V}(X)=\mathbb{V}X=\sigma^2](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BV%7D%28X%29%3D%5Cmathbb%7BV%7DX%3D%5Csigma%5E2)

![\mathbb{V}(X)=\mathbb{E}(X^2)-\mu^2](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BV%7D%28X%29%3D%5Cmathbb%7BE%7D%28X%5E2%29-%5Cmu%5E2)

![\mathbb{V}(aX+b)=a^2\mathbb{V}(X)](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BV%7D%28aX&plus;b%29%3Da%5E2%5Cmathbb%7BV%7D%28X%29)

![\mathbb{V}\left(\sum_{i=1}^{n}a_iX_i\right)=\sum_{i=1}^{n}a_i^2\mathbb{V}(X_i)](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BV%7D%5Cleft%28%5Csum_%7Bi%3D1%7D%5E%7Bn%7Da_iX_i%5Cright%29%3D%5Csum_%7Bi%3D1%7D%5E%7Bn%7Da_i%5E2%5Cmathbb%7BV%7D%28X_i%29)

### Sample Mean

![\bar{X}_n=\frac{1}{n}\sum_{i=1}^{n}X_i](http://latex.codecogs.com/gif.latex?%5Cbar%7BX%7D_n%3D%5Cfrac%7B1%7D%7Bn%7D%5Csum_%7Bi%3D1%7D%5E%7Bn%7DX_i)

### Sample Variance

![S_n^2=\frac{1}{n-1}\sum_{i=1}^{n}(X_i-\bar{X}_n)^2](http://latex.codecogs.com/gif.latex?S_n%5E2%3D%5Cfrac%7B1%7D%7Bn-1%7D%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28X_i-%5Cbar%7BX%7D_n%29%5E2)

*Theorm* Let X1, X2, ..., Xn be IID and let ![\mu=\mathbb{E}(X_i)](http://latex.codecogs.com/gif.latex?%5Cmu%3D%5Cmathbb%7BE%7D%28X_i%29) and ![\sigma^2=\mathbb{V}(X_i)](http://latex.codecogs.com/gif.latex?%5Csigma%5E2%3D%5Cmathbb%7BV%7D%28X_i%29), then

![\mathbb{E}(\bar{X}_n)=\mu](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BE%7D%28%5Cbar%7BX%7D_n%29%3D%5Cmu)

![\mathbb{V}(\bar{X}_n)=\frac{\sigma^2}{n}](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BV%7D%28%5Cbar%7BX%7D_n%29%3D%5Cfrac%7B%5Csigma%5E2%7D%7Bn%7D)

![\mathbb{E}(S_n^2)=\sigma^2](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BE%7D%28S_n%5E2%29%3D%5Csigma%5E2)

Let X and Y be random variables with means µX and µY and standard deviations σX and σY, then

### Covariance

![\mathrm{Cov}(X,Y)=\mathbb{E}\left((X-\mu_x)(Y-\mu_y)\right)](http://latex.codecogs.com/gif.latex?%5Cmathrm%7BCov%7D%28X%2CY%29%3D%5Cmathbb%7BE%7D%5Cleft%28%28X-%5Cmu_x%29%28Y-%5Cmu_y%29%5Cright%29)

![\mathrm{Cov}(X,Y)=\mathbb{E}(XY)-\mathbb{E}(X)\mathbb{E}(Y)](http://latex.codecogs.com/gif.latex?%5Cmathrm%7BCov%7D%28X%2CY%29%3D%5Cmathbb%7BE%7D%28XY%29-%5Cmathbb%7BE%7D%28X%29%5Cmathbb%7BE%7D%28Y%29)

### Correlation

![\mathrm{Corr}(X,Y)=\rho=\rho_{X,Y}=\rho(X,Y)=\frac{\mathrm{Cov}(X,Y)}{\sigma_X\sigma_Y}](http://latex.codecogs.com/gif.latex?%5Cmathrm%7BCorr%7D%28X%2CY%29%3D%5Crho%3D%5Crho_%7BX%2CY%7D%3D%5Crho%28X%2CY%29%3D%5Cfrac%7B%5Cmathrm%7BCov%7D%28X%2CY%29%7D%7B%5Csigma_X%5Csigma_Y%7D)

![-1\le\rho(X,Y)\le1](http://latex.codecogs.com/gif.latex?-1%5Cle%5Crho%28X%2CY%29%5Cle1)

*Reference*

All of Statistics: 
