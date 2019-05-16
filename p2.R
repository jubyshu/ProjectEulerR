# By considering the terms in the Fibonacci sequence whose values 
# do not exceed four million, find the sum of the even-valued terms.

sum_even_fibo <- function(n) {
  a <- 0
  b <- 1
  q <- 0
  total <- 0
  while (q < n) {
    q <- a + b
    a <- b
    b <- q
    if (q <= n && q %% 2 == 0) {
      total <- total + q
    }
  }
  return(total)
}

sum_even_fibo(4e6)