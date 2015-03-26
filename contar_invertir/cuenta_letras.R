# Programa para contar las letras de un texto guardado en el disco
# Utiliza las funciones cuental() y untexto()



# Cuenta las letras que hay en un texto. Usar junto con untexto() que lee archivos de texto
cuental <- function(v) { # v = texto que contiene las letras
	t <- proc.time()
	v <- noquote(strsplit(v,NULL)[[1]]) # Cada letra se asigna a un elemento del vector v
	v <- toupper(v)
	
	# Eliminación de acentos y comillas
	v[v=="Á"|v=="À"|v=="Ä"]<- "A" 
	v[v=="É"|v=="È"|v=="Ë"]<- "E"
	v[v=="Í"|v=="Ì"|v=="Ï"]<- "I"
	v[v=="Ó"|v=="Ò"|v=="Ö"]<- "O"
	v[v=="Ú"|v=="Ù"|v=="Ü"]<- "U"
	v[v=="«"|v=="»"]<- "\""
		
		t2 <- proc.time()-t
		res <- table(v)
		fin <- list("Total de caracteres"=length(v),"Tiempo empleado"=t2[3],"Caracteres"=res)
		
		return(fin) # Devuelve una lista con los resultados
}



# Lee un archivo de texto y lo pone en el vector texto como un único elemento

untexto <- function(x) {

	a <- readLines(x)
	longitud <- length(a)

	texto<-paste0(a[1:longitud],collapse="") #Une el texto en un sólo elemento
	
		
	return(texto)
}		




# Función que permite al usuario interactuar
cuenta_letras <- function(x) cuental(untexto(x))


system("clear") #Borra la pantalla
cat("\nEscribe cuenta_letras(\"nombre archivo\") para empezar\n\n")




