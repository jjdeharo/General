# Eleva una matrix a la x

expm<- function(m,x) {
	x<- trunc(x)
	if(ncol(m)!=nrow(m)) { cat("La matriz tiene que ser cuadrada\n");return(NA) }
	if(x<0) { cat("Ignorando el signo negativo de la potencia\n"); x<-abs(x) }
	
	if(x<2) { cat("\nLa potencia debe ser 2 como mínimo\n"); return(NA) }
	p <- m%*%m # Hace la primera potencia al cuadrado
	if(x==2) return(p)
	for(n in 3:x) {
		p <- m%*%p
	}
	
	return(p)
}
	

