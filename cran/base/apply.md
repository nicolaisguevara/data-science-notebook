## apply family

### apply

```
apply(X, MARGIN, FUN, ...)
```

Returns a vector or array or list of values obtained by applying a function to margins of an array or matrix.

1 - rows
2 - columns
1:2 - both (apply to each individual value)

```
# create a matrix of 10 rows x 2 columns
m <- matrix(c(1:10, 11:20), nrow = 10, ncol = 2)
# mean of the rows
apply(m, 1, mean)
 [1]  6  7  8  9 10 11 12 13 14 15
# mean of the columns
apply(m, 2, mean)
[1]  5.5 15.5
# divide all values by 2
apply(m, 1:2, function(x) x/2) ## equivalent to m[, 1:2]/2
      [,1] [,2]
 [1,]  0.5  5.5
 [2,]  1.0  6.0
 [3,]  1.5  6.5
 [4,]  2.0  7.0
 [5,]  2.5  7.5
 [6,]  3.0  8.0
 [7,]  3.5  8.5
 [8,]  4.0  9.0
 [9,]  4.5  9.5
[10,]  5.0 10.0
```

### by

```
by(data, INDICES, FUN, ..., simplify = TRUE)
```

Function ‘by’ is an object-oriented wrapper for ‘tapply’ applied to data frames.

```
attach(iris)
head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
 
# get the mean of the first 4 variables, by species
by(iris[, 1:4], Species, colMeans)
Species: setosa
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
       5.006        3.428        1.462        0.246 
------------------------------------------------------------ 
Species: versicolor
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
       5.936        2.770        4.260        1.326 
------------------------------------------------------------ 
Species: virginica
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
       6.588        2.974        5.552        2.026
```

### eapply

```
eapply(env, FUN, ..., all.names = FALSE, USE.NAMES = TRUE)
```

`eapply` applies `FUN` to the named values from an environment and returns the results as a list.

```
# a new environment
e <- new.env()
# two environment variables, a and b
e$a <- 1:10
e$b <- 11:20
# mean of the variables
eapply(e, mean)
$b
[1] 15.5
 
$a
[1] 5.5
```

### lapply

```
lapply(X, FUN, ...)
```

`lapply` returns a list of the same length as X, each element of which is the result of applying `FUN` to the corresponding element of X.

```
# create a list with 2 elements
l <- list(a = 1:10, b = 11:20)
# the mean of the values in each element
lapply(l, mean)
$a
[1] 5.5
 
$b
[1] 15.5
 
# the sum of the values in each element
lapply(l, sum)
$a
[1] 55
 
$b
[1] 155
```

### sapply

```
sapply(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE)
```

`sapply` is a user-friendly version of lapply by default returning a vector or matrix if appropriate.

```
# create a list with 2 elements
l <- list(a = 1:10, b = 11:20)
# mean of values using sapply
l.mean <- sapply(l, mean)
# what type of object was returned?
class(l.mean)
[1] "numeric"
# it's a numeric vector, so we can get element "a" like this
l.mean[['a']]
[1] 5.5
```

### vapply

```
vapply(X, FUN, FUN.VALUE, ..., USE.NAMES = TRUE)
```

`vapply` is similar to `sapply`, but has a pre-specified type of return value, so it can be safer (and sometimes faster) to use.

```
l <- list(a = 1:10, b = 11:20)
# fivenum of values using vapply
l.fivenum <- vapply(l, fivenum, c(Min.=0, "1st Qu."=0, Median=0, "3rd Qu."=0, Max.=0))
class(l.fivenum)
[1] "matrix"
# let's see it
l.fivenum
           a    b
Min.     1.0 11.0
1st Qu.  3.0 13.0
Median   5.5 15.5
3rd Qu.  8.0 18.0
Max.    10.0 20.0
```

### replicate

```
replicate(n, expr, simplify = "array")
```

`replicate` is a wrapper for the common use of sapply for repeated evaluation of an expression (which will usually involve random number generation).

Simulate 10 normal distributions, each with 10 observations:

