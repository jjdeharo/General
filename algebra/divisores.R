# Halla los divisores postivos de n
# Los divisores propios son los divisores excluyendo a n
# Uno = T, se incluye el 1 entre los divisores, uno = F no se incluye

divisores <- function(n, propios=F, uno=T) {
  n <- trunc(abs(n)) # Convierte n en un entero positivo
  if(n == 1) {return(1)}
  if(uno) {
    inicio <- 1
  } else {
    inicio <- 2
  }
  
  if(propios) {
    v <- inicio:(n-1)
  } else {
    v <- inicio:n
  }
  
  return(v[n %% v == 0])
}