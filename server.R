#server
#Author : Nav

source("functions_for_shiny.R")

function(input,output,session){
  
  output$curveplotter_output <- renderPlot({
    
    curveplotter(input$exponent)
    
  })
  
}