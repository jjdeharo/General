# Halla el valor numérico de un polinomio. Argumentos: coeficientes: vector de coeficientes empezando por el independiente, x: valor de x

valornumerico <- function(coeficientes,x) { 
  pot <- 0:(length(coeficientes) - 1)
  vn <- sum(coeficientes * (x ^ pot))
  return(vn)
} 
  