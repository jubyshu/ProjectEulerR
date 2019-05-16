# Find the largest palindrome made from the product of two 3-digit numbers.

cp <- c()
for (i in 100:999) {
  for (j in 100:999) {
    plus <- i * j
    rev_plus = as.numeric(paste(rev(unlist(strsplit(as.character(plus), split = ''))), collapse = ''))
    if (plus == rev_plus) {
      cp <- c(cp, plus)
      p <- max(cp)
    }
  }
}
p