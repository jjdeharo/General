# Cuenta las letras que hay en un texto. Usar junto con untexto() que lee archivos de texto


cuental <- function(v) { # v = texto que contiene las letras
	t <- proc.time()
	v <- noquote(strsplit(v,NULL)[[1]]) # Cada letra se asigna a un elemento del vector v
	v <- toupper(v)
	
	# Eliminación de acentos
	v[v=="Á"|v=="À"|v=="Ä"]<- "A" 
	v[v=="É"|v=="È"|v=="Ë"]<- "E"
	v[v=="Í"|v=="Ì"|v=="Ï"]<- "I"
	v[v=="Ó"|v=="Ò"|v=="Ö"]<- "O"
	v[v=="Ú"|v=="Ù"|v=="Ü"]<- "U"
		
		t2 <- proc.time()-t
		res <- table(v)
		fin <- list("Total de caracteres"=length(v),"Tiempo empleado"=t2[3],"Caracteres"=res)
		
		return(fin) # Devuelve una lista con los resultados
}

# a<- "Esto es un texto con varias letras ñññññ zzzzz"

# cuental(a)


