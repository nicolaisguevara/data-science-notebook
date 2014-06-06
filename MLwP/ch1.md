### Machine Learning Tasks:

1. Reading the data and cleaning it.
2. Exploring and understanding the input data.
3. Analyzing how best to present the data to the learning algorithm.
4. Choosing the right model and learning algorithm.
5. Measuring the performance correctly.

### NumPy

#### create an 1D array

```python
import numpy as np
a = np.array([012345])
a
a.ndim ## 1
a.shape ## (6)
```

#### create a 2D array

```python
b = a.reshape((32))
b
b.ndim ## 2
b.shape ## (32)
```

#### reflected change

```python
b[1][0]=77
b
a
```

#### make a copy

```python
c = a.reshape((32)).copy()
c
c[0][0]=-99
c[0][0] ## -99
a ## unchanged
c
```

#### operation propagation to individual elements

```python
a*2 ## array([ 2 4 6 8 10])
a**2 ## array([ 1 4 9 16 25])
[12345]*2 # list [1 2 3 4 5 1 2 3 4 5]
```

#### indexing

```python
a[np.array([234])] ## array([77 3 4])
a>4 ## array([False False True False False True] dtype=bool)
a[a>4] ## array([77 5])
a[a>4] = 4 ## assign all a>4 to 4
a # array([0 1 4 3 4 4])
a.clip(04) ## clip at interval
```

#### non-existing values

```python
c = np.array([1 2 np.NAN 3 4])
c
np.isnan(c)
c[~np.isnan(c)] ## remove nan
np.mean(c[~np.isnan(c)]) ## calculate mean for all except nan
```

#### Compare runtime

```pyton
import timeit
normal_py_sec = timeit.timeit('sum(x*x for x in xrange(1000))' number=10000)
naive_np_sec = timeit.timeit('sum(na*na)' setup="import numpy as np; na=np.arange(1000)" number=10000)
good_np_sec = timeit.timeit('na.dot(na)' setup="import numpy as np; na=np.arange(1000)" number=10000)

print("Normal Python | %f sec"%normal_py_sec) ## 1.203686 sec
print("Naive NumPy | %f sec"%naive_np_sec)    ## 4.606295 sec
print("Good NumPy | %f sec"%good_np_sec)      ## 0.053237 sec
```

- the access of individual elements from Python itself is rather costly
- when we are able to apply algorithms inside the optimized extension code do we get speed improvements
- move loops over individual elements from Python to some of the highly optimized NumPy or SciPy extension functions

#### NumPy arrays always have only one datatype

```python
a = np.array([123])
a.dtype ## dtype('int64')
np.array([1 "stringy"]) ## array(['1' 'stringy'] dtype='|S8')
np.array([1 "stringy" set([123])]) ## array([1 stringy set([1 2 3])] dtype=object)
```

### SciPy

#### algorithms and toolboxes

SciPy packages | Functionality
--- | ---
**cluster** | Hierarchicalclustering `cluster.hierarchy`
 | Vector quantization / K-Means `cluster.vq`
constants | Physicaland mathematical constants
 | Conversionmethods
fftpack | DiscreteFourier transform algorithms
integrate | Integration routines
**interpolate** | Interpolation(linear cubic and so on)
io | Data input and output
linalg | Linear algebra routines using the optimized BLAS and LAPACK libraries
maxentropy | Functionsfor fitting maximum entropy models
ndimage | n-dimensional image package
odr | Orthogonal distance regression
optimize | Optimization (finding minima and roots)
**signal** | Signal processing
sparse | Sparse matrices
spatial | Spatial data structures and algorithms
special | Special mathematical functions such as Bessel or Jacobian
**stats** | Statistics toolkit

### First ML applicatoin

#### read in the data

```python
import scipy as sp
data = sp.genfromtxt("web_traffic.tsv" delimiter="\t")
print(data[:10])
print(data.shape)
```

#### preprocessing and cleaning the data

```python
x = data[:0]
y = data[:1]

# remove missing entries
sp.sum(sp.isnan(y)) ## 8
x = x[~sp.isnan(y)]
y = y[~sp.isnan(y)]

# plot the data in a scatter plot using Matplotlib
import matplotlib.pyplot as plt
plt.scatter(xy)
plt.title("Web traffic over the last month")
plt.xlabel("Time")
plt.ylabel("Hits/hour")
plt.xticks([w*7*24 for w in range(10)] 
['week %i'%w for w in range(10)])
plt.autoscale(tight=True)
plt.grid()
plt.show()
```

#### define error for a learned model

```python
def error(f x y):
	return sp.sum((f(x)-y)**2)
```

#### starting with a simple straight line

```python
fp1 residuals rank sv rcond = sp.polyfit(x y 1 full=True)
print("Model parameters | %s" % fp1) # Model parameters | [ 2.59619213 989.02487106]
print(res) # [ 3.17389767e+08]
```

This means that the best straight line fit is the following function | `f(x) = 2.59619213 * x + 989.02487106`.

```python
# use poly1d()to create a model function from the model parameters
f1 = sp.poly1d(fp1)
print(error(f1 x y)) ## 317389767.34
```

#### plot trained model

```python
fx = sp.linspace(0x[-1] 1000) # generate X-values for plotting
plt.plot(fx f1(fx) linewidth=4)
plt.legend(["d=%i" % f1.order] loc="upper left")
```

#### fit a more complex model

```python
f2p = sp.polyfit(x y 2)
print(f2p) ## array([ 1.05322215e-02 -5.26545650e+00 1.97476082e+03])
f2 = sp.poly1d(f2p)
print(error(f2 x y)) ## 179983507.878
```

The fitted polynomial is | `f(x) = 0.0105322215 * x**2 - 5.26545650 * x + 1974.76082`

The more complex the data gets the curves capture it and make it fit better

Dimension | Error
--- | ---
d=1 |  317389767.339778
d=2 | 179983507.878179
d=3 | 139350144.031725
d=10 | 121942326.363461
d=100 | 109318004.475556
