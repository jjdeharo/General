
moda <- function(x) {
  t <- as.numeric(table(x))
  if(sum(t) == length(t)) return(NULL)
  
  as.numeric(names(sort(-table(x)))[1])
  
}