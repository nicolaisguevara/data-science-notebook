## load rpart package for regression tree
library(rpart)

## load DMwR package
library(DMwR)

## load algae data set
data(algae)

## remove instances with many NAs
algae <- algae[-manyNAs(algae), ]

## build regression tree
rt.a1 <- rpart(a1 ~ ., data=algae[, 1:12])

## view regression tree
rt.a1

## visualize regression tree
prettyTree(rt.a1)

## view subtrees for pruning
printcp(rt.a1)

## prune regression tree with different cp value
rt2.a1 <- prune(rt.a1, cp=0.08)

## view new tree
rt2.a1

## visualize new tree
prettyTree(rt2.a1)

set.seed(1234) # Just to ensure same results as in the book

## use rpartXse() to automatical run the process with se set to 1 as default
(rt.a1 <- rpartXse(a1 ~ .,data=algae[,1:12]))

## use snip.rpart() to interactively prune the tree
first.tree <- rpart(a1 ~ ., data=algae[, 1:12])
my.tree <- snip.rpart(first.tree, c(4, 7))

## view pruned tree
prettyTree(my.tree)
