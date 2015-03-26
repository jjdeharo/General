# Halla números perfectos

esperfecto <- function(x) {
  x <- trunc(abs(x))
  if(x == 1 || x == 0) return(F)
  if(x == tieneamigo(x)) {
    return(T)
  } else {
    return(F)
  }
}



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
  
  return(v[n %% v == 0])
}