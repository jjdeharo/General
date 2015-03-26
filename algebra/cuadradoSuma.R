# Calcula el cuadrado de una suma

cuadradoSuma <- function(a,b) {
  cs <- (a + b) ^ 2
  resultado <- c(a,b,cs)
  names(resultado) <- c("a","b","cs")
  return(resultado)
}