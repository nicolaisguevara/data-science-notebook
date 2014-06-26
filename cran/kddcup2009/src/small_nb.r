## Read data and labels
df.appet <- read.csv('orange_small_train_appetency.labels', header=FALSE)
df.churn <- read.csv('orange_small_train_appetency.labels', header=FALSE)
df.upsell <- read.csv('orange_small_train_appetency.labels', header=FALSE)
df.train <- read.table('orange_small_train.data',header=TRUE,sep='\t')

## Remove columns with duplicated values
df.train <- df.train[!duplicated(lapply(df.train,c))]

## Remove columns with all NA values
df.train <- df.train[,colSums(is.na(df.train))<nrow(df.train)]

## Bind labels to data
df.train_C <- cbind(df.train, df.churn)
df.train_U <- cbind(df.train, df.upsell)
df.train_A <- cbind(df.train, df.appet)

df.train_C$V1 <- factor(df.train_C$V1)
df.train_U$V1 <- factor(df.train_U$V1)
df.train_A$V1 <- factor(df.train_A$V1)
 
# Split training sets
df.train_Ctrain <- df.train_C[1:40000,]
df.train_Utrain <- df.train_U[1:40000,]
df.train_Atrain <- df.train_A[1:40000,]

# Split test sets
df.train_Ctest <- df.train_C[40001:50000,]
df.train_Utest <- df.train_U[40001:50000,]
df.train_Atest <- df.train_A[40001:50000,]

# Build Naive Bayes models
mod_C <- naiveBayes(V1~., df.train_Ctrain, laplace=0.00001)
mod_U <- naiveBayes(V1~., df.train_Utrain, laplace=0.00001)
mod_A <- naiveBayes(V1~., df.train_Atrain, laplace=0.00001)

# Predict for test sets
pre_C <- predict(mod_C, df.train_Ctest, type="raw")
pre_U <- predict(mod_U, df.train_Utest, type="raw")
pre_A <- predict(mod_A, df.train_Atest, type="raw")

# Create predictions for ROCR
pred_C <- prediction(pre_C[,2], df.train_Ctest$V1)
pred_U <- prediction(pre_U[,2], df.train_Utest$V1)
pred_A <- prediction(pre_A[,2], df.train_Atest$V1)
 
# Measure AUC
AUC_C <- performance(pred_C, measure = "auc")
AUC_U <- performance(pred_U, measure = "auc")
AUC_A <- performance(pred_A, measure = "auc")

# Create ROC curves
ROC_C <- performance(pred_C, measure ="tpr", x.measure="fpr")
ROC_U <- performance(pred_U, measure ="tpr", x.measure="fpr")
ROC_A <- performance(pred_A, measure ="tpr", x.measure="fpr")
 
# Calculate AUC values
auc_C_values <- AUC_C@y.values[[1]]
auc_U_values <- AUC_U@y.values[[1]]
auc_A_values <- AUC_A@y.values[[1]]

# Plot ROC curves
plot(ROC_C, main=paste("Churn AUC: ", signif(auc_C_values, digits=3)))
plot(ROC_U, main=paste("Upsell AUC: ", signif(auc_U_values, digits=3)))
plot(ROC_A, main=paste("Appetency AUC: ", signif(auc_A_values, digits=3)))
