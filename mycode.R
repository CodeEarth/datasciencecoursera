add2 <- function(x,y) {
  x+y
}

columnmean <- function(x, removeNA = TRUE) {
  nc <- ncol(x)
  means <- numeric(nc)
  for(i in seq_len(nc)) {
    means[i] <- mean(x[, i], na.rm = removeNA) + z
  }
  means
}

make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}

cube <- function(x,n) {
  x^3
}

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}


