# Calcula los días pasados entre dos fechas. Si se omite la segunda se usa la actual

Dias.Pasados <- function(inicio=c(25 ,10, 1963), fin=-1) {  # Se pasan dos vectores con las fechas iniciales y finales conteniendo: día, mes y año
  meses <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)

if (sum(fin == -1) == 1) {  # Si no se especifica el segundo argumento se usa la fecha actual

  fecha.actual <- date()
  
  meses0 <- matrix(c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec", 1:12),ncol=2)
  mes <- as.numeric(meses0[which(meses0==strsplit(fecha.actual," ")[[1]][2]),2])
  dia.mes <- as.numeric(strsplit(fecha.actual," ")[[1]][3])
  
  año <- as.numeric(strsplit(fecha.actual," ")[[1]][5])
  fin <- c(dia.mes,mes,año)
 }


  # Comprobación de que los datos son correctos
  if (length(inicio) != 3 || length(fin) != 3 || class(inicio) != "numeric" || class(fin) != "numeric") {
    cat("Dias.Pasados(inicio,fin). inicio y fin deben ser un vector de 3 elementos numéricos, cada uno conteniendo el dia, mes y año. Si se omite el fin se usará la fecha actual.\n")
    return(invisible(NA))
  }


if (fin[3] < inicio[3]) { # Si el año final es inferior al inicial, invertir
  intermedio <- fin
  fin <- inicio
  inicio <- intermedio
  }
  
  
  
  
  lista.años <- 0
  dias.pasados.años <- 0
  años.diferencia <- fin[3] - inicio[3]
  
  if (años.diferencia > 1) {
    lista.años <- c( (inicio[3] + 1): (fin[3] - 1))
    
    # Días de años normales y bisiestos
    dias.pasados.años <- 365 * length(lista.años[lista.años %% 4 != 0]) + 
      366 * length(lista.años[lista.años %% 4 == 0])  
   
    # Cálculo de días al principio (hasta fin de año)
    dias.pasados.final.mes <- meses[inicio[2]] - inicio[1]
    dias.pasados.meses.inicio <- sum(meses[ (inicio[2] + 1):12])
    
    if (fin[3] %% 4 == 0 && inicio[2] <= 2) # Si el año es bisiesto y está contenido febrero se añade un día
      dias.pasados.meses.inicio <- dias.pasados.meses.inicio + 1 
  
    dias.pasados.final.año <- dias.pasados.final.mes + dias.pasados.meses.inicio # Total días al principio
    
    
    #Cálculo de días al final (desde principio de año)
    dias.pasados.principio.año <- sum(meses[1: (fin[2] - 1)]) + fin[1]
    
    if (fin[3] %% 4 == 0 && fin[2] >= 2) # Si el año es bisiesto y está contenido febrero se añade un día
      dias.pasados.principio.año <- dias.pasados.principio.año + 1


    # Total  
    dias.totales <- dias.pasados.final.año + dias.pasados.principio.año + dias.pasados.años
    
  } else {
  
    if (años.diferencia == 1) { # Si no hay ningún año completo entre fechas
    
      # Cálculo de días al principio (hasta fin de año)
      dias.pasados.final.mes <- meses[inicio[2]] - inicio[1]
      dias.pasados.meses.inicio <- sum(meses[ (inicio[2] + 1):12])
    
      if (fin[3] %% 4 == 0 && inicio[2] <= 2) # Si el año es bisiesto y está contenido febrero se añade un día
        dias.pasados.meses.inicio <- dias.pasados.meses.inicio + 1 
  
      dias.pasados.final.año <- dias.pasados.final.mes + dias.pasados.meses.inicio # Total días al principio
    
    
      #Cálculo de días al final (desde principio de año)
      dias.pasados.principio.año <- sum(meses[1: (fin[2] - 1)]) + fin[1]  # Total dias al final
    
      if (fin[3] %% 4 == 0 && fin[2] >= 2) # Si el año es bisiesto y está contenido febrero se añade un día
        dias.pasados.principio.año <- dias.pasados.principio.año + 1


      # Total  
      dias.totales <- dias.pasados.final.año + dias.pasados.principio.año 
      
      } else {
        if (años.diferencia == 0 && (fin[2] - inicio[2]) >= 2) { # Si fechas en el mismo año pero mes distinto
        dias.totales <- sum[meses[(inicio[2] + 1) : fin[2]]] + meses[inicio[2]] - inicio[1] + fin[1]
        } else {
          if (años.diferencia == 0 && (fin[2] - inicio[2] == 1)) { # Si no hay meses enteros
            dias.totales <- meses[inicio[2]] - inicio[1] + fin[1]
          } else {
            if (años.diferencia == 0 && inicio[2] == fin[2]) {  # Se es el mismo año y mismo mes
              dias.totales <- fin[1] - inicio[1]
              }
            }
          }
        }
      
      }
    
    cat("Han pasado",fin[3]-inicio[3],"años,",
  return(dias.totales)
 }

 
  
