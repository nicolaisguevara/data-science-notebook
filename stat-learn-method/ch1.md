第一章
======

统计学习方法概论

## 1.2.1 基本概念

### 1. 输入空间、特征空间与输出空间

在监督学习过程中，将输入与输出看作是定义在输入（特征）空间与输出空间上的随机变量的取值。输入、输出变量用大写字母表示，习惯上输入变量写作X，输出变量写作Y。输入、输出变量所去的值用小写字母表示，输入变量的取值写作x,输出变量的取值写作y。变量可以是标量或向量，都用相同类型的字母表示。本书中向量均为列向量，输入实例x的特征向量记作

![x=(x^{(1)},x^{(2)},\cdots,x^{(i)},\cdots,x^{(n)})^\mathrm{T}](http://latex.codecogs.com/gif.latex?x%3D%28x%5E%7B%281%29%7D%2Cx%5E%7B%282%29%7D%2C%5Ccdots%2Cx%5E%7B%28i%29%7D%2C%5Ccdots%2Cx%5E%7B%28n%29%7D%29%5E%5Cmathrm%7BT%7D)

其中![x^{(i)}](http://latex.codecogs.com/gif.latex?x%5E%7B%28i%29%7D)表示第i个特征

本书用![x_i](http://latex.codecogs.com/gif.latex?x_i)表示多个输入变量中的第i个

![x_i=(x_i^{(1)},x_i^{(2)},\cdots,x_i^{(n)})^\mathbb{T}](http://latex.codecogs.com/gif.latex?x_i%3D%28x_i%5E%7B%281%29%7D%2Cx_i%5E%7B%282%29%7D%2C%5Ccdots%2Cx_i%5E%7B%28n%29%7D%29%5E%5Cmathbb%7BT%7D)

监督学习从训练数据集合中学习模型，对测试数据进行预测。训练数据由输入（或特征向量）与输出对组成。训练集通常表示为

![T=\{(x_1,y_1),(x_2,y_2),\cdots,(x_N,y_N)\}](http://latex.codecogs.com/gif.latex?T%3D%5C%7B%28x_1%2Cy_1%29%2C%28x_2%2Cy_2%29%2C%5Ccdots%2C%28x_N%2Cy_N%29%5C%7D)

测试数据也有相应的输入与输出对组成。输入与输出对又称为样本或样本点。

### 2. 联合概率分布

统计学习假设数据存在一定的统计规律，X和Y具有联合概率分布的假设就是监督学习关于数据的基本假设。

### 3. 假设空间

监督学习的目的在于学习一个由输入到输出的映射，这一映射由模型来表示。学习的目的就在于找到最好的这样的模型。模型属于由输入空间到输出空间的映射的集合，这个集合就是假设空间(hypothesis space)。假设空间的确定以为着学习范围的确定。

监督学习的模型可以是概率模型或非概率模型，有条件概率分布![P(Y|X)](http://latex.codecogs.com/gif.latex?P%28Y%7CX%29)或决策函数![Y=f(X)](http://latex.codecogs.com/gif.latex?Y%3Df%28X%29)表示，随具体学习方法而定。对具体的输入进行相应的输出预测时，写作![p(y|x)](http://latex.codecogs.com/gif.latex?p%28y%7Cx%29)或![y=f(x)](http://latex.codecogs.com/gif.latex?y%3Df%28x%29)

## 1.2.2 问题的形式化

监督学习利用训练数据集学习一个模型，再用模型对测试样本集进行预测。

首先给定一个训练数据集![T=\{(x_1,y_1),(x_2,y_2),\cdots,(x_N,y_N)\}](http://latex.codecogs.com/gif.latex?T%3D%5C%7B%28x_1%2Cy_1%29%2C%28x_2%2Cy_2%29%2C%5Ccdots%2C%28x_N%2Cy_N%29%5C%7D)

其中![(x_i,y_i)\textrm{, }i=1,2,\cdots,N](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%28x_i%2Cy_i%29%5Ctextrm%7B%2C%20%7Di%3D1%2C2%2C%5Ccdots%2CN)称为样本或样本点。![x_i\in\mathcal{X}\subseteq{\mathbf{R}^n}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20x_i%5Cin%5Cmathcal%7BX%7D%5Csubseteq%7B%5Cmathbf%7BR%7D%5En%7D)是输入的观测值，也称为输入或实例，![y_i\in\mathcal{Y}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20y_i%5Cin%5Cmathcal%7BY%7D)是输出的观测值，也称为输出。

监督学习中，假设训练数据与测试数据是以联合概率分布![P(X,Y)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20P%28X%2CY%29)独立同分布产生的。

在学习过程中，学习系统通过学习（或训练）得到一个模型，表示为条件概率分布![\hat{P}(Y|X)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Chat%7BP%7D%28Y%7CX%29)或决策函数![Y=\hat{f}(X)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20Y%3D%5Chat%7Bf%7D%28X%29)。条件概率分布![\hat{P}(Y|X)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20%5Chat%7BP%7D%28Y%7CX%29)或决策函数![Y=\hat{f}(X)](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20Y%3D%5Chat%7Bf%7D%28X%29)描述输入与输出随机变量之间的映射关系。

在预测过程中，预测系统对于给定的测试样本集中的输出![x_{N+1}](http://latex.codecogs.com/gif.latex?%5Cdpi%7B100%7D%20x_%7BN&plus;1%7D)，由模型![y_{N+1}=\arg\max_{y_{N+1}}\hat{P}(y_{N+1}|x_{N+1})](http://latex.codecogs.com/gif.latex?y_%7BN&plus;1%7D%3D%5Carg%5Cmax_%7By_%7BN&plus;1%7D%7D%5Chat%7BP%7D%28y_%7BN&plus;1%7D%7Cx_%7BN&plus;1%7D%29)或![y_{N+1}=\hat{f}(x_{N+1})](http://latex.codecogs.com/gif.latex?y_%7BN&plus;1%7D%3D%5Chat%7Bf%7D%28x_%7BN&plus;1%7D%29)给出相应的输出![y_{n+1}](http://latex.codecogs.com/gif.latex?y_%7Bn&plus;1%7D)。
