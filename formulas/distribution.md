Distribution
============

### e

Euler's number

> 阮一峰, 数学常数e的含义

假定有一种单细胞生物，它每过24小时分裂一次。那么很显然，这种生物的数量，每天都会翻一倍。今天是1个，明天就是2个，后天就是4个。我们可以写出一个增长数量的公式：

![growth=2^x](http://latex.codecogs.com/gif.latex?%5Cbg_white%20growth%3D2%5Ex)

上式中的x就表示天数。这种生物在x天的总数，就是2的x次方。这个式子可以被改成下面这样：

![growth=(1+100\%)^x](http://latex.codecogs.com/gif.latex?%5Cbg_white%20growth%3D%281&plus;100%5C%25%29%5Ex)

我们继续假定：每过12个小时，也就是分裂进行到一半的时候，新产生的那半个细胞已经可以再次分裂了。因此，一天24个小时可以分成两个阶段，每一个阶段都在前一个阶段的基础上增长50%。

![growth=(1+\frac{100\%}{2})^2=2.25](http://latex.codecogs.com/gif.latex?%5Cbg_white%20growth%3D%281&plus;%5Cfrac%7B100%5C%25%7D%7B2%7D%29%5E2%3D2.25)

当这一天结束的时候，我们一共得到了2.25个细胞。其中，1个是原有的，1个是新生的，另外的0.25个是新生细胞分裂到一半的。如果我们继续修改假设，这种细胞每过8小时就具备独立分裂的能力，也就是将1天分成3个阶段。

![growth=(1+\frac{100\%}{3})^3=2.37037\dots](http://latex.codecogs.com/gif.latex?%5Cbg_white%20growth%3D%281&plus;%5Cfrac%7B100%5C%25%7D%7B3%7D%29%5E3%3D2.37037%5Cdots)

那么，最后我们就可以得到大约2.37个细胞。很自然地，如果我们进一步设想，这种分裂是连续不断进行的，新生细胞每分每秒都具备继续分裂的能力，那么一天最多可以得到多少个细胞呢？

![growth=(1+\frac{100\%}{n})^n=?](http://latex.codecogs.com/gif.latex?%5Cbg_white%20growth%3D%281&plus;%5Cfrac%7B100%5C%25%7D%7Bn%7D%29%5En%3D%3F)

当n趋向无限时，这个式子的极值等于2.718281828...

![\lim_{n\rightarrow\infty}(1+\frac{100\%}{n})^n=2.718281828\dots](http://latex.codecogs.com/gif.latex?%5Cbg_white%20%5Clim_%7Bn%5Crightarrow%5Cinfty%7D%281&plus;%5Cfrac%7B100%5C%25%7D%7Bn%7D%29%5En%3D2.718281828%5Cdots)

因此，当增长率为100%保持不变时，我们在单位时间内最多只能得到2.71828个细胞。数学家把这个数就称为e，它的含义是**单位时间内，持续的翻倍增长所能达到的极限值**。这个值是自然增长的极限，因此以e为底的对数，就叫做自然对数。

