
primos0 <- function(x)  {
  
  esprimo <- function(n) {
    if (n == 1 || n == 2) return(T)
    return(all(n %% (2:sqrt(n)) != 0))
  }
  
  v <- 1:x
    
  v <-v[v %% 2 != 0]
  v <-v[v %% 3 != 0]
  v <-v[v %% 5 != 0]
  v <-v[v %% 7 != 0]
  v <-c(1, 2, 3, 5, 7, v)
  
  return(v[sapply(v, esprimo)])
}