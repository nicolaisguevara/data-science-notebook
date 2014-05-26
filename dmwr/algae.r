## load DMwR package
library(DMwR)

## load algae data
data(algae)

## remove instances with many NAs
algae <- algae[-manyNAs(algae), ]

## replace missing values by KNN
clean.algae <- knnImputation(algae, k=10)

## build a linear model for a1
lm.a1 <- lm(a1 ~ ., data=clean.algae[, 1:12])

## view the model and statistics for significance
summary(lm.a1)

## apply anova to the model
anova(lm.a1)

## update model by removing season variable
lm2.a1 <- update(lm.a1, . ~ . - season)

## compare lm.a1 with lm2.a1
anova(lm.a1, lm2.a1)

## apply backward elimination to lm.a1 to get a final linear model
final.lm <- step(lm.a1)

## view the final model
summary(final.lm)
