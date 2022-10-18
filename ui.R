#ui
#Author : Nav

fluidPage(
  
  titlePanel("Curve plotter"),
  
  sliderInput("exponent",
              "choose an exponent",
              min = 1,
              max = 5,
              value = 1),
  
  sliderInput("minofcurve",
              "MINIMUM",
              min = -5,
              max = -1,
              value = -5),
  
  sliderInput("maxofcurve",
              "MAXIMUM",
              min = 1,
              max = 5,
              value = 5),
  
  plotOutput("curveplotter_output")
  
)