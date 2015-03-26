f <- function(i) {
  
  if(i > n) {
    cat(v,"\n")
    return()
  } 
  
  v[i] <<- 0
  f(i + 1)
  v[i] <<- 1
  f(i+1)
}

n <- as.integer(readline("n= "))
v <- vector(length=n)
f(1)