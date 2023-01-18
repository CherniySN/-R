# Чтение и запись файлов в R.

df <- read.csv('gender_submission.csv')
df<- read.csv(file.choose())

#RStudios ищет файлы в рабочей папке
#Узнать, какая папка является рабочей, можно с помощью функции getwd():
getwd()

#Изменение рабочей папки
setwd("C:/AllaT/Рабочий стол/")

#Открываем из рабочей папки
df <- read.csv("gender_submission.csv")

#Открываем через диалоговое окно
df <- read.csv(file.choose())

#Открытие с полным путем до файла
df <- read.csv("C:/Users/pc/Downloads/titanic/gender_submission.csv")

?read.csv
#Разделитель и десятичные знаки
sep = '-' dec = ','

#Установка библиотек
install.packages('readxl')

#Работа с библиотекой
library(readxl)

read_excel()