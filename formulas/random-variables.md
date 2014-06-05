Random Variables
================

> Larry Wasserman. *All of Statistics*

### Random Variable

![X:\Omega\to\mathbb{R}](http://latex.codecogs.com/gif.latex?X%3A%5COmega%5Cto%5Cmathbb%7BR%7D)

- assigns a real number X(ω) to each outcome ω.

### CDF

cumulative distribution function, is the function FX: R -> [0, 1]

![F_X(x)=F=\mathbb{P}(X\le{x})](http://latex.codecogs.com/gif.latex?F_X%28x%29%3DF%3D%5Cmathbb%7BP%7D%28X%5Cle%7Bx%7D%29)

*Theorem* If F(x) = G(x) for all x, then

![\mathbb{P}(X\in{A})=\mathbb{P}(Y\in{A})](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BP%7D%28X%5Cin%7BA%7D%29%3D%5Cmathbb%7BP%7D%28Y%5Cin%7BA%7D%29)

### PMF

probability mass function or probability function if X is discrete that it takes countably many values {x1, x2, ...}

![f_X(x)=f=\mathbb{P}(X=x)](http://latex.codecogs.com/gif.latex?f_X%28x%29%3Df%3D%5Cmathbb%7BP%7D%28X%3Dx%29)

![F_X(x)=\mathbb{P}(X\le{x})=\sum_{x_i<x}f_X(x_i)](http://latex.codecogs.com/gif.latex?F_X%28x%29%3D%5Cmathbb%7BP%7D%28X%5Cle%7Bx%7D%29%3D%5Csum_%7Bx_i%3Cx%7Df_X%28x_i%29)

### PDF

probability density function if X is continuous

![f_X(x)=F_X'(x)](http://latex.codecogs.com/gif.latex?f_X%28x%29%3DF_X%27%28x%29)

![F_X(x)=\int_{-\infty}^{x}f_X(t)dt](http://latex.codecogs.com/gif.latex?F_X%28x%29%3D%5Cint_%7B-%5Cinfty%7D%5E%7Bx%7Df_X%28t%29dt)

### inverse CDF

or CDF

![F^{-1}(q)=\mathrm{inf}\left\{x:F(x)>q \right \}](http://latex.codecogs.com/gif.latex?F%5E%7B-1%7D%28q%29%3D%5Cmathrm%7Binf%7D%5Cleft%5C%7Bx%3AF%28x%29%3Eq%20%5Cright%20%5C%7D)

*Notation*

X ~ F is read "X has distribution F" to indicate that X has distribution F.

### joint mass function

![f_{X,Y}=\mathbb{P}(X=x,Y=y)](http://latex.codecogs.com/gif.latex?f_%7BX%2CY%7D%3D%5Cmathbb%7BP%7D%28X%3Dx%2CY%3Dy%29)

### marginal mass function

![f_X(x)=\mathbb{P}(X=x)=\sum_y\mathbb{P}(X=x,Y=y)=\sum_yf(x,y)](http://latex.codecogs.com/gif.latex?f_X%28x%29%3D%5Cmathbb%7BP%7D%28X%3Dx%29%3D%5Csum_y%5Cmathbb%7BP%7D%28X%3Dx%2CY%3Dy%29%3D%5Csum_yf%28x%2Cy%29)

![f_Y(x)=\mathbb{P}(Y=y)=\sum_x\mathbb{P}(X=x,Y=y)=\sum_xf(x,y)](http://latex.codecogs.com/gif.latex?f_Y%28x%29%3D%5Cmathbb%7BP%7D%28Y%3Dy%29%3D%5Csum_x%5Cmathbb%7BP%7D%28X%3Dx%2CY%3Dy%29%3D%5Csum_xf%28x%2Cy%29)

### marginal density function

![f_X(x)=\int{f(x,y)dy}](http://latex.codecogs.com/gif.latex?f_X%28x%29%3D%5Cint%7Bf%28x%2Cy%29dy%7D)

![f_Y(x)=\int{f(x,y)dy}](http://latex.codecogs.com/gif.latex?f_Y%28x%29%3D%5Cint%7Bf%28x%2Cy%29dx%7D)

### independent

if for every A and B,

![\mathbb{P}(X\in{A},Y\in{B})=\mathbb{P}(X\in{A})\mathbb{P}(Y\in{B})](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BP%7D%28X%5Cin%7BA%7D%2CY%5Cin%7BB%7D%29%3D%5Cmathbb%7BP%7D%28X%5Cin%7BA%7D%29%5Cmathbb%7BP%7D%28Y%5Cin%7BB%7D%29)

### conditional probability mass function

![f_{X|Y}(x|y)=\mathbb{P}(X=x|Y=y)=\frac{\mathbb{P}(X=x,Y=y)}{\mathbb{P}(Y=y)}=\frac{f_{X,Y}(x,y)}{f_Y(y)}](http://latex.codecogs.com/gif.latex?f_%7BX%7CY%7D%28x%7Cy%29%3D%5Cmathbb%7BP%7D%28X%3Dx%7CY%3Dy%29%3D%5Cfrac%7B%5Cmathbb%7BP%7D%28X%3Dx%2CY%3Dy%29%7D%7B%5Cmathbb%7BP%7D%28Y%3Dy%29%7D%3D%5Cfrac%7Bf_%7BX%2CY%7D%28x%2Cy%29%7D%7Bf_Y%28y%29%7D)

### conditional probability density function

![\mathbb{P}(X\in{A}|Y=y)=\int_Af_{X|Y}(x|y)dx](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BP%7D%28X%5Cin%7BA%7D%7CY%3Dy%29%3D%5Cint_Af_%7BX%7CY%7D%28x%7Cy%29dx)

assuming that ![f_Y(y)>0](http://latex.codecogs.com/gif.latex?f_Y%28y%29%3E0) and ![f_{X|Y}(x|y)=\frac{f_{X,Y}(x,y)}{f_Y(y)}](http://latex.codecogs.com/gif.latex?f_%7BX%7CY%7D%28x%7Cy%29%3D%5Cfrac%7Bf_%7BX%2CY%7D%28x%2Cy%29%7D%7Bf_Y%28y%29%7D)

### random vector

X1, ..., Xn are independent if, for every A1, ..., An

![\mathbb{P}(X_1\in{A_1},\cdots,X_n\in{A_n})=\prod_{i=1}\mathbb{P}(X_i\in{A_i})](http://latex.codecogs.com/gif.latex?%5Cmathbb%7BP%7D%28X_1%5Cin%7BA_1%7D%2C%5Ccdots%2CX_n%5Cin%7BA_n%7D%29%3D%5Cprod_%7Bi%3D1%7D%5Cmathbb%7BP%7D%28X_i%5Cin%7BA_i%7D%29)
