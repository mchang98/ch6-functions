# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLengths <- function(x, y) {
  v1 <- length(x)
  v2 <- length(y)
  if (v1 > v2) {
    difference <- v1 - v2
  } else if (v1 < v2) {
    difference <- v2 - v1
  } else {
    difference <- 0
  }
  return(paste("The difference in lengths is ", difference))
}

# Pass two vectors of different length to your `CompareLength` function
v1 <- c(1, 2, 3, 4, 5, 6)
v2 <- c(4, 5)
CompareLengths(v1, v2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(x, y) {
  v1 <- length(x)
  v2 <- length(y)
  if (v1 > v2) {
    status <- paste("Your first vector is longer by ", v1 - v2, "elements")
  } else if (v2 > v1) {
    status <- paste("Your second vector is longer by ", v2 - v1, "elements")
  } else {
    status <- paste("Your vectors are the same length")
  }
  return(status)
}

# Pass two vectors to your `DescribeDifference` function
x <- c(3, 4, 5, 6)
y <- c(0, 1, 2, 3)
DescribeDifference(x, y)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
