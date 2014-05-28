## load randomForest package for random forest
library(randomForest)

## load DMwR package
library(DMwR)

## load algae data and remove too many NAs
data(algae)
algae <- alage[-manyNAs(algae),]
clean.algae <- knnImputation(algae, k=10)

## build random forest model
rf.a1 <- randomForest(a1 ~ ., data=clean.algae[, 1:12])

## predict using random forest model
rf.predictions.a1 <- predict(rf.a1, clean.algae)

## calculate mae and mse for prediction
(mae.a1.rf <- mean(abs(rf.predictions.a1 - clean.algae[, "a1"])))
(mse.a1.rf <- mean((rf.predictions.a1 - clean.algae[, "a1"])^2))
