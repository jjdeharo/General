# Otra version de palindromosprimos.R
# Usa espal y esprimo


palprim2 <- function(n=10) {
  
  espal <- function(n) {
    
    
    invertir <- function(n) {
      cifra <- 0  ## Contará el nº de cifras de n
      vinvertido <- vector() # Vector que contendrá el número invertido
      while(n > 0) {
        cifra <- cifra + 1 # Empieza a contar cifras
        vinvertido[cifra] <- n %% 10 # Extrae la última cifra y la guarda
        n <- trunc(n / 10) # Elimina la última cifra del número 
      }
      
      potencia <- 10 ^ (length(vinvertido) - 1) # 1 si tiene una cifra, 10 si tiene 2, 100 si tiene 3, etc. Se usará para reconstruir el número invertido
      invertido <- 0
      
      for (x in vinvertido) {
        invertido <- invertido + potencia * x # Comienza la reconstrucción del nº invertido comenzando por el número más alto
        potencia <- potencia / 10
      }
      return(invertido)
    }
    
    
    if(invertir(n) == n) {
      return(T)
    } else {
      return(F)
    }
  }
  
  esprimo <- function(n) {
    
    if (n > .Machine$integer.max) {
      cat("El número excede la capacidad\n")
      return(NULL)
    }
    
    if (n==1 || n==2) return(T)
    
    return(all(n %% (2:sqrt(n)) != 0))
  }
  
  num <- 0
  i <- 0
  res <- vector()
  while(i < n) {
    num <- num + 1
    if(esprimo(num) && espal(num)) {
      i <- i + 1
      res[i] <- num
    }
  }
  return(res)
}