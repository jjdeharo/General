# Halla los terminos de la serie de números sociables partiendo de n
# Devuelve T si la serie es sociable (periódica) y F si no lo es
# max es el número máximo de términos que se hallarán en cada serie

sociables <- function(n, max=5, salida=T) {
  num <- n
  n0 <- n
  i <- 1
  if(salida == T) cat(i,num,"\n")
  while(T) {
    i <- i+1
    num <- sum(divisoresP(num))
    if(sum(n == num)) {
      if(num == n0 && i > 3) {
        return(T)
      } else {
        return(F)
      }
    }
    if(salida == T) cat(i,num,"\n")
    n <- c(n,num)
    if(i>max) {
      if(salida == T) cat("Programa detenido. Excede max =",max,"\n")
      return(F)
    }
  }
}

divisoresP <- function(n) {
  if(n == 1 || n == 0) {return(0)}
  v <- 1:(n-1)
  return(v[n %% v == 0])
}