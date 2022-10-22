#functions for the shiny app

library(ggplot2)

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

curveplotter <- function(exponent,minofcurve,maxofcurve){
  curve(x^exponent,from = minofcurve,to = maxofcurve)
}

fivemultiplier <- function(num1forslider,num2ForSlider){
  finalanswer <- num1forslider * num2ForSlider
  return(finalanswer)
  
}

mulchofunc <- function(mulchoOutpout){
  
  mulchoOutpout_out <- paste0("the choice that has been selected is = ",mulchoOutpout)
  return(mulchoOutpout_out)
  
}

freqpoly <- function(x1, x2, binwidth = 0.1, xlim = c(-3, 3)) {
  df <- data.frame(
    x = c(x1, x2),
    g = c(rep("x1", length(x1)), rep("x2", length(x2)))
  )
  
  ggplot(df, aes(x, colour = g)) +
    geom_freqpoly(binwidth = binwidth, size = 1) +
    coord_cartesian(xlim = xlim)
}

t_test <- function(x1, x2) {
  test <- t.test(x1, x2)
  
  # use sprintf() to format t.test() results compactly
  sprintf(
    "p value: %0.3f\n[%0.2f, %0.2f]",
    test$p.value, test$conf.int[1], test$conf.int[2]
  )
}


namepaster <- function(name){
  
  name_out <- paste0("Hello ", name, "!")
  return(name_out)
  
}

somecalculation <- function(n=NA){

  n_out <- tryCatch(
    expr = {
      if (n=="") {
        message("waiting for a name or number....")
        return()
      }else{
        message("this is a number = ", as.numeric(n))
      }
      
    },
    error = function(e){
      0
      message("this is not a number")
    },
    warning = function(w){
      message("this is not a number but a string = ", n)
    },
    finally = {
      message("somecalculation complete...")
    }
  )
  return(n_out)
}













