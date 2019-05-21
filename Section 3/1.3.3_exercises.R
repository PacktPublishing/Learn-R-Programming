# Exercise 1: Create a list named coercion of length two. The first element of
# the list should be a numeric vector containing the numbers 1–10. The second
# element should be a character vector containing the numbers "1"–"10".
coercian <- list(
  1:10,
  c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10")
)

# Exercise 2:
mylist <- list("numbers" = 1:10, "morenumbers" = 11:20)
# Using list subsetting, subset from mylist a list of length one containing the
# numeric vector 1:10. Then, subset from mylist the numeric vector 1:10.
mylist[1]
mylist[[1]]