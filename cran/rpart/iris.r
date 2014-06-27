## load rpart package for classfication and regression tree
library(rpart)

## load iris dataset
data(iris)

## create training set
train <- iris[c(1:40, 51:90, 101:140), ]

## create test set
test <- iris[c(41:50, 91:100, 141:150), ]

## build classification tree
rt <- rpart(Species ~ ., data=train, method="class")

## visualize tree
library(DMwR)

prettyTree(rt)

## plot tree 
plot(rt)
text(rt)

## display cp table 
printcp(rt)

## predict on test set
(iris.predict <- predict(rt, test, type="class"))

## view confusion matrix of prediction
(t <- table(observed=test[,'Species'], predict=iris.predict))
