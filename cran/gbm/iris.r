library(gbm)
newcol <- data.frame(isSetosa=(iris$Species=="setosa"),
                     isVersicolor=(iris$Species=="versicolor"),
                     isVirginica=(iris$Species=="virginica"))
iris2 <- cbind(iris, newcol)

## setosa
setosa.model <- gbm(isSetosa~., data=iris2[, !(colnames(iris2) %in% c("Species","isVersicolor","isVirginica"))],
                    n.trees=1000,
                    interaction.depth=2,
                    distribution="bernoulli",
                    cv.folds=10)
setosa.pre <- predict.gbm(setosa.model,	iris2, type="response", n.trees=gbm.perf(setosa.model, method="cv")) > 0.5
require(caret)
confusionMatrix(table(setosa.pre, iris2$isSetosa), positive="TRUE")

## versicolor
versicolor.model <- gbm(isVersicolor~., data=iris2[, !(colnames(iris2) %in% c("Species","isSetosa","isVirginica"))],
                        n.trees=5000,
                        interaction.depth=2,
                        distribution="bernoulli",
                        cv.folds=10)
versicolor.pre <- predict.gbm(versicolor.model, iris2, type="response", n.trees=gbm.perf(setosa.model, method="cv")) > 0.5
require(caret)
confusionMatrix(table(versicolor.pre, iris2$isVersicolor), positive="TRUE")

## virginica
virginica.model <- gbm(isVirginica~., data=iris2[,!(colnames(iris2) %in% c("Species","isSetosa","isVersicolor"))],
                       n.trees=10000,
                       interaction.depth=2,
                       distribution="bernoulli",
                       cv.folds=10)
virginica.pre <- predict.gbm(virginica.model, iris2, type="response", n.trees=gbm.perf(setosa.model, method="cv")) > 0.5
require(caret)
confusionMatrix(table(virginica.pre, iris2$isVirginica), positive="TRUE")

## multinominal
model <- gbm(Species~., data=iris,
             n.trees=1000,
             interaction.depth=2,
             distribution="multinomial",
			       cv.folds=10)
pre <- predict.gbm(model, iris, type="response", n.trees=1000)
