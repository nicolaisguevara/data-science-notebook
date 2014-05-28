## load DMwR package
library(DMwR)

## load best models
source('cv.r')

## list best model for each objective
bestModelsNames <- sapply(bestScores(res.all),
                          function(x) x['nmse','system'])

## vector of function names for learners
learners <- c(rf='randomForest',rpart='rpartXse') 

## get function names for best models
funcs <- learners[sapply(strsplit(bestModelsNames,'\\.'),
                         function(x) x[2])]

## save parameters for best models
parSetts <- lapply(bestModelsNames,
                   function(x) getVariant(x,res.all)@pars)

## save best models
bestModels <- list()
for(a in 1:7) {
  form <- as.formula(paste(names(clean.algae)[11+a],'~ .'))
  bestModels[[a]] <- do.call(funcs[a],
                             c(list(form,clean.algae[,c(1:11,11+a)]),parSetts[[a]]))
}

## replace missing values in test set using knowledge from training set
clean.test.algae <- knnImputation(test.algae,k=10,distData=algae[,1:11])

## generate prediction matrix for each variable
preds <- matrix(ncol=7,nrow=140)
for(i in 1:nrow(clean.test.algae)) 
  preds[i,] <- sapply(1:7,
                      function(x) 
                        predict(bestModels[[x]],clean.test.algae[i,])
  )

## calculage NMSE for each variable
avg.preds <- apply(algae[,12:18],2,mean)
apply( ((algae.sols-preds)^2),           2,mean) / 
  apply( (scale(algae.sols,avg.preds,F)^2),2,mean)
