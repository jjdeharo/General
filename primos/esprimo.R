# Devuelbe T si n es primo y F si no lo es
# Hay más utilidades para calcular números primos en la librería sfsmisc

esprimo <- function(n) {
  
  if (n > .Machine$integer.max) {
    cat("El número excede la capacidad\n")
    return(NULL)
  }
  
  if (n==1 || n==2) return(T)
  
  return(all(n %% (2:sqrt(n)) != 0))
}