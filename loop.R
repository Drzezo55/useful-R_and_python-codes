df <- tibble(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)
output <- vector("double", ncol(df))  # 1. output
for (i in seq_along(df)) {            # 2. sequence
  output[[i]] <- median(df[[i]])      # 3. body
}
output
map_dbl(df, median)
df %>% map_dbl(median)


mu <- list(5, 10, -3)
mu %>%
  map(rnorm, n = 5) %>%
  str()
f <- c("runif", "rnorm", "rpois")
param <- list(
  list(min = -1, max = 1),
  list(sd = 5),
  list(lambda = 10)
)
invoke_map(f, param, n = 5) %>% str()
comma <- function(x) format(x, digits = 2, big.mark = ",")
comma(3452345)
for (i in seq_along(x)) {
  name <- names(x)[[i]]
  value <- x[[i]]
}


flip <- function() sample(c("T", "H"), 1)

flips <- 0
nheads <- 0

while (nheads < 3) {
  if (flip() == "H") {
    nheads <- nheads + 1
  } else {
    nheads <- 0
  }
  flips <- flips + 1
}
flips


















