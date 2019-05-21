# Exercise 1: Create a matrix named timestables such that each value in the
# matrix is the multiple of its row and column number

# Note: there are faster ways to do this; however, this solution uses only the
# methods taught so far in this course
timestables <- matrix(
  c(1 * 1:12, 2 * 1:12, 3 * 1:12, 4 * 1:12, 5 * 1:12, 6 * 1:12, 7 * 1:12,
    8 * 1:12, 9 * 1:12, 10 * 1:12, 11 * 1:12, 12 * 1:12),
  nrow = 12,
  ncol = 12
)

# Exercise 2: Create a matrix colours with three rows and three columns
# corresponding to the primary colours red, yellow and blue. Each element of the
# matrix should correspond to the colour resulting from the mix of the row and
# column colour.
colours <- matrix(
  c("red", "orange", "purple", "orange", "yellow", "green", "purple", "green",
    "blue"),
  nrow = 3,
  ncol = 3
)
colnames(colours) <- c("red", "yellow", "blue")
rownames(colours) <- c("red", "yellow", "blue")