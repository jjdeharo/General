# m tiene que ser una matriz o data.frame. Hace un test de correlación entre las columnas
r.test <-function(m) {
  corr <- list()
  n<-0
  for (i in 1:(ncol(m)-1)) {
    for (j in (i+1):ncol(m)) {
      n <- n+1
      corr[[n]] <- list("col"=as.vector(c(i,j)),cor.test(m[,i],m[,j]))
    }
  }
  return(corr)
}