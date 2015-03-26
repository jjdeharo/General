circulo <- function(r) {
  p <- 2 * pi * r
  s <- pi * r^2
  circ <- c(r,p,s)
  names(circ) <- c("Radio","Perímetro","Superficie")
  return(circ)
}