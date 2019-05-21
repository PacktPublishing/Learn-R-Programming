# Exercise 1: Create a data frame months with four columns and twelve rows. The
# first column should be named ‘monthname’, and contain the names of the months
# of the year. The second column should be named ‘MONTHNAME’ and contain the
# names of the months in all upper case. The third column should be named
# ‘monthnum’ and contain the number of the month (January = 1, February = 2
# etc.). The fourth column should contain logical values indicating whether the
# month contains 31 days (January = TRUE, February = FALSE etc.).
months <- data.frame(
  monthname = c("January", "February", "March", "April", "May", "June", 
                "July", "August", "September", "October", "November", 
                "December"),
  MONTHNAME = c("JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", 
                "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", 
                "DECEMBER"),
  monthnum = 1:12,
  thirtyone = c(T, F, T, F, T, F, T, T, F, T, T, T)
)