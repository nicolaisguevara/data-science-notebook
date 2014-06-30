#### Split training and test set

Method: split using `sample`

```
ind <- sample(2, nrow(df), replace=TRUE, prob=c(0.8, 0.2))
df.train <- df[ind==1,]
df.test <- df[ind==2,]
```

#### Remove column with constant (duplicated) values

```
df[!duplicated(lapply(df,c))]
```

#### Remove column with all NA values

Choose column with #NA not equal to #rows

```
df[,colSums(is.na(df))<nrow(df)]
```

#### Select rows

Method 1: using vector

```
df[,c(selected)]
```

Method 2: using `subset`

```
subset(df, select=c(selected))
subset(df, select=-c(selected))
```

Method 3: using `colnames`

```
df[,!(colnames(df) %in% c(selected))]
```

#### Get the types of all columns of a data frame

```
my.class <- rep(NA, ncol(df))
for (i in 1:ncol(df)) {
  my.class[i] <- class(df[,i])
}
my.class
```

### replace NA with mean of column

```
for (i in which(sapply(df, is.numeric))) {
  df[is.na(df[, i]), i] <- mean(df[, i],  na.rm = TRUE)
}
```

### replace values with conditions

```
v <- c(0.3, 0.4, 0.6, 0.2)
v <- ifelse(v > 0.5, 1, 0)
```
