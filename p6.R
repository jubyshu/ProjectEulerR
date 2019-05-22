# Find the difference between the sum of the squares of 
# the first one hundred natural numbers and the square of the sum.

sq_sum <- 0
for (i in 1:100) {
  sq_sum <- sq_sum + i ^ 2
}

sum_sq <- sum(1:100) ^ 2

sum_sq - sq_sum