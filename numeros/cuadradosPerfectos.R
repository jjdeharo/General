# Devuelve los cuadrados perfectos entre inicio y fin

cuadradosPerfectos <- function(inicio=1,fin=100) {
  if (inicio <= 0 || fin <= 0) {
    return(cat("Error: 'Inicio' y 'fin' deben ser positivos\n"))
  }
  v <- inicio:fin
  rcv <- sqrt(v)
  vv <- v[rcv == trunc(rcv)]
  return(vv)
}