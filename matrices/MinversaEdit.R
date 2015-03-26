# Permite entrar los elementos de una matriz nxn y calcula su inversa

MinversaEdit<- function(n=3){
  M<-matrix(0,n,n)
  M<-edit(M)
  colnames(M) <- NULL
  if (det(M) == 0) {
    cat("Determinante 0, la matriz no tiene inveresa\n")
    return(M)
  }
  Minv<-solve(M)
  resultado <- list("M"=M,"Minv"=Minv)
  return(resultado)
}