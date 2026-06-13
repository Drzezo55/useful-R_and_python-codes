rescale <- function(x){
  rng <- range(x, na.rm = TRUE)
  (x - rng[1])/(rng[2]-rng[1])
}
rescale (c(0,5,10))
if (this) {
  # do that
} else if (that) {
  # do something else
} else {
  #
}



mean_ci <- function(x, conf = 0.95) {
  se <- sd(x) / sqrt(length(x))
  alpha <- 1 - conf
  mean(x) + se * qnorm(c(alpha / 2, 1 - alpha / 2))
}

x <- runif(100)
mean_ci(x)
mean_ci(x, conf = 0.99)








