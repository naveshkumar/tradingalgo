#functions for the shiny app

plusminus <- function(a,b){
  c <- a+b
  d <- a-b
  return(list(c,d))
}

plusminusmul <- function(a,b){
  c <- a+b
  d <- a-b
  mul <- a*b
  return(list(c,d,mul))
}

curveplotter <- function(exponent){
  curve(x^exponent,from = -10,to = 10)
}