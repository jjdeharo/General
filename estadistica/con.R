# Análisis de conglomerados


con <- function(x) {  # x es una matriz o data.frame
  x.dist <- dist(x)  # Distancia entre los datos
  v.dist <- dist(t(x))  # Distancia entre las variables
  x.hclust <- hclust(x.dist)
  v.hclust <- hclust(v.dist)
  par(mfrow=c(2,1))  # Muestra los dos graficos juntos en dos filas
  plot(x.hclust,xlab="Individuos",ylab="Distancia",main="Congromerados de individuos")
  plot(v.hclust,xlab="Variables",ylab="Distancia",main="Conglomerados de variables")
  par(mfrow=c(1,1))
  # prompt <- "Pulsa <ENTER> para ver el siguiente gráfico:"
   # a<-readline(prompt)
  
  return(invisible(list(x.hclust,v.hclust)))
 }
 
 

