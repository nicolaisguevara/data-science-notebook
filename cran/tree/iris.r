library(tree)

data(iris)

cart <- tree(Species ~ ., data=train)

summary(cart)

## predict on test set
(cart.predict <- predict(cart, test, type="class"))

## view confusion matrix of prediction
(t <- table(observed=test[,'Species'], predict=cart.predict))

plot(cart)
text(cart, pretty=0)
