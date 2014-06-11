梯度下降法
==========

输入：目标函数![f(x)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20f%28x%29)，梯度函数![g(x)=\nabla f(x)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20g%28x%29%3D%5Cnabla%20f%28x%29)，计算精度ε；

输出：![f(x)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20f%28x%29)的极小点![x^*](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20x%5E*)。

1. 取初始值![x^{(0)}\in\mathbf{R}^n](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20x%5E%7B%280%29%7D%5Cin%5Cmathbf%7BR%7D%5En)，令k=0
2. 计算![f(x^{(k)})](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20f%28x%5E%7B%28k%29%7D%29)
3. 计算梯度![g_k=g(x^{(k)})](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20g_k%3Dg%28x%5E%7B%28k%29%7D%29)，当![\|g_k\|<\varepsilon](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5C%7Cg_k%5C%7C%3C%5Cvarepsilon)时停止迭代，令![x^*=x^{(k)}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20x%5E*%3Dx%5E%7B%28k%29%7D)；否则，令![p_k=-g(x^{(k)})](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20p_k%3D-g%28x%5E%7B%28k%29%7D%29)，求![\lambda_k](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Clambda_k)，使![f(x^{(k)}+\lambda_kp_k)=\min_{\lambda\geq 0}f(x^{(k)}+\lambda\,p_k)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20f%28x%5E%7B%28k%29%7D&plus;%5Clambda_kp_k%29%3D%5Cmin_%7B%5Clambda%5Cgeq%200%7Df%28x%5E%7B%28k%29%7D&plus;%5Clambda%5C%2Cp_k%29)
4. 令![x^{(k+1)}=x^{(k)}+\lambda_kp_k](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20x%5E%7B%28k&plus;1%29%7D%3Dx%5E%7B%28k%29%7D&plus;%5Clambda_kp_k)，计算![f(x^{(k+1)})](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20f%28x%5E%7B%28k&plus;1%29%7D%29)。当![\|f(x^{(k+1)})-f(x^{k})\|<\varepsilon](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5C%7Cf%28x%5E%7B%28k&plus;1%29%7D%29-f%28x%5E%7Bk%7D%29%5C%7C%3C%5Cvarepsilon)或![\|x^{(k+1)}-x^{k}\|<\varepsilon](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5C%7Cx%5E%7B%28k&plus;1%29%7D-x%5E%7Bk%7D%5C%7C%3C%5Cvarepsilon)时，停止迭代，令![x^*=x^{(k)}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20x%5E*%3Dx%5E%7B%28k%29%7D)
5. 否则，令k=k+1，继续3
