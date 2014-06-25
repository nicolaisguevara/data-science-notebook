## load train data
small.data <- read.table("orange_small_train.data", header=TRUE, sep="\t")

## load churn, upselling and appetency labels
small.churn <- read.csv("orange_small_train_churn.labels", header=FALSE)
small.upselling <- read.csv("orange_small_train_upselling.labels", header=FALSE)
small.appetency <- read.csv("orange_small_train_appetency.labels", header=FALSE)

## combine data with labels
small.all <- cbind(small.data, small.churn, small.upselling, small.appetency)

## split train data into train and test
small.train <- small.all[c(1:10000,20001:30000,40001:50000),]
small.test <- small.all[c(10001:20000,30001:40000),]
