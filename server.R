#server
#Author : Nav

source("functions_for_shiny.R")

server <- function(input, output, session) {
  string <- reactive(namepaster(input$name))
  
  output$greeting <- renderText(string())
  
  observeEvent(input$name, {
    (somecalculation(input$name))
  })
  
}