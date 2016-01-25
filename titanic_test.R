test <- read.csv("./titanic/tables/test.csv", header=TRUE)

test_one <- test

test_one$Survived<-0
test_one$Survived[test_one$Sex == "female"] <- 1
table(test_one$Survived)

