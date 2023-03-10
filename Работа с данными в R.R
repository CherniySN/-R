# Работа с данными Kaggle в R.

df <- read.csv(file.choose()) #Открываем датафрейм
View(df) #Смотрим датафрейм

str(df) #Смотрим структуру датафрема

head(df) #Смотрим первые 6 значений датафрейма

tail(df) #Смотрим последние 6 значений датафрейма

summary(df) #Смотрим статистические данные датафрейма по столбцам

df <- na.omit(df) #Удаляем строки с пропущенными значениями в датафрейме

Year <- df$Year #Обращаемся к строке в датафрейме

x <- df$Name[2] #Обращаемся к конкретному элементу датафрейма

Year <- as.numeric(Year) #Переводим в числа из текста

df$YearNum <- Year #Создаем новый столбец в датафрейме

df1 <- df[7:8] #Выбираем два подряд идущих столбца

df2 <- df[c(7,9)] #Выбираем не подряд идущие столбцы по индексам

Year2006 <- df[df$YearNum == 2006,] #Выбираем данные из датасета только за 2006 год

Year2006 <- na.omit(Year2006) #Удаляем строки с пропущенными значениями

Year2009 <- df[df$YearNum == 2009, c(7,9)] #Выбираем колонки 7 и 9 только за 2009 год

Total <- df[(df$Publisher == "Nintendo") & (df$YearNum == 2009), c(7,9)] #Выбираем продажи игр за 2009 год в северной Америке и Японии компании Нинтендо
