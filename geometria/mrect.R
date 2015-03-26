# Medidas rectángulo. Se introducen dos lados  y devuelve una lista con el perímetro, superficie y diagonal

mrect <- function(l1=0, l2=0) {
  l1 <- sign(l1) * l1
  l2 <- sign(l2) * l2
  if (l1*l2 == 0 || length(l1) > 1 || length(l2) > 1) {
    cat("Error. Deben especificarse los lados del rectángulo con dos valores positivos\n")
    return(invisible(NULL))
  }
  Per <- 2 * l1 + 2 * l2
  Sup <- l1 * l2
  Diag <- sqrt (l1^2 + l2^2)
  Rect <- c (Per, Sup, Diag)
  names (Rect) <- c ( "Perímetro", "Superficie", "Diagonal")
  Res <- list ("Lados" = c(l1, l2), "Dimensiones" = Rect)
  return(Res)
}