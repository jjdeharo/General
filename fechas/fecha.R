#  Escribe la fecha actual en castellano. Devuelve una lista con el día de la semana, el día del mes, el mes y el año

fecha <- function() {

  fecha.actual <- date()
  semana <- matrix(c("Mon","Tue","Wed","Thu","Fri","Sat","Sun","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado","Domingo"),ncol=2)
  
  dia.semana <- semana[which(semana==strsplit(fecha.actual," ")[[1]][1]),2]  # Localiza el día de la semana en inglés y muestra la segunda columna (castellano)
  
  
  meses <- matrix(c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec", "Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"),ncol=2)
  mes <- meses[which(meses==strsplit(fecha.actual," ")[[1]][2]),2]
  dia.mes <- strsplit(fecha.actual," ")[[1]][3]
  hora <- strsplit(fecha.actual," ")[[1]][4]
  año <- strsplit(fecha.actual," ")[[1]][5]
  
  cat(dia.semana,", ",dia.mes," de ",mes," de ",año,"\n",sep="")
  return(invisible(list("Dia.Semana"=dia.semana,"Dia.Mes"=dia.mes,"Mes"=mes,"Año"=año)))
  
}
