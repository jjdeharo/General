# Cálculo del número áureo a partir de la serie de fibonacci

phi2 <- function(n=10) {
  source("fibonacci.R")
  source("phi.R")
  f <- fibonacci(n)
  f1 <- f[length(f)] # Último nº de fibonacci
  f2 <- f[length(f)-1] # Penúltimo nº
  fi <- f1/f2
  ea <- abs(phi()-fi)
  er <- 100 - 100*ea/phi()
  phir <- matrix(c(fi,ea,er),nc=3)
  colnames(phir) <- c("phi","Err.Abs","100-Err.Rel %")
  return(phir)
}