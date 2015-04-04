# Calcula la moda de un conjunto de frecuencias
# Devuelve NULL si no hay moda

moda <- function(x) {
  tabla <- table(x)
  t <- as.numeric(tabla)
  if(sum(t) == length(t)) return(NULL)
  
  frec <- -sort(-tabla)[1]
  n <- sum(frec == tabla)
  if (n == length(t)) return(NULL)
  moda <- as.numeric(names(sort(-tabla))[1:n])
  return(moda)
  
}