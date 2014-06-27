## load train data
df.small.data <- read.table("orange_small_train.data", header=TRUE, sep="\t")

## load churn, upselling and appetency labels
df.small.labels_C <- read.csv("orange_small_train_churn.labels", header=FALSE, col.names="Churn")
df.small.labels_U <- read.csv("orange_small_train_upselling.labels", header=FALSE, col.names="Upselling")
df.small.labels_A <- read.csv("orange_small_train_appetency.labels", header=FALSE, col.names="Appetency")

## set labels to categorical values
df.small.labels_C$Churn <- factor(df.small.labels_C$Churn)
df.small.labels_U$Upselling <- factor(df.small.labels_U$Upselling)
df.small.labels_A$Appetency <- factor(df.small.labels_A$Appetency)

## combine data with labels
df.raw <- cbind(df.small.data, df.small.labels_C, df.small.labels_U, df.small.labels_A)

## split train data into train and test
df.train <- df.raw[1:40000,]
df.test <- df.raw[40001:50000,]
