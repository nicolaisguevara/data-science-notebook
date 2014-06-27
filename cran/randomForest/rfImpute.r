data(iris)
iris.na <- iris
set.seed(111)

## artificially drop some data values.
for (i in 1:4) iris.na[sample(150, sample(20)), i] <- NA

set.seed(222)

## impute missing values
iris.imputed <- rfImpute(Species ~ ., iris.na)

## build random forest
set.seed(333)
iris.rf <- randomForest(Species ~ ., iris.imputed)

print(iris.rf)
