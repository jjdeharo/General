# factoriza los elementos de un vector v. Devuelve una lista formada de matrices si el vector tiene más de un elemento y una matriz si es un número simple

factoriza <- function(v) {
  
  factoriza0 <- function(x) {
    x <- trunc(abs(x))
    a <- divisores(x,,F)
    div <- sapply(a,esprimo)
    divp <- a[div]
    primos <- divp # Factores primos originales, sin repetir
    primos2 <- divp # contendrá los primos repetidos
    x <- x / prod(divp)
    
    while(x > 1) {
      a <- divisores(x,,F) # Todos los divisores que quedan, excluido el 1
      div <- sapply(a,esprimo) # T para los divisores primos
      divp <- a[div] # Todos los divisores primos que quedan
      x <- x / prod(divp) # Divide x entre todos los primos divisores
      primos2 <- c(primos2,divp) # Une en un vector todos los divisores primos repetidos y no repetidos
    }
    
    m <- matrix(nc=2,nr=length(primos))
    colnames(m) <- c("Factor","n")
    
    fila <- 0
    for(n in primos) {
      fila <- fila + 1
      veces <- sum(primos2 == n) # cuenta las veces que aparece cada primo único
      m[fila,1] <- n
      m[fila,2] <- veces
    }
    return(m)
  }
  
  divisores <- function(n, propios=F, uno=T) {
    
    if(n == 1) {return(1)}
    if(uno) {
      inicio <- 1
    } else {
      inicio <- 2
    }
    
    if(propios) {
      v <- inicio:(n-1)
    } else {
      v <- inicio:n
    }
    
    return(v[n %% v == 0])
  }
  
  esprimo <- function(n) {
    
    if (n==1 || n==2) return(T)
    return(all(n %% (2:sqrt(n)) != 0))
  }
  
  
  if (length(v) == 1) return(factoriza0(v))
  L <- sapply(v,factoriza0)
  names(L) <- v
  return(L)
}

