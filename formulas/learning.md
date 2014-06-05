Learning
========

### Classificatoin

We are given training data

![\{(\mathbf{x}_i,y_i)\}_1^l,\ \mathbf{x}_i,y_i\in{\mathbb{R}^n}](http://latex.codecogs.com/gif.latex?%5C%7B%28%5Cmathbf%7Bx%7D_i%2Cy_i%29%5C%7D_1%5El%2C%5C%20%5Cmathbf%7Bx%7D_i%2Cy_i%5Cin%7B%5Cmathbb%7BR%7D%5En%7D)

Suppose the data can be explained by a linear model.

Goal: find a fitting hyperplane

![\langle{}\mathbf{w},\mathbf{x}\rangle{}+b=0](http://latex.codecogs.com/gif.latex?%5Clangle%7B%7D%5Cmathbf%7Bw%7D%2C%5Cmathbf%7Bx%7D%5Crangle%7B%7D&plus;b%3D0)

### Regression

> Chistophor Bishop. *PRML*

The goal of regression is to predict the value of one or more continuous target variables t given the value of a D-dimensional vector x of input variables.

Given a training data set comprising N observations {xn}, where n=1,...,N, together with corresponding target values {tn}, the goal is to predict the value of t for a new value of x.

![\begin{align*}y(\mathbf{x},\mathbf{w})&=w_0+\sum_{j=1}^{M-1}w_j\phi_j(\mathbf{x})\\&=\sum_{j=0}^{M-1}w_j\phi_j(\mathbf{x})\\&=\mathbf{w}^\mathrm{T}\boldsymbol{\phi}(\mathbf{x})\end{align*}
](http://latex.codecogs.com/gif.latex?%5Cbegin%7Balign*%7Dy%28%5Cmathbf%7Bx%7D%2C%5Cmathbf%7Bw%7D%29%26%3Dw_0&plus;%5Csum_%7Bj%3D1%7D%5E%7BM-1%7Dw_j%5Cphi_j%28%5Cmathbf%7Bx%7D%29%5C%5C%26%3D%5Csum_%7Bj%3D0%7D%5E%7BM-1%7Dw_j%5Cphi_j%28%5Cmathbf%7Bx%7D%29%5C%5C%26%3D%5Cmathbf%7Bw%7D%5E%5Cmathrm%7BT%7D%5Cboldsymbol%7B%5Cphi%7D%28%5Cmathbf%7Bx%7D%29%5Cend%7Balign*%7D)

where ![\phi_j(\mathbf{x})](http://latex.codecogs.com/gif.latex?%5Cphi_j%28%5Cmathbf%7Bx%7D%29) are known as *basis function* and ![\phi_0(\mathbf{x})=1](http://latex.codecogs.com/gif.latex?%5Cphi_0%28%5Cmathbf%7Bx%7D%29%3D1)

![\mathbf{w}=(w_0,\cdots,w_{M-1})^\mathrm{T}](http://latex.codecogs.com/gif.latex?%5Cmathbf%7Bw%7D%3D%28w_0%2C%5Ccdots%2Cw_%7BM-1%7D%29%5E%5Cmathrm%7BT%7D) and ![\boldsymbol{\phi}=(\phi_0,\cdots,\phi_{M-1})^\mathrm{T}](http://latex.codecogs.com/gif.latex?%5Cboldsymbol%7B%5Cphi%7D%3D%28%5Cphi_0%2C%5Ccdots%2C%5Cphi_%7BM-1%7D%29%5E%5Cmathrm%7BT%7D)
