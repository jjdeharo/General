# Máximo común divisor siguiendo método euclides de dos numeros. Devuelve NaN si algún numero es 0

mcd2 <- function(x,y) {
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