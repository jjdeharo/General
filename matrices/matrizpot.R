# Calcula la potencia n de una matriz m
matrizpot <- function(m, n) {
  mn <- m
  for(i in 2:n) {
    mn <- mn %*% m
  }
  print(mn)
}