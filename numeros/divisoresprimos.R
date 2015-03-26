# Divisores que son primos


divisoresprimos <- function(x) {
  x <- trunc(abs(x))
  a <- divisores(x,,F)
  div <- sapply(a,esprimo)
  return(a[div])

}

divisores <- function(n, propios=F, uno=T) {
  
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

esprimo <- function(n) {
  
  if (n==1 || n==2) return(T)
  return(all(n %% (2:sqrt(n)) != 0))
}


