## build random forest for iris dataset

## load data iris
data(iris)

## look at iris
head(iris)

## prepare training and test set
train <- iris[ c(11:50, 61:100, 111:150), ]
test <- iris[ c(1:10, 51:60, 101:110), ]

## build a random forest model
rf <- randomForest(Species ~., data=train, importance=TRUE, do.trace=100)

## look at model
print(rf)

## make predictions
(iris.predict <- predict(rf, test))

## examine confusion matrix
(t <- table(observed=test[,'Species'], predict=iris.predict))

## matrix in probability
prop.table(t, 1)
