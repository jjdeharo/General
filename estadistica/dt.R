# Calcula la desviación típica

dt <- function(x) {
  destip <- sqrt(sum((x-mean(x))^2)/(length(x)-1))
  return(destip)
}