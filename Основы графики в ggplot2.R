# Основы графики в ggplot2

library(tidyverse)

dataFrame <- read.csv(file.choose())

ggplot(data = dataFrame, aes(x = county_fips)) + geom_histogram(
  fill = 'lightblue',
  color = 'blue'
)

p <- dataFrame %>% filter(year > 2017) %>% ggplot(aes(x = county_fips)) + geom_histogram(
  fill = 'lightblue',
  color = 'blue') + facet_wrap(~year)

p

dataFrame %>% ggplot(aes(x = inctot, y = mortamt1)) + geom_point(color = 'navy')

dataFrame %>% filter(year > 2018) %>% ggplot(aes(x = inctot, y = mortamt1, color = year)) + geom_point() +
  labs(title = 'Зависимость ипотечного платежа от средней зарплаты',
       x = 'Средняя зарплата',
       y = 'Платже по ипотеке')

install.packages('hrbrthemes')
library(hrbrthemes)

dataFrame %>% filter(year > 2018) %>% ggplot(aes(x = inctot, y = mortamt1, color = year)) + geom_point(size=3) + theme_ipsum()
