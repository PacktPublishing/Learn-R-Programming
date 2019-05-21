# Exercise 1: Find the file ‘strange_format.data’ attached to this video.
# Examine the file to see how the data is formatted, then write an R script to
# import the data into a data frame.

# Solution: there are three things to consider with this file.
# 1) The fields are delimited with plus signs (+). This can be managed with the
# argument 'sep = "_"'.
# 2) There are two lines of comments at the top of the file. These can be
# skipped with the argument 'skip = 2'.
# 3) There are not column names, as these are described in the comments at the
# top. Column names can be specified with the col.names argument.
strange_data <- read.csv(
  "strange_format.data",
  sep = "+",
  skip = 2,
  col.names = c(
    "patient_id",
    "age",
    "sex",
    "pill",
    "starting_weight",
    "final_weight"
  )
)