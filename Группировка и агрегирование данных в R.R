#Группировка и агрегирование данных в R

library(tidyverse)

df <- read.csv(file.choose())

df %>% summarise(rows = n()) # количество строк

df %>% summarise(min = min(NA_Sales),
                 max = max(JP_Sales),
                 mean = mean(Global_Sales))

df %>% group_by(Year) %>% tally() # сколько записей за каждый год

na.rm = True # исключает Naны из подсчетов


#-------------------------------------------------------------------------------------

DataFrame <- read.csv(file.choose()) # открываем датафрейм

library(tidyverse) # запускаем бибилиотеку

DataFrame <- na.omit(DataFrame) # удаляем пропущенные значения

DataFrame %>% group_by(Sex) %>% summarise( mean = mean(Age)) # средний возраст людей каждого пола

Total <- DataFrame %>% group_by(Pclass) %>% tally() # сколько человек в каждом классе было

Male <- DataFrame %>% group_by(Pclass) %>% filter(Sex == 'male') %>% select(Sex) %>% tally() # Количесвто мужчин в каждом классе

Female <- DataFrame %>% group_by(Pclass) %>% filter(Sex == 'female') %>% select(Sex) %>% tally() # Кол- во женщин в каждом классе

PercentOfF <- c((Female$n  / Total$n) * 100) # Процент женщин в каждом классе
PercentOfM <- c((Male$n  / Total$n) * 100) # Процент мужчин в каждом классе

NewDataFrame <- data.frame(PercentOfM, PercentOfF) # Создаем новый датафрейм с процентами мужчин и женщин в каждом классе

DataFrame <- DataFrame %>% mutate(Gender = case_when(Sex == 'male' ~ 1, Sex == 'female' ~ 0)) #Добв.столбец по условию

DataFrame %>% group_by(Pclass) %>% summarise( MaleP = sum(Gender) / length(Gender) * 100,
                                              FemaleP = (length(Gender) - sum(Gender)) / length(Gender) * 100) # Считаем проценты