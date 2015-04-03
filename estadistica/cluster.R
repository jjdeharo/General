
data(iris)
x<- iris[-5]
  x.dist <- dist(x)  # Distancia entre los datos
  v.dist <- dist(t(x))  # Distancia entre las variables


  x.hclust <- hclust(x.dist)
  v.hclust <- hclust(v.dist)
  plot(x.hclust,cex=.5,hang = -1)
  plot(v.hclust,hang = -1)



