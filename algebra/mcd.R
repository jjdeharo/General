# MCD de los elementos de un vector v

mcd <- function(v) {
  
  mcd2 <- function(x,y) {  #mcd de dos números
    if(x == 0 || y == 0) return(x+y) # el mcd entre a y 0 es a
    resto <- 1
    while(resto !=0 ) {
      resto <- x%%y
      x <- y
      y <- resto
    }
    return(x)
  }
  
  v <- sort(v,d=T)
  x <- v[1]
  for (y in v[2:length(v)]) {
  x <- mcd2(x,y)
  }
  return(x)
}