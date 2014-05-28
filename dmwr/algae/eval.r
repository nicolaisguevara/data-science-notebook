## load linear models
source('lm.r', echo=TRUE)

## load regression trees
source('rt.r', echo=TRUE)

## test linear model
lm.predictions.a1 <- predict(final.lm, clean.algae)

## test regression tree
rt.predictions.a1 <- predict(rt.a1, algae)

## calculate MAE for linear model prediction
(mae.a1.lm <- mean(abs(lm.predictions.a1 - algae[, "a1"])))

## calculate MAE for regression tree prediction
(mae.a1.rt <- mean(abs(rt.predictions.a1 - algae[, "a1"])))

## calculate MSE for linear model prediction
(mse.a1.lm <- mean((lm.predictions.a1-algae[,'a1'])^2))

## calculate MSE for regression tree prediction
(mse.a1.rt <- mean((rt.predictions.a1-algae[,'a1'])^2))

## calculate NMSE (normalized MSE) for linear model
(nmse.a1.lm <- mean((lm.predictions.a1-algae[,'a1'])^2)/
   mean((mean(algae[,'a1'])-algae[,'a1'])^2))

## calculate NMSE (normalized MSE) for regression tree
(nmse.a1.rt <- mean((rt.predictions.a1-algae[,'a1'])^2)/
   mean((mean(algae[,'a1'])-algae[,'a1'])^2))

## evaluation function in package DMwR
regr.eval(algae[,'a1'],rt.predictions.a1,train.y=algae[,'a1'])

## visualize preditions
old.par <- par(mfrow=c(1,2))

## scatter plot for linear model
plot(lm.predictions.a1,algae[,'a1'],main="Linear Model",
     xlab="Predictions",ylab="True Values")
abline(0,1,lty=2)

## scatter plot for regression tree
plot(rt.predictions.a1,algae[,'a1'],main="Regression Tree",
     xlab="Predictions",ylab="True Values")
abline(0,1,lty=2)

par(old.par)

## check bad prediction
plot(lm.predictions.a1,algae[,'a1'],main="Linear Model",
     xlab="Predictions",ylab="True Values")
abline(0,1,lty=2)
algae[identify(lm.predictions.a1,algae[,'a1']),]

## use ifelse to eliminate negative frequency of a1
sensible.lm.predictions.a1 <- ifelse(lm.predictions.a1 < 0,0,lm.predictions.a1)
regr.eval(algae[,'a1'],lm.predictions.a1,stats=c('mae','mse'))
regr.eval(algae[,'a1'],sensible.lm.predictions.a1,stats=c('mae','mse'))
