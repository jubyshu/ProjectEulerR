# What is the largest prime factor of the number 600851475143 ?

lp_factor <- function(n) {
  x <- 2
  d <- 1
  while (x ^ 2 <= n) {
    if (n %% x == 0) {
      n <- n %/% x
    } else {
      x <- x + d
      d <- 2
    }
  }
  return(n)
}

lp_factor(600851475143)