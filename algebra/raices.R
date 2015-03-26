# Halla las raíces enteras de un polinomio
# p: coeficientes del polinomio empezando por el término independiente

raices <- function(...) {
  p <- unlist(list(...))
  r <- NULL
  i <- 0
  while(p[1] == 0) { # Elimina los 0 del principio 
    p <- p[2:length(p)]
    i <- 1
    r[1] <- 0
  }
  
  valornumerico <- function(coeficientes,x) { 
    pot <- 0:(length(coeficientes) - 1)
    vn <- sum(coeficientes * (x ^ pot))
    return(vn)
  } 
  
  divisores <- function(n) {

    if( n < 0) {
      n <- -n
    }
    v <- 1:n
    d <- n %% v
    num <- v[d == 0]
    
    return(num)
  }
  

  divis <- divisores(p[1])
  divis <- c(-divis,divis) # Añade los divisores negativos a los positivos
  divis <- sort(divis)
  for(n in divis) {
    if (valornumerico(p,n) == 0) {
      i <- i + 1
      r[i] <- n
    }
  }
  return(r)
}