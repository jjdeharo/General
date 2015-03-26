# Devuelve un vector con n números (o caracteres) al azar x1 y x2

aleatbin <- function(n=10,x1=0,x2=1) {
  bin <- sample(c(x1,x2),n,replace=T)
  return(bin)
}