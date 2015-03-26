# Juego de adivinar un número

adivina <- function(n=10) {
  cat("Adivina el número secreto de 1 a",n,"\n")
  secreto <- trunc(runif(1,1,n))

  veces <-0
  adivina <- 0
  while(adivina == 0) {
    numero <- readline(prompt="Escribe un número > ")
    veces <- veces + 1
    if(numero == secreto) {
      cat("Lo has adivinado en", veces,"veces")
      adivina <- 1
      
    }
    if (secreto > numero) {
      cat("El número secreto es mayor\n")
    }
    if (secreto < numero ) {
      cat("El número secreto es menor\n")
    }
  }
  
}