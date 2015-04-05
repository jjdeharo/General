moda <- function(x) {
  t <- table(x)
  return(as.numeric(names(t)[t == max(t)]))
  
}

# Se generan 500 números enteros aleatorios con distribución normal (media=100, dt=2) y se calcula su moda
set.seed(10)
x <- trunc(rnorm(500,100,2))

print(moda(x))