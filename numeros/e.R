# Cálculo del nº e. Admite vectores

e <- function(n=100) {

  ea <- abs(exp(1)-e)
  er <- 100*(abs(exp(1)-e))/exp(1)
  
  re <- matrix(c(e,ea,er),nc=3)
  rownames(re) <- n
  colnames(re) <- c("e","Err.Abs","Err.Rel %")
  return(re)
}