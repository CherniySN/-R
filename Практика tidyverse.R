# Практика tidyverse

rate <- read.csv(file.choose())

library(tidyverse)

good <- rate %>% filter(PREP > 5 & DECI > 8) # фильтруем по значениям строки

bad.small <- rate %>% filter(FAMI < 5.5 & CFMG < 6) %>% select(PREP, CFMG, PHYS) # фильтруем по значениям строки и столбццы

rate <- rate %>% mutate(avgORAL = c(mean(rate$ORAL))) # создаем новый столбец и сохраняем в него среднее

rate <- rate %>% mutate(avgWRIT = c(mean(rate$WRIT))) # создаем новый столбец и сохраняем в него среднее
