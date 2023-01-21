# Занкомство с библиотекой tidyverse

install.packages('tidyverse')

library(tidyverse)

df <- read.csv(file.choose()) #Открываем датафрейм

View(df)

df %>% View

df %>% select(Rank, Name, Year) %>% tail %>% View #select для выбора столбцов

df %>% filter(NA_Sales > 5.99 & NA_Sales < 9) %>% select(Rank, Name, Year, NA_Sales) %>% View #выбираеи строки по усл.

df <- df %>% mutate(YearIt = as.integer(Year)) #создаем новый столбец
