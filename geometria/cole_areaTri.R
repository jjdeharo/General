areaTri <- function(base, altura) {
  area <- base * altura / 2
  resultado <- c(base, altura, area)
  names(resultado) <- c("Base", "Altura", "Área")
  return(resultado)
}