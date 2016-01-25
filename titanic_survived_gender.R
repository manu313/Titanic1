train <- read.csv("./titanic/tables/train.csv", header=TRUE)

#Passengers that Survived VS Passed away & Proportion

table(train$Survived)
prop.table(table(train$Survived))

#Women vs Men

table(train$Sex)
prop.table(table(train$Sex))

#Passengers that Survived VS Passed away & Proportion + Women/Men

table(train$Survived, train$Sex)
prop.table(table(train$Survived, train$Sex))
prop.table(table(train$Survived, train$Sex),margin = 1)
prop.table(table(train$Survived, train$Sex),margin = 2)


#Passengers that Survived VS Passed away & Proportion + Child/Adult

##Creationof a new column
train$Child <- NA
train$Child[train$Age < 18] <- "IsaChild"
train$Child[train$Age >= 18] <- "IsNotaChild"

table(train$Child)
prop.table(table(train$Child, train$Survived),margin = 1)