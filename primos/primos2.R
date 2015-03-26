# Es tremendamente lento, parece que por la manipulación del vector de números primos p

primos2 <- function(x) {

	p <- vector(length=x)
	
	p[1] <- 1
	p[2] <- 2
	p[3] <- 3
	p[4] <- 5
	p[5] <- 7
	
	v <- c(11:x)
	
	v <- v[v%%2!=0]
	v <- v[v%%3!=0]
	v <- v[v%%5!=0]
	v <- v[v%%7!=0]

	i <- 5
	
	for(n in v) {
		  
		 
		 div <- p[2:i]  # Elimina los ceros y el uno inicial
		 
		 div<- div[1:which.max(div>=sqrt(n))]
		 
		 
		 
		if(!any(n%%div==0)) {
		  i <- i+1
		  p[i] <- n
			}  # Si el nº no es divisible por ningún otro primo, entonces es primo tb
		
		}
		
	return(p[1:i])
	
	}
