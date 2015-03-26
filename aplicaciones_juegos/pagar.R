# Devuelve los billetes y monedas que hay que dar para pagar una cantidad determinada

pagar <- function(x) {
  monedas <- c(500, 200, 100,50, 20 ,10, 5, 2, 1, 0.5, 0.2, 0.1, 0.05, 0.02, 0.01)
  cam <- vector(length=length(monedas))
  names(cam) <- c("500€","200€","100€","50€","20€","10€","5€","2€","1€","50 céntimos","20 céntimos","10 céntimos","5 céntimos","2 céntimos","1 céntimo")
  x <- round(x,2)
  n <- 0
  
  for(i in monedas) {
    n <- n + 1
    if (x / i + 0.00001 >= 1) {
      
      cam[n] <- trunc(x / i + 0.00001) # Para subsanar problemas de redondeo se suma 0.001
    
      x <- x %% i + 0.00001
     # print(x)
      
    }
  }
  resultado <- as.matrix(cam[cam != 0])
  colnames(resultado) <- "Cantidad"
  return(resultado)
}