#ui
#Author : Nav


library(shiny)

ui <- fluidPage(
  textInput("name",label = "What's your name?", value = NULL,placeholder = "enter name or number"),
  textOutput("greeting")
)