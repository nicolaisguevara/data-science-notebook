library(rpart)

data(iris)

train <- iris[c(1:40, 51:90, 101:140), ]

test <- iris[c(41:50, 91:100, 141:150), ]

rt <- rpart(Species ~ ., data=train, method="class")

prettyTree(rt)

(iris.predict <- predict(rt, test, type="class"))

# plot tree 
plot(rt)
text(rt)

printcp(rt)

(t <- table(observed=test[,'Species'], predict=iris.predict))
