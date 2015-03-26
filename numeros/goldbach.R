# Conjetura de Goldbach
# Todo número par mayor que 2 puede escribirse como suma de dos números primos.

# Se llama a la función goldbach() con dos parámetros: x es el número que se quiere descomponer en la suma y s=1 si se quieren imprimir resultados por pantalla (si x<=2000) y s=0 si no se quiere. Por omisión se imprimen resultados

primos <- function(i,x=-1) {
	
	if(x==-1) {x <- i; i<- 1}
	x <- abs(x)
	p<-vector(length=x)
	p[1:5]<-c(1,2,3,5,7)
	v <- c(1:x)
	
	
	v <-v[v%%2!=0]
	v <-v[v%%3!=0]
	v <-v[v%%5!=0]
	v <-v[v%%7!=0]
	cont <- 5
	if(x<7) {cont <- 4; p[1:4]<-c(1,2,3,5)}
	if(x<5) {cont <- 3; p[1:3]<-c(1,2,3)}
	if(x<3) {cont <- 2; p[1:2]<-c(1,2)}
	if(x<2) {cont <- 1; p[1]<-1}
	
	
	for(n in v) {
		
		div <-c(2:sqrt(n))
		
		if(all(n%%div!=0)) {cont <- cont +1; p[cont]<-n}
		
		}
		p<-p[1:cont]
	return(p[p>=i])
	
	}
	
	
	
	goldbach <- function(x,s=1) { # s=1 imprime resultados (para x<=2000, s=0 no imprime resultados
		x<-abs(x)
		if(x%%2!=0) {
			cat("Conjetura de Goldbach: Todo número par mayor que 2 puede escribirse como suma de dos números primos.\n")
			return(NA)
			}
			
		p<- primos(x-1) # calcula los números primos
		
		p1 <-vector() # Contendrá el primer número primo
		p2 <- vector() # Contendrá el segundo número primo
		
		primo2 <- which.max(p>x/2) # Determina que números primos superan la mitad de x para eliminarlos y evitar los duplicados
		
		for(n in p[1:primo2]) {
		sm <- n+p # Suma el número primo n al vector de todos los números primos
		smc <- which(sm==x) # Devuelve la posición del vector de números primos cuya suma de números primos es x
		if(length(smc)>0) { # Si hay alguna suma que ha dado x...
			
			p1 <- c(p1,n)
			p2 <- c(p2,p[smc])
			
			if(s==1 && x<2001) cat(x,"= ",n,"+",p[smc],"\n")
			
			}
		}
		
		g <- cbind(p1,p2) # Crea la matriz que contendrá los números primos que suman x, uno en cada columna
		
		if(s==1) cat("\nSe ha encontrado",nrow(g),"combinaciones\n\n")
		
		return(g)
	}
		
		
