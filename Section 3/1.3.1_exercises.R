# Exercise 1: Create a vector named months such that the name of a month can be
# accessed by its number
months <- c("January", "February", "March", "April", "May", "June", "July",
            "August", "September", "October", "November", "December")
months[6] # "June"

# Exercise 2: Create a vector named reversemonths such that the number of a
# month can be accessed by its name

# Method 1
reversemonths <- c(January = 1, February = 2, March = 3, April = 4, May = 5,
                   June = 6, July = 7, August = 8, September = 9,
                   October = 10, November = 11, December = 12)
reversemonths["January"] # 1

# Method 2
reversemonths <- 1:12
names(reversemonths) <- months

# Exercise 3: Find an R function that converts a character vector into all upper
# case. Use it to convert the names of reversemonths into all upper case.
names(reversemonths) <- toupper(names(reversemonths))