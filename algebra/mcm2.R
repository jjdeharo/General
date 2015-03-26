# Mínimo común múltiplo de dos numeros Usando: xy=mcm.mcd, mcm=xy/mcd

mcm2 <- function(x,y) {
  mcd <- function(x,y) {
    if ( y > x) {  # x debe ser mayor que y
      z <- x
      x <- y
      y <- z
    }
    if(x == 0 || y == 0) return(x+y) # el mcd entre a y 0 es a
    resto <- 1
    while(resto !=0 ) {
      resto <- x%%y
      x <- y
      y <- resto
    }
    return(x)
  }
  return(x*y/mcd(x,y))
}