# Muestrea alatoriamente sobre un vector que es la población y devuelve una lista con los valores muestreados una matriz con las medias estimadas y su error estándar y la auténtica media poblacional

# x: vector con los valores de la población. n: Nº de muestras para extraer (nº filas del resultado). tm: tamaño de las muestras

# En la salida de boot aparece 'bias' que es la diferencia (resta) entre la media de las medias calculadas por bootstrap y la auténtica media. Se puede calcular como:
# bias <- mean(z$t) - z$t0

muestreo <- function(x=rnorm(1000),n=10,tm=15) {  
  media.p <- mean(x) # media poblacional
  media.m <- vector()  # Vector que contendrá las medias muestrales
  SE <- vector()  # Vector que contendrá los errores estándard muestrales
  muestras <- matrix(nr=tm,nc=n)
  colnames(muestras) <- paste("M",1:n,sep="")
  rownames(muestras) <- 1:tm
  
  for (i in 1:n) {
    muestras[,i] <- sample(x,tm)
    media.m[i] <- mean(muestras[,i])
    SE[i] <- sd(muestras[,i])/sqrt(tm)
  }
  
  medias.SE <- data.frame("Medias"=media.m,SE)
  
  parametros <- list(numero_muestras=n,tamaño_muestral=tm)
  
  res <- list(media.p=media.p,parametros=parametros,muestras=muestras,m.ES=medias.SE)
  
  
  return(res)
}
           