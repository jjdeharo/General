



cuenta_palabras <- function(x="") { # x: Archivo que contiene el texto

  if (x == "") x <- file.choose()
	t1 <- proc.time()
	v <- readLines(x)
	longitud <- length(v)

	v<-paste0(v[1:longitud],collapse=" ") #Une el texto en un sólo elemento
	
v <- gsub("[[:punct:]]","", v)
v <- gsub("[[:digit:]]","", v)	
	v <- strsplit(v," ") # Se separa en palabras
	
	palabras <- sort(table(v)) # Tabla de palabras ordenadas por frecuencia
	p_i <- palabras/sum(palabras) # Frecuencia de cada palabra
	H <- sum(-p_i*log2(p_i)) # Indice de Shannon
	Hmax <- log2(length(palabras))
	I <- sum(-log2(p_i))
	Hrel <- 100*H/Hmax
	t2 <- proc.time()-t1
	npalabras<-sum(palabras)
	resultado <- list("Tiempo"=t2[3],"N de palabras"=sum(palabras), "Palabras"=palabras,"Entropía H"=H,"Hmáx"=Hmax,"Hrel"=Hrel,"P"=p_i)
	cat("\nTiempo empleado = ",t2[3],"s\nNº de palabras = ",npalabras,"\nH = ",H," bits/palabra","\nHmáx = ",Hmax," bits/palabra","\nH/Hmáx = ",Hrel,"%","\nBits de información total = ",I,"\n")
	return(invisible(resultado))
	
	}
	
