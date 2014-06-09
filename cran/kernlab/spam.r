## load kernlab package
library(kernlab)

## load spam dataset
data(spam)

## create training set
train <- sample(1:dim(spam)[1], 400)

## use Kernal Principal Component Analysis (KPCA)
kpc <- kpca(~., data = spam[train, -58], kernel = "rbfdot",
            kpar = list(sigma = 0.001), features = 2)

## print the principal component vectors
kpcv <- pcv(kpc)

#plot the data projection on the components
plot(rotated(kpc), col = as.integer(spam[train, 58]),
     xlab = "1st Principal Component", ylab = "2nd Principal Component")
