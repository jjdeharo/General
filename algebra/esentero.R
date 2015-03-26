# Devuelve T si el número o vector es exacto y F si tiene decimales. Ver también esFrac()

esEntero <- function(x) {
  return(x == trunc(x))
}