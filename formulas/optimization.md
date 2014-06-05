Optimization
============

### SGD

Stochastic Gradient Descent

> Andrew Ng. *Machine Learning*

![J(\theta)=\frac{1}{2}\sum_{i=1}^{m}\left(h_\theta(x^{(i)})-y^{(i)}\right)](http://latex.codecogs.com/gif.latex?J%28%5Ctheta%29%3D%5Cfrac%7B1%7D%7B2%7D%5Csum_%7Bi%3D1%7D%5E%7Bm%7D%5Cleft%28h_%5Ctheta%28x%5E%7B%28i%29%7D%29-y%5E%7B%28i%29%7D%5Cright%29)

![\theta_j:=\theta_j-\alpha\frac{\partial}{\partial\theta_j}J(\theta)](http://latex.codecogs.com/gif.latex?%5Ctheta_j%3A%3D%5Ctheta_j-%5Calpha%5Cfrac%7B%5Cpartial%7D%7B%5Cpartial%5Ctheta_j%7DJ%28%5Ctheta%29)

![\theta_j:=\theta_j-\alpha\frac{1}{m}\sum_{i=1}^{m}\left(h_\theta(x^{(i)})-j^{(i)}\right)x_j^{(i)}](http://latex.codecogs.com/gif.latex?%5Ctheta_j%3A%3D%5Ctheta_j-%5Calpha%5Cfrac%7B1%7D%7Bm%7D%5Csum_%7Bi%3D1%7D%5E%7Bm%7D%5Cleft%28h_%5Ctheta%28x%5E%7B%28i%29%7D%29-j%5E%7B%28i%29%7D%5Cright%29x_j%5E%7B%28i%29%7D)

> Christopher Bishop. *PRML*

If the error function comprises a sum over data points

![E(\mathbf{w})=\sum_{n=1}^{N}E_n(\mathbf{w})](http://latex.codecogs.com/gif.latex?E%28%5Cmathbf%7Bw%7D%29%3D%5Csum_%7Bn%3D1%7D%5E%7BN%7DE_n%28%5Cmathbf%7Bw%7D%29)

then after presentation of pattern n, the stochastic gradient descent algorithm updates the parameter vector w using

![\mathbf{w}^{(\tau+1)}=\mathbf{w}^{(\tau)}-\eta\nabla{E_n(\mathbf{w}^{(\tau)})}](http://latex.codecogs.com/gif.latex?%5Cmathbf%7Bw%7D%5E%7B%28%5Ctau&plus;1%29%7D%3D%5Cmathbf%7Bw%7D%5E%7B%28%5Ctau%29%7D-%5Ceta%5Cnabla%7BE_n%28%5Cmathbf%7Bw%7D%5E%7B%28%5Ctau%29%7D%29%7D)
