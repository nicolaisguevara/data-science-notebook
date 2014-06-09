## load caret package
library(caret)

## load Sonar data
library(mlbench)
data(Sonar)

set.seed(107)

## create 75% training data and 25% test data
inTrain <- createDataPartition(y = Sonar$Class,
                               ## the outcome data are needed
                               p = .75,
                               ## the percentage of data in the training set
                               list = FALSE)
                               ## the format of the results

## the output is a set of integers for the rows of Sonar that belong in the training set
str(inTrain)

training <- Sonar[ inTrain,]
testing <- Sonar[-inTrain,]

nrow(training)
nrow(testing)

## control parameters for cross-validation
ctrl <- trainControl(method = "repeatedcv",
                     repeats = 3,
                     classProbs = TRUE,
                     summaryFunction = twoClassSummary)

## fit model with Partial Least Squares (PLS)
plsFit <- train(Class ~ .,
                data = training,
                method = "pls",
                tuneLength = 15,
                trControl = ctrl,
                metric = "ROC",
                preProc = c("center", "scale"))
                ## pre-processing with center and scale (Z-score)

## display pls model
plsFit

## make predictions
plsClasses <- predict(plsFit, newdata = testing)

str(plsClasses)

## view prediction in probabilities
plsProbs <- predict(plsFit, newdata = testing, type = "prob")

head(plsProbs)

## display confusion matrix
confusionMatrix(data = plsClasses, testing$Class)
