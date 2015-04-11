# Convierte un data frame en una lista con 2 factores (que son las filas y columnas)

undf <- function(df) {
  v <- c(t(df))
  col <- matrix(nc=2,nr=length(v))
  for(i in 1:length(nrow(df))) {
    col[,1] <- rep(colnames(df),length(ncol(df)))
    col[,2] <- rep(rownames(df[i],ncol(df)))
  }
  colnames(col) <- c("F1","F2")
  datos <- data.frame(v,col)
    return(datos)
}
