第一章
======

统计学习方法概论

### 1.2.1 基本概念

在监督学习过程中，将输入与输出看作是定义在输入（特征）空间与输出空间上的随机变量的取值。输入、输出变量用大写字母表示，习惯上输入变量写作X，输出变量写作Y。输入、输出变量所去的值用小写字母表示，输入变量的取值写作x,输出变量的取值写作y。变量可以是标量或向量，都用相同类型的字母表示。本书中向量均为列向量，输入实例x的特征向量记作

![x=(x^{(1)},x^{(2)},\cdots,x^{(i)},\cdots,x^{(n)})^\mathrm{T}](http://latex.codecogs.com/gif.latex?x%3D%28x%5E%7B%281%29%7D%2Cx%5E%7B%282%29%7D%2C%5Ccdots%2Cx%5E%7B%28i%29%7D%2C%5Ccdots%2Cx%5E%7B%28n%29%7D%29%5E%5Cmathrm%7BT%7D)

其中![x^{(i)}](http://latex.codecogs.com/gif.latex?x%5E%7B%28i%29%7D)表示第i个特征

本书用![x_i](http://latex.codecogs.com/gif.latex?x_i)表示多个输入变量中的第i个

![x_i=(x_i^{(1)},x_i^{(2)},\cdots,x_i^{(n)})^\mathbb{T}](http://latex.codecogs.com/gif.latex?x_i%3D%28x_i%5E%7B%281%29%7D%2Cx_i%5E%7B%282%29%7D%2C%5Ccdots%2Cx_i%5E%7B%28n%29%7D%29%5E%5Cmathbb%7BT%7D)

监督学习从训练数据集合中学习模型，对测试数据进行预测。训练数据由输入（或特征向量）与输出对组成。训练集通常表示为

![T=\{(x_1,y_1),(x_2,y_2),\cdots,(x_N,y_N)\}](http://latex.codecogs.com/gif.latex?T%3D%5C%7B%28x_1%2Cy_1%29%2C%28x_2%2Cy_2%29%2C%5Ccdots%2C%28x_N%2Cy_N%29%5C%7D)

测试数据也有相应的输入与输出对组成。输入与输出对又称为样本或样本点。
