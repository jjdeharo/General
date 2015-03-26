# Numeros amigos. Cuando la suma de los divisores de un nº dan otro y a su vez los de este dan el primero
# Devuelve T si dos números son amigos


esamigo <- function(a,b) 
  return (sum(divisores(a)) == sum(divisores(b)))



divisores <- function(n) {
  
  if( n < 0) {
    n <- -n
  }
  v <- 1:n
  d <- n %% v
  num <- v[d == 0]
  
  return(num)
}