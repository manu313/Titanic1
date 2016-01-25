#Recursive Partitioning and Regression Trees library
library(rpart)

# Load in the packages to create a fancified version of your tree
library(rattle)
library(rpart.plot)
library(RColorBrewer)

train <- read.csv("./titanic/tables/train.csv", header=TRUE)

# Build the decision tree
my_tree_two <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, method = "class")

# Visualize the decision tree using plot() and text()
plot(my_tree_two)
text(my_tree_two)

# Time to plot your fancy tree
fancyRpartPlot(my_tree_two)
