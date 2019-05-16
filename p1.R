# Find the sum of all the multiples of 3 or 5 below 1000.

addn <- function(n) {
  sum <- 0
  for (i in seq_len(n-1)) {
    if (i %% 3 == 0 || i %% 5 == 0) {
      sum <- sum + i
      i <- i + 1
    }
  }
  return(sum)
}

addn(1000)