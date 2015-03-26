# Halla números ambiciosos indicando inicio y fin. itMax son el número máx de elementos de cada serie que se calcularán

ambiciosos <- function(inicio,fin, itMax=10) {
  exceden <- 0
  i <- 0
  for(n in inicio:fin) {
    amb <- esambicioso(n,itMax,F)
    if(is.na(amb$Ambicioso)) {
      i <- i + 1
      exceden[i] <-amb$Serie[1]
      amb$Ambicioso <- F
    }
     
    #print(amb)
    if(amb$Ambicioso == T) {
      print(amb)
    }
  }
  cat("Eceden itMax=",itMax,":",exceden,"\n")
}


esambicioso <- function(n, max=10, salida=T) {
  num <- n
  n0 <- n
  i <- 1
  nsoc <- num
  if(salida == T) cat(i,num,"\n")
  while(T) {
    i <- i+1
    num <- sum(divisoresP(num))
    nsoc[i] <- num
    if(sum(n == num)) {
      if(num != n0 && num != 0 && i > 2) {
        return(list("Ambicioso"=T,"Serie"=nsoc[1:(length(nsoc)-1)]))
      } else {
        return(list("Ambicioso"=F,"Serie"=nsoc[1:(length(nsoc)-1)]))
      }
    }
    if(salida == T) cat(i,num,"\n")
    n <- c(n,num)
    if(i > max) {
      if(salida == T) cat("Programa detenido. Excede max =",max,"\n")
      return(list("Ambicioso"=NA,"Serie"=nsoc[1:(length(nsoc)-1)]))
    }
  }
}

divisoresP <- function(n) {
  if(n == 1 || n == 0) {return(0)}
  v <- 1:(n-1)
  return(v[n %% v == 0])
}