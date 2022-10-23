#server
#Author : Nav

source("functions_for_shiny.R")

server <- function(input, output, session) {
  
  summarystring <- reactive(namepaster(input$summaryinputtxt))
  output$summaryoutput <- renderText(summarystring())
  observeEvent(
    input$summaryinputtxt,
    {
      somecalculation(input$summaryinputtxt)
    }
  )
  
  datastring <- reactive(namepaster(input$datainputtxt))
  output$dataoutput <- renderText(datastring())
  observeEvent(
    input$datainputtxt,
    {
      somecalculation(input$datainputtxt)
    }
  )
  
  
}