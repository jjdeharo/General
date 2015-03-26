# Intervalos de confianza para los coeficientes lm

lmIC <- function(x,alfa1=95,decimales=3) {  # x: objeto lm, alfa: % del intervalo de confianza, p.ej: 95. Por defecto saca 3 decimales pero se puede indicar un nº diferente
  if (class(x) != "lm") {
    cat("Error: x es de clase",class(x),"y se requiere la clase 'lm'\n")
    return(invisible(NULL))
   }

  alfa <- 100-(100-alfa1)/2
  qp <- qt(alfa/100,x$df)
  n <- 0
  res <- matrix(nc=3,nr=length(x$coefficients))  # Col1: Coeficientes, C2: Lím inferior, C3: Lím superior 
  res[,1] <- x$coefficients
  sErr <- summary(x)[[4]][,2]  # Los errores estándard solo aparecen en el summary (elemento 4 de la lista, columna 2)
  
  rownames(res) <- names(x$coefficients)
  colnames(res) <- c("Estimado","Inf","Sup")
  
  res[,2] <- x$coefficients - qp*sErr
  res[,3] <- x$coefficients + qp*sErr
  
  
    
  ceros <- res[,2] < 0 & res[,3] > 0  # Posiciones de los valores de cada intervalo que incluyen ceros
  coef0 <- names(x$coefficients[which(ceros == T)])  ## Obtiene los nombres de las variables 
    
  res <- round(res,decimales)
  cat("Intervalos de confianza del ",alfa1,"%\nCoeficientes\n",sep="")
  
  print(res)
  
  if (length(coef0) > 0) cat("Los coeficientes ",coef0," no son significativamente distintos de 0\n")
  
  return(invisible(res))
}
  