```
replicate(10, rnorm(10))
             [,1]        [,2]        [,3]       [,4]        [,5]         [,6]
 [1,]  0.67947001 -1.94649409  0.28144696  0.5872913  2.22715085 -0.275918282
 [2,]  1.17298643 -0.01529898 -1.47314092 -1.3274354 -0.04105249  0.528666264
 [3,]  0.77272662 -2.36122644  0.06397576  1.5870779 -0.33926083  1.121164338
 [4,] -0.42702542 -0.90613885  0.83645668 -0.5462608 -0.87458396 -0.723858258
 [5,] -0.73892937 -0.57486661 -0.04418200 -0.1120936  0.08253614  1.319095242
 [6,]  2.93827883 -0.33363446  0.55405024 -0.4942736  0.66407615 -0.153623614
 [7,]  1.30037496 -0.26207115  0.49818215  1.0774543 -0.28206908  0.825488436
 [8,] -0.04153545 -0.23621632 -1.01192741  0.4364413 -2.28991601 -0.002867193
 [9,]  0.01262547  0.40247248  0.65816829  0.9541927 -1.63770154  0.328180660
[10,]  0.96525278 -0.37850821 -0.85869035 -0.6055622  1.13756753 -0.371977151
             [,7]        [,8]       [,9]       [,10]
 [1,]  0.03928297  0.34990909 -0.3159794  1.08871657
 [2,] -0.79258805 -0.30329668 -1.0902070  0.73356542
 [3,]  0.10673459 -0.02849216  0.8094840  0.06446245
 [4,] -0.84584079 -0.57308461 -1.3570979 -0.89801330
 [5,] -1.50226560 -2.35751419  1.2104163  0.74650696
 [6,] -0.32790991  0.80144695 -0.0071844  0.05742356
 [7,]  1.36719970  2.34148354  0.9148911  0.20451421
 [8,] -0.51112579 -0.53658159  1.5194130 -0.94250069
 [9,]  0.52017814 -1.22252527  0.4519702  0.08779704
[10,]  1.35908918  1.09024342  0.5912627 -0.20709053
```

### mapply

```
mapply(FUN, ..., MoreArgs = NULL, SIMPLIFY = TRUE, USE.NAMES = TRUE)
```

mapply is a multivariate version of sapply. mapply applies FUN to the first elements of each (…) argument, the second elements, the third elements, and so on.

```
l1 <- list(a = c(1:10), b = c(11:20))
l2 <- list(c = c(21:30), d = c(31:40))
# sum the corresponding elements of l1 and l2
mapply(sum, l1$a, l1$b, l2$c, l2$d)
 [1]  64  68  72  76  80  84  88  92  96 100
```

### rapply

```
rapply(object, f, classes = "ANY", deflt = NULL,
       how = c("unlist", "replace", "list"), ...)
```

`rapply` is a recursive version of `lapply`.

```
# let's start with our usual simple list example
l <- list(a = 1:10, b = 11:20)
# log2 of each value in the list
rapply(l, log2)
      a1       a2       a3       a4       a5       a6       a7       a8 
0.000000 1.000000 1.584963 2.000000 2.321928 2.584963 2.807355 3.000000 
      a9      a10       b1       b2       b3       b4       b5       b6 
3.169925 3.321928 3.459432 3.584963 3.700440 3.807355 3.906891 4.000000 
      b7       b8       b9      b10 
4.087463 4.169925 4.247928 4.321928
# log2 of each value in each list
rapply(l, log2, how = "list")
$a
 [1] 0.000000 1.000000 1.584963 2.000000 2.321928 2.584963 2.807355 3.000000
 [9] 3.169925 3.321928
 
$b
 [1] 3.459432 3.584963 3.700440 3.807355 3.906891 4.000000 4.087463 4.169925
 [9] 4.247928 4.321928
 
# what if the function is the mean?
rapply(l, mean)
   a    b 
 5.5 15.5
 
rapply(l, mean, how = "list")
$a
[1] 5.5
 
$b
[1] 15.5
```

### tapply

```
tapply(X, INDEX, FUN = NULL, ..., simplify = TRUE)
```

Apply a function to each cell of a ragged array, that is to each (non-empty) group of values given by a unique combination of the levels of certain factors.

```
attach(iris)
# mean petal length by species
tapply(iris$Petal.Length, Species, mean)
    setosa versicolor  virginica 
     1.462      4.260      5.552
```

