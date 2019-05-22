# What is the 10 001st prime number?

n <- 10001
sequence <- numeric(n)
sequence[1:2] <- c(2, 3)
p <- 5
for(i in 3:n) {
  while (any(p %% sequence[1:(i-1)] == 0)) {
    p <- p + 2
  }
  sequence[i] <- p
  p <- p + 2
}
sequence[n]