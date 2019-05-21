# Exercise 1: Using the colon operator and vectorised operations, find the
# square of the integers 1-12

# Incorrect solution: this solution doesn't work because of the order of
# operations: the exponent is evaluated before the colon
1:12 ^ 2

# Correct solution: use parentheses to set the order of operations
(1:12) ^ 2

# Exercise 2: create a variable birthyear containing the year of your birth.
# Write a line of R code that returns a vector containing your age in the years
# 2011, 2012, 2013 and 2014. Assign this vector to the variable ages.
birthyear <- 1990
ages <- 2011:2014 - birthyear