library(DMwR)
library(rpart)
library(randomForest)

## load algae data set
data(algae)

## remove instances with many NAs
algae <- algae[-manyNAs(algae), ]

## replace missing values by KNN
clean.algae <- knnImputation(algae, k=10)

## define cross validation function
## parameters:
##   form: modeling function
##   train: training set
##   test: test set
## cross validation function for regression tree
cv.rpart <- function(form,train,test,...) {
  m <- rpartXse(form,train,...)
  p <- predict(m,test)
  mse <- mean((p-resp(form,test))^2)
  c(nmse=mse/mean((mean(resp(form,train))-resp(form,test))^2))
}

## cross validation function for linear model
cv.lm <- function(form,train,test,...) {
  m <- lm(form,train,...)
  p <- predict(m,test)
  p <- ifelse(p < 0,0,p)
  mse <- mean((p-resp(form,test))^2)
  c(nmse=mse/mean((mean(resp(form,train))-resp(form,test))^2))
}

## cross validation function for random forest
cv.rf <- function(form,train,test,...) {
  m <- randomForest(form,train,...)
  p <- predict(m,test)
  mse <- mean((p-resp(form,test))^2)
  c(nmse=mse/mean((mean(resp(form,train))-resp(form,test))^2))
}

## set datasets for all seven prediction tasks
DSs <- sapply(names(clean.algae)[12:18],
              function(x,names.attrs) { 
                f <- as.formula(paste(x,"~ ."))
                dataset(f,clean.algae[,c(names.attrs,x)],x) 
              },
              names(clean.algae)[1:11])

## run experiments
res.all <- experimentalComparison(
  DSs,
  c(variants('cv.lm'),
    variants('cv.rpart',se=c(0,0.5,1)),
    variants('cv.rf',ntree=c(200,500,700))
  ),
  cvSettings(5,10,1234))

## view bar plot for all variables
plot(res.all)

## use bestScore() to find best model
bestScores(res.all)
