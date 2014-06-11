第六章
======

### 6.1.1 逻辑分布(logistic distribution)

设X是连续随机变量，X服从逻辑分布是指X具有下列分布函数和密度函数：

分布函数(cumulative distribution function, CDF)

![F(x)=P(X\leq x)=\frac{1}{1+\mathrm{e}^{-(x-\mu)/\gamma}}](http://latex.codecogs.com/gif.latex?F%28x%29%3DP%28X%5Cleq%20x%29%3D%5Cfrac%7B1%7D%7B1&plus;%5Cmathrm%7Be%7D%5E%7B-%28x-%5Cmu%29/%5Cgamma%7D%7D)

密度函数(probability density function, PDF)

![f(x)=F'(x)=\frac{\mathrm{e}^{-(x-\mu)/\gamma}}{\gamma(1+\mathrm{e}^{-(x-\mu)/\gamma})^2}](http://latex.codecogs.com/gif.latex?f%28x%29%3DF%27%28x%29%3D%5Cfrac%7B%5Cmathrm%7Be%7D%5E%7B-%28x-%5Cmu%29/%5Cgamma%7D%7D%7B%5Cgamma%281&plus;%5Cmathrm%7Be%7D%5E%7B-%28x-%5Cmu%29/%5Cgamma%7D%29%5E2%7D)

分布函数属于logistic函数,其曲线是一条S型曲线(sigmoid curve)，该曲线以点![\left(\mu,\frac{1}{2} \right )](http://latex.codecogs.com/gif.latex?%5Cleft%28%5Cmu%2C%5Cfrac%7B1%7D%7B2%7D%20%5Cright%20%29)为中心对称，即满足

![F(-x+\mu)-\frac{1}{2}=-F(x+\mu)+\frac{1}{2}](http://latex.codecogs.com/gif.latex?F%28-x&plus;%5Cmu%29-%5Cfrac%7B1%7D%7B2%7D%3D-F%28x&plus;%5Cmu%29&plus;%5Cfrac%7B1%7D%7B2%7D)

### 6.1.2 二项逻辑回归模型(binomial logistic regression model)

二项逻辑回归模型是如下的条件概率分布

![P(Y=1|x)=\frac{\exp(w\cdot x+b)}{1+\exp(w\cdot x+b)}](http://latex.codecogs.com/gif.latex?P%28Y%3D1%7Cx%29%3D%5Cfrac%7B%5Cexp%28w%5Ccdot%20x&plus;b%29%7D%7B1&plus;%5Cexp%28w%5Ccdot%20x&plus;b%29%7D)

![P(Y=0|x)=\frac{1}{1+\exp(w\cdot x+b)}](http://latex.codecogs.com/gif.latex?P%28Y%3D0%7Cx%29%3D%5Cfrac%7B1%7D%7B1&plus;%5Cexp%28w%5Ccdot%20x&plus;b%29%7D)

求得P(Y=1|x)和P(Y=0|x)，比较两个条件概率值的大小，将实例x分到概率值较大的那一类

![\hat{y}=\arg\max_{\hat{y}}P(Y=\hat{y}|x)](http://latex.codecogs.com/gif.latex?%5Chat%7By%7D%3D%5Carg%5Cmax_%7B%5Chat%7By%7D%7DP%28Y%3D%5Chat%7By%7D%7Cx%29)

有时为了方便，将权值向量和输入向量加以扩充，仍记作w,x，即![w=(w^{(1)},w^{(2)},\cdots,w^{(n)},b)^{\mathrm{T}}](http://latex.codecogs.com/gif.latex?w%3D%28w%5E%7B%281%29%7D%2Cw%5E%7B%282%29%7D%2C%5Ccdots%2Cw%5E%7B%28n%29%7D%2Cb%29%5E%7B%5Cmathrm%7BT%7D%7D)，![x=(x^{(1)},x^{(2)},\cdots,x^{(n)},1)^{\mathrm{T}}](http://latex.codecogs.com/gif.latex?x%3D%28x%5E%7B%281%29%7D%2Cx%5E%7B%282%29%7D%2C%5Ccdots%2Cx%5E%7B%28n%29%7D%2C1%29%5E%7B%5Cmathrm%7BT%7D%7D)，这时逻辑回归模型如下

![P(Y=1|x)=\frac{\exp(w\cdot x)}{1+\exp(w\cdot x)}](http://latex.codecogs.com/gif.latex?P%28Y%3D1%7Cx%29%3D%5Cfrac%7B%5Cexp%28w%5Ccdot%20x%29%7D%7B1&plus;%5Cexp%28w%5Ccdot%20x%29%7D)

![P(Y=0|x)=\frac{1}{1+\exp(w\cdot x)}](http://latex.codecogs.com/gif.latex?P%28Y%3D0%7Cx%29%3D%5Cfrac%7B1%7D%7B1&plus;%5Cexp%28w%5Ccdot%20x%29%7D)

一个时间的几率(odds)是指该事件发生的概率与该事件不发生的概率的比值。如果时间发生的概率是p，那么该事件的几率是p/(1-p)，该事件的对数几率(log odds)或logit函数是

![\mathrm{logit}(p)=\log\frac{p}{1-p}](http://latex.codecogs.com/gif.latex?%5Cmathrm%7Blogit%7D%28p%29%3D%5Clog%5Cfrac%7Bp%7D%7B1-p%7D)

对于逻辑回归，该logit函数为

![\mathrm{logit}(p)=\log\frac{P(Y=1|x)}{1-P(Y=1|x)}=w\cdot x](http://latex.codecogs.com/gif.latex?%5Cmathrm%7Blogit%7D%28p%29%3D%5Clog%5Cfrac%7BP%28Y%3D1%7Cx%29%7D%7B1-P%28Y%3D1%7Cx%29%7D%3Dw%5Ccdot%20x)

这就是说，在逻辑回归模型中，输出Y=1的函数的对数几率是输入x的线性函数。或者说，输出Y=1的对数几率是由输入x的线性函数表示的模型，即逻辑回归模型。

逻辑回归学习中通常采用的方法是梯度下降法及拟牛顿法。
