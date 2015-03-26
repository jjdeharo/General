# Este programa calcula los n primeros números amigos
# Numeros amigos. Cuando la suma de los divisores propios de un nº dan otro y a su vez los de este dan el primero


amigos <- function(n=5) {
  i <- 0
  a <- 1
  na <- matrix(nc=2, nr=n)
  na[,] <- 0
  while(i < n) { 
    a <- a + 1
    b <- sum(divisores(a,p=T))
    if (b != a && sum(na == b) == 0) {
      c <- sum(divisores(b,p=T))   
    
      if( a == c) {
        i <- i + 1
        cat("\rQuedan",n-i,"\r")
        na[i,1] <- a
        na[i,2] <- b
        
      }
    }
 
  }
  return(na)
}


divisores <- function(n, propios=F) {
  
  if(n == 1) {return(1)}
  if( n < 0) {n <- -n}
  
  if(propios) {
    v <- 1:(n-1)
  } else {
    v <- 1:n
  }
  
  d <- n %% v
  num <- v[d == 0]
  
  return(num)
}