第二章
=====

感知机(Perceptron)是二类分类的线性分类模型，对应于输入空间（特征空间）中将实例划分为正负两类的分离超平面(separating hyperplane)，属于判别模型。感知机预测是用学习得到的感知机模型对新的输入实例进行分类。

由输入空间到输出空间的函数![f(x)=\mathrm{sign}(w\cdot x+b)](http://latex.codecogs.com/gif.latex?f%28x%29%3D%5Cmathrm%7Bsign%7D%28w%5Ccdot%20x&plus;b%29)称为感知机，其中w和b为感知机模型函数，线性方程wx+b=0对应于特征空间中的一个超平面S，其中w是超平面的法向量，b是超平面的截距。

感知机sign(wx+b)学习的损失函数为

![L(w,b)=-\sum_{x_i\in{M}}y_i(w\cdot x_i+b)](http://latex.codecogs.com/gif.latex?L%28w%2Cb%29%3D-%5Csum_%7Bx_i%5Cin%7BM%7D%7Dy_i%28w%5Ccdot%20x_i&plus;b%29)

其中M为误分类点的集合，y(wx+b)称为样本点的函数间隔。

## 2.3 感知机算法

### 2.3.1 感知机学习算法的原始形式

感知机学习算法是对一下最优化问题的算法，求参数w,b，使其成为一下损失函数极小化问题的解

![\min_{w,b}L(w,b)=-\sum_{x_i\in{M}}y_i(w\cdot x_i+b)](http://latex.codecogs.com/gif.latex?%5Cmin_%7Bw%2Cb%7DL%28w%2Cb%29%3D-%5Csum_%7Bx_i%5Cin%7BM%7D%7Dy_i%28w%5Ccdot%20x_i&plus;b%29)

感知机学习算法是误分类驱动的，具体采用随机梯度下降法(stochastic gradient descent)。首先任意选取一个超平面w0,b0，然后用梯度下降法不断地极小化目标函数。假设误分类点集合M是固定的，那么损失函数L(w,b)的梯度是

![\nabla_wL(w,b)=-\sum_{x_i\in{M}}y_ix_i](http://latex.codecogs.com/gif.latex?%5Cnabla_wL%28w%2Cb%29%3D-%5Csum_%7Bx_i%5Cin%7BM%7D%7Dy_ix_i)

![\nabla_bL(w,b)=-\sum_{x_i\in{M}}y_i](http://latex.codecogs.com/gif.latex?%5Cnabla_bL%28w%2Cb%29%3D-%5Csum_%7Bx_i%5Cin%7BM%7D%7Dy_i)

随机选取一个误分类点(xi,yi)，对w,b进行更新

![w\leftarrow w+\eta\,y_ix_i](http://latex.codecogs.com/gif.latex?w%5Cleftarrow%20w&plus;%5Ceta%5C%2Cy_ix_i)

![b\leftarrow b+\eta\,y_i](http://latex.codecogs.com/gif.latex?b%5Cleftarrow%20b&plus;%5Ceta%5C%2Cy_i)

输入：训练数据集![T=\{(x_1,y_1),(x_2,y_2),\cdots,(x_N,y_N)\}](http://latex.codecogs.com/gif.latex?T%3D%5C%7B%28x_1%2Cy_1%29%2C%28x_2%2Cy_2%29%2C%5Ccdots%2C%28x_N%2Cy_N%29%5C%7D)，其中![x_i\in\mathcal{X}\subseteq{\mathbf{R}^n}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20x_i%5Cin%5Cmathcal%7BX%7D%5Csubseteq%7B%5Cmathbf%7BR%7D%5En%7D)，![y_i\in\mathcal{Y}=\{-1,+1\}](http://latex.codecogs.com/gif.latex?y_i%5Cin%5Cmathcal%7BY%7D%3D%5C%7B-1%2C&plus;1%5C%7D)，i=1,2,...,N；学习率![\eta(0<\eta\leq{1})](http://latex.codecogs.com/gif.latex?%5Ceta%280%3C%5Ceta%5Cleq%7B1%7D%29)；

输出：w, b；感知机模型![f(x)=\mathrm{sign}(w\cdot x+b)](http://latex.codecogs.com/gif.latex?f%28x%29%3D%5Cmathrm%7Bsign%7D%28w%5Ccdot%20x&plus;b%29)

1. 选取初始值w0,b0
2. 在训练集中选取数据(xi,yi)
3. 如果![y_i(w\cdot x+b)\leq 0](http://latex.codecogs.com/gif.latex?y_i%28w%5Ccdot%20x&plus;b%29%5Cleq%200)
  - ![w\leftarrow w+\eta\,y_ix_i](http://latex.codecogs.com/gif.latex?w%5Cleftarrow%20w&plus;%5Ceta%5C%2Cy_ix_i)
  - ![b\leftarrow b+\eta\,y_i](http://latex.codecogs.com/gif.latex?b%5Cleftarrow%20b&plus;%5Ceta%5C%2Cy_i)
4. 继续2，直至训练集中没有误分类点

### 2.3.3 感知机学习算法的对偶形式

将w和b表示为实例xi和标记yi的线性组合的形式，通过求解其系数而求得w和b。对误分类点(xi,yi)通过

![w\leftarrow w+\eta\,y_ix_i](http://latex.codecogs.com/gif.latex?w%5Cleftarrow%20w&plus;%5Ceta%5C%2Cy_ix_i)

![b\leftarrow b+\eta\,y_i](http://latex.codecogs.com/gif.latex?b%5Cleftarrow%20b&plus;%5Ceta%5C%2Cy_i)

逐步修改w,b，设修改n次，则w,b关于(xi,yi)的增量分别是![\alpha_i\,y_ix_i](http://latex.codecogs.com/gif.latex?%5Calpha_i%5C%2Cy_ix_i)和![\alpha_i\,y_i](http://latex.codecogs.com/gif.latex?%5Calpha_i%5C%2Cy_i)，这里![\alpha_i=n_i\eta](http://latex.codecogs.com/gif.latex?%5Calpha_i%3Dn_i%5Ceta)

最后学习到的w,b可以分别表示为

![w=\sum_{i=1}^{N}\alpha_i\,y_ix_i](http://latex.codecogs.com/gif.latex?w%3D%5Csum_%7Bi%3D1%7D%5E%7BN%7D%5Calpha_i%5C%2Cy_ix_i)

![b=\sum_{i=1}^{N}\alpha_i\,y_i](http://latex.codecogs.com/gif.latex?b%3D%5Csum_%7Bi%3D1%7D%5E%7BN%7D%5Calpha_i%5C%2Cy_i)

输入：线性可分的数据集![T=\{(x_1,y_1),(x_2,y_2),\cdots,(x_N,y_N)\}](http://latex.codecogs.com/gif.latex?T%3D%5C%7B%28x_1%2Cy_1%29%2C%28x_2%2Cy_2%29%2C%5Ccdots%2C%28x_N%2Cy_N%29%5C%7D)，其中![x_i\in\mathcal{X}\subseteq{\mathbf{R}^n}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20x_i%5Cin%5Cmathcal%7BX%7D%5Csubseteq%7B%5Cmathbf%7BR%7D%5En%7D)，![y_i\in\mathcal{Y}=\{-1,+1\}](http://latex.codecogs.com/gif.latex?y_i%5Cin%5Cmathcal%7BY%7D%3D%5C%7B-1%2C&plus;1%5C%7D)，i=1,2,...,N；学习率![\eta(0<\eta\leq{1})](http://latex.codecogs.com/gif.latex?%5Ceta%280%3C%5Ceta%5Cleq%7B1%7D%29)；

输出：ɑ,b；感知机模型![f(x)=\mathrm{sign}\left(\sum_{j=1}^{N}\alpha_j\,y_jx_j\cdot x+b \right )](http://latex.codecogs.com/gif.latex?f%28x%29%3D%5Cmathrm%7Bsign%7D%5Cleft%28%5Csum_%7Bj%3D1%7D%5E%7BN%7D%5Calpha_j%5C%2Cy_jx_j%5Ccdot%20x&plus;b%20%5Cright%20%29)

其中![\alpha=(\alpha_1,\alpha_2,\cdots,\alpha_N)^{\mathrm{T}}](http://latex.codecogs.com/gif.latex?%5Calpha%3D%28%5Calpha_1%2C%5Calpha_2%2C%5Ccdots%2C%5Calpha_N%29%5E%7B%5Cmathrm%7BT%7D%7D)

1. ![\alpha\leftarrow 0](http://latex.codecogs.com/gif.latex?%5Calpha%5Cleftarrow%200)，![b\leftarrow 0](http://latex.codecogs.com/gif.latex?b%5Cleftarrow%200)
2. 在训练集中选取数据(xi,yi)
3. 如果![y_i\left(\sum_{j=1}^{N}\alpha_j\,y_jx_j\cdot x_i+b \right )\leq 0](http://latex.codecogs.com/gif.latex?y_i%5Cleft%28%5Csum_%7Bj%3D1%7D%5E%7BN%7D%5Calpha_j%5C%2Cy_jx_j%5Ccdot%20x_i&plus;b%20%5Cright%20%29%5Cleq%200)
  - ![\alpha_i\leftarrow\alpha_i+\eta](http://latex.codecogs.com/gif.latex?%5Calpha_i%5Cleftarrow%5Calpha_i&plus;%5Ceta)
  - ![b\leftarrow b+\eta\,y_i](http://latex.codecogs.com/gif.latex?b%5Cleftarrow%20b&plus;%5Ceta%5C%2Cy_i)
4. 继续2，直到没有误分类数据

与原始形式一样，感知机学习算法的对偶形式迭代是收敛的，存在多个解。
