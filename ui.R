#ui
#Author : Nav


library(shiny)
library(bslib)
library(shinydashboard)

header <- dashboardHeader(title = "niyati cafe",
                          dropdownMenu(
                          )
                          )


sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Summary",tabName = "summarysidebar",icon = icon("palette",lib = "font-awesome")),
    menuItem("Data",tabName = "datasidebar",icon = icon("pen",lib = "font-awesome"))
  )
)

body <- dashboardBody(
  fluidPage(
    
    tabItems(
      
      tabItem(
              tabName = "summarysidebar",h2("summary page content"),
              textInput('summaryinputtxt',"summary page input",placeholder = "summary"),
              box(
                textOutput("summaryoutput")
              )
              ),
      
      tabItem(
              tabName = "datasidebar",h2("data page content"),
              textInput('datainputtxt',"data page input",placeholder = "data"),
              box(
                textOutput("dataoutput")
              )
              )
      
    )
  )
)

dashboardPage(header, sidebar, body)