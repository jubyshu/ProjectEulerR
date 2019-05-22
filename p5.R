# What is the smallest positive number that is evenly divisible 
# by all of the numbers from 1 to 20?

is_prime <- function(num) {
  if (num == 2) {
    return(TRUE)
  }
  for (n in seq(2, num - 1)) {
    if (num %% n != 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

lcm <- function(num) {
  exp <- 1
  result <- 1
  for (i in seq(2, num - 1)) {
    if (is_prime(i)) {
      while (TRUE) {
        if (i ^ exp > num) {
          result <- result * i ^ (exp - 1)
          break
        }
        exp <- exp + 1
      }
      exp <- 1
    }
  }
  return(result)
}
lcm(20)