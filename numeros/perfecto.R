# Halla n números perfectos
# Un número perfecto es un número natural que es igual a la suma de sus divisores propios positivos, sin incluirse él mismo

perfecto <- function(n=4) {
  i <- 0
  a <- 5
  amigos <- vector()
  while (i < n) {
    a <- a + 1
    if(a == tieneamigo(a)) {
      i <- i + 1
      amigos[i] <- a
      cat("\rFaltan:",n-i,"\r")
    }
  }
  return(amigos)
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
  
  d <- n %% v
  num <- v[d == 0]
  
  return(num)
}