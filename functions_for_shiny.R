#functions for the shiny app

plusminus <- function(a,b){
  c <- a+b
  d <- a-b
  return(list(c,d))
}