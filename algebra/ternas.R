# Ternas pitagóricas: son 3 enteros positivos que cumplen X² + Y² = Z²
# El 2º argumento es para imprimir el número de ternas encontradas (salida=1) o no 

ternas <- function(x=10,salida=1) {
	x <- trunc(abs(x)) # Convierte x en un entero positivo
	v <- c(1:x) 
	v2 <- v*v
	
	nfermat <- NULL
	
	for (n in v[1:length(v)]) {
	v2<-v2[which.max(v2>=n*n):length(v2)] # Elimina de v2 todos los valores inferiores a n² para evitar duplicados (p.ej: (3,4,5) y (4,3,5))
		
		sc <- n*n + v2 
		r <- sqrt(sc)
		
		d <- r-trunc(r) # Servirá para comprobar si la raíz ha dado exacta 
		a<-which(d==0) # Localiza los valores de raíz exacta
		
		if(length(a)>0) { # Si se ha encontrado alguna terna...
			b<-rep(n,length(a)) # Como cada n puede tener más de un nº que sea terna, se repite n para rellenar el vector con las ternas
			f0<-cbind(b,sqrt(v2[a])) # Se crea una matriz con las ternas encontradas para esta n
			
			nfermat<-rbind(nfermat,f0) # Se añade la matriz anterior a la matriz ya existente
			
		
		}
	}
	res <- cbind(nfermat,sqrt(nfermat[,1]^2+nfermat[,2]^2)) # Se calcula Z y se añade la terna ya completa a una matriz
	colnames(res) <- c("X","Y","Z")
	if(salida==1) cat("Se han encontrado",nrow(res),"ternas. X² + Y² = Z²\n")
	return(res)
}
