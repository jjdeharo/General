# Genera números enteros al azar normales

aleatn <- function(n=20,media=100,s=10) {
  return(round(rnorm(n,media,s)))
}