# Simula el lanzamiento de un dado n veces

dado <- function(n=1) 
  return(trunc(runif(n,1,7)))
