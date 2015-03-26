
trectangulo <- function(c1=0,c2=0,h=0) {
  
  if (h != 0 && (h < c1 || h < c2)) {
    cat("Error. La hipotenusa tiene que ser mayor que los catetos\n")
    return(invisible(NULL))
  }
  
  if (c1 != 0 && c2 != 0 && h == 0) {
    h <- sqrt(c1^2 + c2^2)  
  } else if (c1 == 0 && c2 != 0 && h != 0 ) {
    c1 <- sqrt(h^2 - c2^2)
  } else if (c1 != 0 && c2 == 0 && h != 0) {
    c2 <- sqrt(h^2 - c1^2)
  } else {
    cat("Error\n")
    return(invisible(NULL))
  }
  return(c(c1,c2,h))
}