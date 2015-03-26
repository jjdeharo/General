# Simula el lanzamiento de una moneda con una cara cargada n veces
# p es la probabilidad de "Cara". El valor por defecto es el de una moneda normal

monedafalsa <- function(n,p=0.5) {
  if ( p > 1 || p < 0) {
    cat("El valor de p debe estar entre 0 y 1\n")
    return(invisible(-1))
  }
  return(sample(c("Cara","Cruz"),n,r=T,prob=c(p,1-p)))
}