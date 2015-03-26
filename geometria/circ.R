circ <- function(r) {
  p <- 2 * pi * r
  s <- pi * r^2
  # cat("Perímetro=",p,"\nSuperficie=",s,"\n")
  return(data.frame("Radio"=r,"Perímetro"=p,"Superficie"=s))
} 