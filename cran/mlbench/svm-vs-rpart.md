library(e1071)
library(rpart)
data(Glass, package="mlbench")

## split data into a train and test set
index <- 1:nrow(Glass)
testindex <- sample(index, trunc(length(index)/3))
testset <- Glass[testindex,]
trainset <- Glass[-testindex,]

## svm
svm.model <- svm(Type ~ ., data = trainset, cost = 100, gamma = 1)
svm.pred <- predict(svm.model, testset[,-10])

## rpart
rpart.model <- rpart(Type ~ ., data = trainset)
rpart.pred <- predict(rpart.model, testset[,-10], type = "class")

## compute svm confusion matrix
table(pred = svm.pred, true = testset[,10])

## compute rpart confusion matrix
table(pred = rpart.pred, true = testset[,10])
