library(tidyverse)
library(stringr)
str_length(c("a", "R for data science", NA))
str_c("x", "y")
x <- c("abc", NA)
str_c("|-", x, "-|")
str_c("|-", str_replace_na(x), "-|")
x <- c("Apple", "Banana", "Pear")
str_sub(x, 1, 3)
str_sub(x, -3, -1)

str_to_upper(c("i", "ı"))
str_to_upper(c("i", "ı"), locale = "tr")
x <- c("apple", "banana", "pear")
str_view(x, "an")
str_view(x, ".a.")
str_view(c("abc", "a.c", "bef"), "a\\.c")
x <- c("apple", "banana", "pear")
str_view(x, "^a")
str_view(x, "a$")
x <- c("apple pie", "apple", "apple cake")
str_view(x, "apple")
str_view(x, "^apple$")
x <- c("apple", "banana", "pear")
str_detect(x, "e")
has_noun %>%
  str_match(noun)


x <- c("apple", "pear", "banana")
str_replace(x, "[aeiou]", "-")
str_replace_all(x, "[aeiou]", "-")
x <- c("1 house", "2 cars", "3 people")
str_replace_all(x, c("1" = "one", "2" = "two", "3" = "three"))

sentences %>%
  head(5) %>%
  str_split(" ")
























































