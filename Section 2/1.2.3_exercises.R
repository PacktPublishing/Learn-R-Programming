# Exercise 1: find functions that return the minimum and maximum values in a
# vector

# Solution: if you had trouble finding these functions, a Google search is often
# the fastest solution - try a search like 'R minimum function'
myvector <- 1:10
min(myvector) # 1
max(myvector) # 10

# Exercise 2: find a function that returns the difference between two numbers

# Incorrect solution: unlike the c() function, the diff() function requires the
# first argument to be a vector of numbers to be differenced. diff(-2, 8) won't
# work. See the documentation for diff() for more details.
diff(2, -8)

# Correct solution
mynumbers <- c(2, -8)
difference <- diff(mynumbers)
abs(difference) # Read the documentation for ?abs to find out what it does

# Alternative solution
abs(diff(c(2, -8)))

# Exercise 3
x <- sample(1:10, 5)
y <- sample(5:15, 5)
# Write a script that returns the difference between the maximum value in x and
# the minimum value in y

# Solution 1
xmax <- max(x)
ymin <- min(y)
maxmin <- c(xmax, ymin)
difference <- diff(maxmin)
abs(difference)

# Solution 2
abs(diff(c(max(x), min(y))))