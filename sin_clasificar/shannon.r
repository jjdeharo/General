# Entropía de Shannon
# Se pasa un vector de frecuencias absolutas

shannon <- function(f) {

	n <- sum(f)
	m <- length(f) # Nº elementos
	p <- f/n # Frecuencias relativas
	i <- -log2(p) # Información que proporciona cada elemento
	I <- sum(i) # Información total 
	H <-sum(-p*log2(p)) # Entropía de Shannon (entropía media)
	Hmax <- log2(m) # Entropía máxima
	Hr <- 100*H/Hmax # Entropía relativa respecto al máximo posible

	cat("\nI=",I,"\nH=",H,"\nHmáx=",Hmax,"\nHr=",Hr,"%\n")
	
	resultado <- list("I"=I,"H"=H,"Hmax"=Hmax,"Hr"=Hr)
	
	return(resultado)
	
}
