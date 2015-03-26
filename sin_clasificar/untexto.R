# Lee un archivo de texto y lo pone en el vector texto como un único elemento

untexto <- function(x) {

	a <- readLines(x)
	longitud <- length(a)

	texto<-paste0(a[1:longitud],collapse="")
	
		
	return(texto)
}		
