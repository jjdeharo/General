# Extiende los valores de una tabla en sus frecuencias.
# x: valor. f: frecuencia
# x puede ser una tabla, en ese caso no hace falta f

untable <- function(x,f=1) {
if(is.table(x)) {
  f <- x
  x <- names(x)
}
if(length(x) != length(f)){
  stop("Las longitudes de valores y frecuencias no coinciden")
}
  s <- vector()
  for(n in 1:length(x)) {
    s <- c(s,rep(x[n],f[n]))
  }
  return(s)
}
