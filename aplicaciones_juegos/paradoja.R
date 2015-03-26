# Paradoja del cumpleaños
# Calcula la probabilidad de que en una reunión de num personas, al menos 2 cumplan años el mismo día
# Llamar a la función 'paradoja(num)' con el número de personas. Devuelve un vector con el número de personas y la probabilidad

paradoja <- function(num) {
  p <- c(num,1 - prod((366 - 1:num) / 365))
  names(p) <- c("Num.","Probabilidad")
  return(p)
}