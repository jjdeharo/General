# Hace tiradas de una moneda a través de aleatbin() y calcula la probabilidad de sacar unos. El resultado tiene que converger en 0.5

# n: Nº de réplicas
# np: Nº de puntos para dibujar
calculaMoneda <- function(n=2000,np=1000) {

  source("aleatbin.R") # Esta función genera vector con 0 y 1 aleatoriamente con p=0.5
  
  p <- matrix(ncol=2,nr=np)
  colnames(p) <- c("n","p")
  j <-0
  for (i in seq(from=2,to=n,length=np)) {
    j <- j+1
    p[j,2] <- sum(aleatbin(i)) / i
    p[j,1] <- round(i)
  }
  
  plot(p,pch=".",col=2,ylim=c(0.4,0.6))
  #abline(h=0.5)
  return(invisible(p))
}