# Halla los números primos entre i y x o de 1 a x si se sólo se indica un argumento

primos <- function(i,x=-1) {
	if(length(i)>1 || length(x)>1) return("Esta función sólo admite escalares")
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
	ii <- 0
	pb <- txtProgressBar(1,length(v), style=3)
	for(n in v) {
		
		div <-c(2:sqrt(n))
		
		if(all(n%%div!=0)) {cont <- cont +1; p[cont]<-n}
    ii <- ii + 1
		setTxtProgressBar(pb,ii)
		}
		p<-p[1:cont]
	return(p[p>=i])
	
	}
	

