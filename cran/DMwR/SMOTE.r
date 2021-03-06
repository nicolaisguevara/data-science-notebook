## A small example with a data set created artificially from the IRIS data
data(iris)
data <- iris[, c(1, 2, 5)]
data$Species <- factor(ifelse(data$Species == "setosa","rare","common"))

## checking the class distribution of this artificial data set
table(data$Species)

## now using SMOTE to create a more "balanced problem"
library(DMwR)

newData <- SMOTE(Species ~ ., data, perc.over = 600,perc.under=100)
table(newData$Species)

## Checking visually the created data
## Not run:
par(mfrow = c(1, 2))
plot(data[, 1], data[, 2], pch = 19 + as.integer(data[, 3]),
main = "Original Data")
plot(newData[, 1], newData[, 2], pch = 19 + as.integer(newData[,3]),
main = "SMOTEd Data")

## End(Not run)

## Now an example where we obtain a model with the "balanced" data
classTree <- SMOTE(Species ~ ., data, perc.over = 600,perc.under=100,
learner=rpartXse,se=0.5)

## check the resulting classification tree
classTree

## The tree with the unbalanced data set would be
rpartXse(Species ~ .,data,se=0.5)
