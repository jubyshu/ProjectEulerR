# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

n <- 1000
for (a in 3:n) {
  for (b in 4:n) {
    c <- sqrt(a ^ 2 + b ^ 2)
    if( round(c) == c && a + b + c == n) {
      result <- a * b * c
    }
  }
}
result