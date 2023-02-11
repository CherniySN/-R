#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)

datafr <- read.csv(file.choose())

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Таблица по упражнениям"),

    # Sidebar with a slider input for number of bins 
    fluidRow(column(3, selectInput('type', 'Тип упражнения:', choices = c('All', unique(as.character(datafr$Type))))),
             column(3, selectInput('bodypart', 'Часть тела:', choices = c('All', unique(as.character(datafr$BodyPart))))),
             column(3, selectInput('equipment', 'Сопртинвентарь:', choices = c('All', unique(as.character(datafr$Equipment))))),
               column(3, selectInput('level', 'Уровень спортсмена:', choices = c('All', unique(as.character(datafr$Level))))),
             ),

        # Отрисовака основного экрана (таблицы)
        mainPanel(
           DT::dataTableOutput('table')
        )
    )


# Define server logic required to draw a histogram
server <- function(input, output) {

    output$table <- DT::renderDataTable(DT::datatable({
      df <- datafr
      
      if(input$type != 'All'){
        df <- df[df$Type == input$type,]
      }
      if(input$bodypart != 'All'){
        df <- df[df$BodyPart == input$bodypart,]
      }
      if(input$equipment != 'All'){
        df <- df[df$Equipment == input$equipment,]
      }
      if(input$level != 'All'){
        df <- df[df$Level == input$level,]
      }
      df
    }))
    
}

# Run the application 
shinyApp(ui = ui, server = server)
