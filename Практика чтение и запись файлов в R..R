df <- read.csv(file.choose())
View(df)

library(readxl)
dfxl <- read_excel(file.choose())

dfxlsh3 <- read_excel(file.choose(), sheet = 3)
View(dfxlsh3)

dff <- read.csv(file.choose(), sep = '\t')
