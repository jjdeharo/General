# Devuelva el número amigo, si tiene, y FALSE si no tiene

tieneamigo <- function(a) {
  b <- sum(divisores(a, p=T))
  if (sum(divisores(b,p=T)) == a) {
    return(b)
  } else {
    return(F)
  }
}


divisores <- function(n, propios=F) {
  
  if(n == 1) return(1)
  if( n < 0) {
    n <- -n
  }
  if(propios) {
    v <- 1:(n-1)
  } else {
    v <- 1:n
  }
  
  d <- n %% v
  num <- v[d == 0]
  
  return(num)
}