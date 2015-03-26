# bootMedia Calcula SE e intervalos de confianza para la media
library(boot)
bootMedia <- function(x,p=0.95,Replicas=9999) { # Sólo es necesario pasar el vector con los datos que se quiere calcular la media
  media <-function(data,indices) {return(mean(data[indices]))}
  x.boot<-boot(x,media,R=Replicas)
  x.boot.ic <- boot.ci(x.boot,conf=p,type="basic")
  
  x.media <- mean(x)
  x.n <- length(x)
  x.inf <- x.boot.ic$basic[1,4]
  x.sup <- x.boot.ic$basic[1,5]
  x.int <- (x.sup-x.inf)/2
  x.se <- sd(x.boot$t)
  x.bias <- mean(x.boot$t) - x.boot$t0
  
  cat("BOOTSRAP basado en ",Replicas," réplicas\nIntervalo de confianza = ",p*100,"%\nMedia = ",x.media," +- ",x.int,"\n(",x.inf,", ",x.sup,")\nSE = ",x.se,"\nBias = ",x.bias,sep="")
  

  
  bm <- list(boot=x.boot,bootci=x.boot.ic)
  return(invisible(bm))
}