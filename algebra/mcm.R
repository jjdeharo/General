# MCM de los elementos de un vector v

mcm <- function(v) {
  
  mcm2 <- function(x,y) {  # mcm de dos numeros
    mcd2 <- function(x,y) {  # mcd de dos numeros
      if(x == 0 || y == 0) return(x+y) # el mcd entre a y 0 es a
      resto <- 1
      while(resto !=0 ) {
        resto <- x%%y
        x <- y
        y <- resto
        
      }
      return(x)
    }
    return(x*y/mcd2(x,y))
  }
  
  v <- sort(v,d=T)
  x <- v[1]
  for (y in v[2:length(v)]) {
    x <- mcm2(x,y)
  }
  return(x)
}