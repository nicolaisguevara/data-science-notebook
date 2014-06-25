## load train data
small.data <- read.table("orange_small_train.data", header=TRUE, sep="\t")

## split train data into train and test
small.train <- small.data[c(1:10000,20001:30000,40001:50000),]
small.test <- small.data[c(10001:20000,30001:40000),]
