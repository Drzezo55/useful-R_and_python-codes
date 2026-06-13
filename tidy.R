library(tidyverse)
library(nycflights13)

diamonds2 <- diamonds %>%
  filter(between(y, 3, 20))
diamonds2 <- diamonds %>%
  mutate(y = ifelse(y < 3 | y > 20, NA, y))
flights %>%
  mutate(
    cancelled = is.na(dep_time),
    sched_hour = sched_dep_time %/% 100,
    sched_min = sched_dep_time %% 100,
    sched_dep_time = sched_hour + sched_min / 60
  ) %>%
  ggplot(mapping = aes(sched_dep_time)) +
  geom_freqpoly(
    mapping = aes(color = cancelled),
    binwidth = 1/4
  )

ggplot(
  data = diamonds,
  mapping = aes(x = price, y = ..density..)
) +
  geom_freqpoly(mapping = aes(color = cut), binwidth = 500)

ggplot(data = diamonds, mapping = aes(x = cut, y = price)) +
  geom_boxplot()
ggplot(data = mpg) +
  geom_boxplot(
    mapping = aes(
      x = reorder(class, hwy, FUN = median),
      y = hwy
    )
  )

ggplot(data = diamonds) +
  geom_count(mapping = aes(x = cut, y = color))

diamonds %>%
  count(color, cut)



diamonds %>%
  count(color, cut) %>%
  ggplot(mapping = aes(x = color, y = cut)) +
  geom_tile(mapping = aes(fill = n))

smaller <- diamonds %>%
  filter(carat < 3)
ggplot(data = smaller, mapping = aes(x = carat, y = price)) +
  geom_boxplot()


table3 %>%
  separate(rate, into = c("cases", "population"), sep = "/")
table3 %>%
  separate(
    rate,
    into = c("cases", "population"),
    convert = TRUE
  )
table5 %>%
  unite(new, century, year)
table5 %>%
  unite(new, century, year, sep = "")

flights2 %>%
  left_join(airports, c("dest" = "faa"))
flights2 %>%
  left_join(planes, by = "tailnum")
































































