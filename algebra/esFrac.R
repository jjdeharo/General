# Es la versión contraria de esEntero. Devuelve T si es fraccionario y F si no lo es

esFrac <- function(x) {
  return(x != trunc(x))
}