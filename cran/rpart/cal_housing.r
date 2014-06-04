library(rpart)

## load data
data = read.csv(file="d://cal_housing.data",header=FALSE,)

head(data)

## generate training and test sets
index <- 1:nrow(data)
testindex <- sample(index, trunc(length(index)/3))
testset <- data[testindex,]
trainset <- data[-testindex,]

## build regression tree
cart <- rpart(log(V9) ~ V1+V2, data=trainset)

## view regression tree
printcp(cart)

## visualize regression tree
plot(cart)
text(cart)

## make predictions
cart.prediction <- predict(cart, testset)

## calculate RMSE \approx 0.40
sqrt(crossprod(cart.prediction - log(testset$V9)) / length(testindex))
