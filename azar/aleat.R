# Generador de números aleatorios enteros

aleat <- function(n=10,inicio=1,fin=10) {
  return(round(runif(n,inicio,fin)))
}

