
reprimos <- function(a) {
  
  it <- 10 # Nº iteraciones (puntos)
  
  t <-matrix(nrow=it,ncol=4)
  intervalos <- seq(10,a,length=it)
  i <- 0
  for ( n in intervalos) {
  
   i <- i+1
   t[i,1] <- n
   t[i,2] <- system.time(primos(n))[3]
   t[i,3] <- system.time(primos2(n))[3]
   t[i,4] <- system.time(primos3(n))[3]
   }
   X11()
   pairs(t)
   
   return(t)
}

