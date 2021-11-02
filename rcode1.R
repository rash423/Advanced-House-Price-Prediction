library(tidyverse)
getwd()
train_house <- read.csv(file= "train.csv", stringsAsFactors = FALSE, header = TRUE)
test_house <- read.csv(file= "test.csv", stringsAsFactors = FALSE, header = TRUE)
head(train_house)
summary(train_house)
summary(test_house)
ncol(train_house)
ncol(test_house)

names(test_house)
names(train_house)
# There's no column called sales price in the testing set. Here we have to combine two data sets training and testing for the data cleaning part, 
## It is easy to clean two data sets at once rather than cleaning two data sets separately.


test_house$SalePrice <- NA
names(train_house)

house_full <- rbind(train_house, test_house)
table(house_full$Id)
