library(rpart)

## build CART for churn

small.tree.churn <- rpart(churn ~. - upselling - appetency, small.train, method="class")

## evaluate

small.predict.churn.train <- predict(small.tree.churn, small.train, type="class")
table(small.train$churn, small.predict.churn.train)

  #     small.predict.churn.train
  #         -1     1
  #   -1 27646   137
  #   1    468  1749

table(small.test$churn, small.predict.churn.test)

  #     small.predict.churn.test
  #         -1     1
  #   -1 17853   692
  #   1   1374    81


## prune

printcp(small.tree.churn)

  # Variables actually used in tree construction:
  # [1] Var192 Var198 Var199 Var200 Var202 Var217

  # Root node error: 2217/30000 = 0.0739

  # n= 30000

  #          CP nsplit rel error xerror     xstd
  # 1  0.223275      0   1.00000 1.0000 0.020438
  # 2  0.079612      1   0.77673 1.1660 0.021923
  # 3  0.076229      3   0.61750 1.2833 0.022890
  # 4  0.038566      4   0.54127 1.3022 0.023040
  # 5  0.030672      6   0.46414 1.2607 0.022709
  # 6  0.019997      7   0.43347 1.3667 0.023542
  # 7  0.016689     12   0.32792 1.3969 0.023771
  # 8  0.013757     13   0.31123 1.4055 0.023835
  # 9  0.010825     15   0.28372 1.4294 0.024013
  # 10 0.010000     16   0.27289 1.4244 0.023977

small.tree.churn.pruned <- prune(small.tree.churn, cp=0.016689)
small.predict.churn.train1 <- predict(small.tree.churn.pruned, small.train, type="class")
table(small.train$churn, small.predict.churn.train1)

  #     small.predict.churn.train1
  #         -1     1
  #   -1 27649   134
  #   1    556  1661

small.predict.churn.test1 <- predict(small.tree.churn.pruned, small.test, type="class")
table(small.test$churn,small.predict.churn.test1)

  #     small.predict.churn.test1
  #         -1     1
  #   -1 17902   643
  #   1   1386    69

## view variable imporantance

small.tree.churn$variable.importance

  #     Var217     Var200     Var199     Var202     Var198     Var220     Var214
  # 1388.37922 1283.41562  993.99882  931.97264  801.53449  411.52294  339.79220
  #     Var222     Var192     Var216      Var73     Var197
  #  278.81652  263.03282  130.12430   62.03948   13.51163

