library(shiny)
library(tidyverse)

data <- read.csv('C:/Users/pc/Documents/FinallClass/Titanic.csv')

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Дашбор по данным из Титаника"),

    # Sidebar with a slider input for number of bins 
    
        fluidRow(column(5, selectInput('pokaz', 'Показатель', choices = c('Выжившие' = 'Survived', 'Класс' = 'Pclass', 'Пол'='Sex'))),
                 column(5, selectInput('agefare', 'Показатель 2', choices = c('Возраст' = 'Age', 'Цена' = 'Fare')))),
        
        fluidRow(column(5, selectInput('color1', 'Цвет', choices = c('Красный' = 'red', 'Желтый' = 'yellow', 'Синий'='lightblue'))),
                 column(5, selectInput('color2', 'Цвет', choices = c('Темно-сений' = 'navy', 'Зеленый' = 'green', 'Синий'='lightblue')))),
        
        fluidRow(column(5, sliderInput('bins1', 'Число столбцов', min = 1, max = 3, value = 2)),
                 column(5, sliderInput('bins2', 'Число столбцов', min = 1, max = 50, value = 25))),

        # Show a plot of the generated distribution
        mainPanel(
                fluidRow(splitLayout(cellWidths = c("50%", "50%"), plotOutput("distPlot1"), plotOutput("distPlot2")))
        )
    )



# Define server logic required to draw a histogram
server <- function(input, output) {

  output$distPlot1 <- renderPlot({
    
    data <- data %>% mutate(SexNumb = if_else(data$Sex == 'male', 1, 0))
    dfx <- data
    
    # generate bins based on input$bins from ui.R
    if(input$pokaz == 'Survived'){
      x <- dfx$Survived
    }
    if(input$pokaz == 'Pclass'){
      x <- dfx$Pclass
      
    }
    if(input$pokaz == 'Sex'){
      x <- dfx$SexNumb
    }
    bins1 <- seq(min(x), max(x), length.out = input$bins1 + 1)
    
    
    hist(x,breaks = bins1, col = input$color1, border = 'lightblue',
         xlab = input$pokaz,
         ylab = 'Количество',
         main = c('Гистограмма по категории: ', input$pokaz))
  })
  
  output$distPlot2 <- renderPlot({
    dfy <- data
    # generate bins based on input$bins from ui.R
    if(input$agefare == 'Age'){
      y <- na.omit(dfy$Age)
    }
    
    if(input$agefare == 'Fare'){
      y <- dfy$Fare
    }
    bins2 <- seq(min(y), max(y), length.out = input$bins2 + 1)
    
    # draw the histogram with the specified number of bins
    hist(y, breaks = bins2, col = input$color2, border = 'lightblue',
         xlab = input$agefare,
         ylab = 'Количество',
         main = c('Гистограмма распределения по: ', input$agefare))
  })
}


# Run the application 
shinyApp(ui = ui, server = server)
