#ui
#Author : Nav

fluidPage(
  
  sliderInput("exponent",
              "choose an exponent",
              min = 1,
              max = 5,
              value = 1),
  
  plotOutput("curveplotter_output")
  
)