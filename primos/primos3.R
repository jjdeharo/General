
primos3 <- function(x) {
  
  a <- c(1:x)
  b <- a[1:sqrt(x)]
  p<-vector(length=x)
  m <- outer(a,b,"%%")
  p[1] <- 1
  p[2] <- 2
  i <- 2
  for(n in 1:length(a)) {
    if(all(m[n,2:sqrt(n)]!=0)) {
      i <- i+1
      p[i]<- a[n]
      }
    }
    
   return(p[p>0])
 }
    
