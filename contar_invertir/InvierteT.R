# Invierte una cadena de texto

invierteT <- function(x) {
  if (length(x) > 1) x<-paste0(x[1:length(x)],collapse="")
  i <- 0
  invertido <- as.character()
  for(n in nchar(x):1) {
    i <- i+1
    invertido[i] <- substr(x,n,n) # Invierte las letras
    texto<-paste0(invertido[1:length(invertido)],collapse="") # Une el texto en un único elemento
  }
  return(texto)
}