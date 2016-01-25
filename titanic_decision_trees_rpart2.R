dir<- "C:/Users/i81146/Dropbox/MJU_XWR/Code/R"
setwd(dir)

#Recursive Partitioning and Regression Trees library
library(rpart)

# Load in the packages to create a fancified version of your tree
library(rattle)
library(rpart.plot)
library(RColorBrewer)

train <- read.csv("./titanic/tables/train.csv", header=TRUE)

train_two <- train

train_two$family_size <- train_two$SibSp + train_two$Parch +1
train_two$Age[is.na(train_two$Age)] <- mean(train_two$Age, na.rm=TRUE)

# Build the decision tree
my_tree_three <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked + family_size, data = train_two, method = "class",
                       control=rpart.control(cp=0, minsplit=30))

# Visualize the decision tree using plot() and text()
plot(my_tree_three)
text(my_tree_three)

# Time to plot your fancy tree
fancyRpartPlot(my_tree_three)
