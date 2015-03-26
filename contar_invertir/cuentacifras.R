# Cuenta las cifras que tiene un número n

cuentacifras <- function(n) {
  cifras <- 0
  while(n > 0) {
    cifras <- cifras + 1
    n <- trunc(n / 10)
  }
  return(cifras)
}