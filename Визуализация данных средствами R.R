# Визуализация данных средствами R.

dfBigMac <- read.csv(file.choose())

table(dfBigMac$region)

barplot(table(dfBigMac$region),
        main = 'Распределение записей по странам', # Заголовок
        xlab = 'Страны', # Подпись оси Х
        ylab = 'Ко-во записей', # Подпись оси У
        cex.names = 0.9, # Размер шрифта
        las = 2, # Наклон подписей
        col = 'blue') # Цвет столбцов

help("barplot")

secOfcolors <- rep(c('green', 'blue'), 8) # последовательноть из двух цветов

barplot(table(dfBigMac$region),
        main = 'Распределение записей по странам',
        xlab = 'Страны',
        ylab = 'Ко-во записей',
        cex.names = 0.9,
        las = 2,
        col = secOfcolors) # раскрашиваем столбцы в последовательность цветов
        
colors() #Список всех цветов в R

tablecont <- (table(dfBigMac$region) / sum(table(dfBigMac$region))) *100 # считаем процент и записываем в поименованый список
tablecont <- round(tablecont, 2) # округляем значения
tablecont <- paste(tablecont, '%', sep = '') # добавляем знак %
tabNames <- names(tablecont) # берем имена из поименованного списка

colo <- rep(c('green', 'blue','red','darkorchid','gold','firebrick3','darkseagreen2','darkorange4'), 2)


pie(table(dfBigMac$region),
    main = 'Количество записей по странам в %.',
    col = colo,
    labels = tablecont) # надписи из поименованного списка

legend(x = -3, y = 1, legend = tabNames, ncol = 4, fill = colo, cex = 0.6, bty = 'n') # легенда

