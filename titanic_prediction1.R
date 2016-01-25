# Make your prediction using the test set
my_prediction <- predict(my_tree_two, test, type = "class")
my_prediction
str(my_prediction)

# Create a data frame with two columns: PassengerId & Survived. Survived contains your predictions
my_solution <- data.frame(PassengerId = test$PassengerId, Survived = my_prediction)
my_solution

nrow(my_solution)

# Write your solution to a csv file with the name my_solution.csv
write.csv(my_solution, file = "my_solution.csv" , row.names = FALSE)