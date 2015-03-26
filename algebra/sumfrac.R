# suma fracciones calculando el mcm y luego simplificando con el mcd. Los numeradores se pasan como vector a y los denominadores como vector b

sumfrac <- function(a,b) {
  

  mcd2 <- function(x,y) {  #mcd de dos números
    if ( y > x) {  # x debe ser mayor que y
      z <- x
      x <- y
      y <- z
    }
    resto <- 1
    while(resto !=0 ) {
      resto <- x%%y
      x <- y
      y <- resto
    }
    return(x)
  }
 

  mcm2 <- function(x,y) {  # mcm de dos numeros
    
    return(x*y/mcd2(x,y))
  }
  
  
  mcm <- function(v) { # mcm de un vector
    v <- sort(v,d=T)
    x <- v[1]
    for (y in v[2:length(v)]) {
      x <- mcm2(x,y)
    }
    return(x)
  }
  
  den <- mcm(b)  # calcula el mcm de los denominadores
  num <- den / b * a  # calcula los numerados
  num <- sum(num)  # suma numeradores
  simp <- mcd2(num,den)  # calcula el mcd para simplificar
  return(c(num/simp,den/simp))  # devuelve el resultado ya simplificado como un vector con el numerador en primer lugar y el denominador en segundo
}