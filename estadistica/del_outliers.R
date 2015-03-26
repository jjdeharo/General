# Elimina outliers si son significativos. Usa test de Grubbs
# Devuelve los datos sin outliers
# Comprueba si la distribución es normal
# x: Vector que contiene los datos
# p.o: nivel de significación para eliminar outliers
# p.n: nivel de significación para el test de distribución normal

del.outliers <- function(x, p.g=0.05, p.n=0.01) {
  if(!is.vector(x) || !is.numeric(x)) {
    cat("El argumento debe ser un vector numérico\n")
    return(invisible(NULL))
  }
  norm <- shapiro.test(x)
  if (norm$p.value <= p.n ) {
    cat("La distribución no es normal. Programa interrumpido\n")
    return(norm)
  }
  
  if (!require(outliers)) {
    r<- readline("Se necesita la librería 'outliers'. ¿Instalar? (s/n) ")
    if (r=="S" || r == "s") {
      install.packages("outliers")
      library(outliers)
    } else {
      return("Programa terminado\n")
    }
  }
  
  ou <- 0
  i <- 0
  n <- length(x)
  repeat {
    if(grubbs.test(x)$p.value <= p.g) {

      i <- i + 1
      ou[i] <- outlier(x)
      x <- rm.outlier(x)
    } else {
      n <- n - length(x)
      if ( n == 1){
        cat("Se ha eliminado 1 outlier:\n",ou)
      } else {
        if (n == 0) {
          cat("No se ha eliminado ningún outlier\n")
        } else {
          
          cat("Se han eliminado",n,"outliers:\n",ou)
        }
      }
      return(invisible(x))
    }
  }
}