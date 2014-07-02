### Classification Example

```
data(iris)
TrainData <- iris[,1:4]
TrainClasses <- iris[,5]

knnFit1 <- train(TrainData, TrainClasses,
                 method = "knn",
                 preProcess = c("center", "scale"),
                 tuneLength = 10,
                 trControl = trainControl(method = "cv"))

knnFit2 <- train(TrainData, TrainClasses,
                 method = "knn",
                 preProcess = c("center", "scale"),
                 tuneLength = 10, 
                 trControl = trainControl(method = "boot"))
```

```
library(MASS)
nnetFit <- train(TrainData, TrainClasses,
                 method = "nnet",
                 preProcess = "range", 
                 tuneLength = 2,
                 trace = FALSE,
                 maxit = 100)
```

### Regression Example

```
library(mlbench)
data(BostonHousing)

lmFit <- train(medv ~ . + rm:lstat,
               data = BostonHousing, 
               method = "lm")

library(rpart)
rpartFit <- train(medv ~ .,
                  data = BostonHousing,
                  method = "rpart",
                  tuneLength = 9)
```

### Example with a custom metric

```
madSummary <- function (data,
                        lev = NULL,
                        model = NULL) {
  out <- mad(data$obs - data$pred, 
             na.rm = TRUE)  
  names(out) <- "MAD"
  out
}

robustControl <- trainControl(summaryFunction = madSummary)
marsGrid <- expand.grid(degree = 1, nprune = (1:10) * 2)

earthFit <- train(medv ~ .,
                  data = BostonHousing, 
                  method = "earth",
                  tuneGrid = marsGrid,
                  metric = "MAD",
                  maximize = FALSE,
                  trControl = robustControl)
```

### Parallel Processing Example via multicore package

```
## library(doMC)
## registerDoMC(2)

## NOTE: don't run models form RWeka when using
### multicore. The session will crash.

## The code for train() does not change:
set.seed(1)
usingMC <-  train(medv ~ .,
                  data = BostonHousing, 
                  method = "glmboost")

```

or use:

- `library(doMPI)`
- `library(doParallel)`
- `library(doSMP)`
