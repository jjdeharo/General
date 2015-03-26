# ACP. Dibuja las 3 primeras componentes
# Se usan las variables 4 a 8
data(crabs)
c.acp<-prcomp(crabs[,4:8])
pairs(c.acp$x[,1:3],col=crabs$sp)

clusplot(crabs[,4:8],crabs$sp,shade=T,color=T,labels=4) # solo funciona con las dos primeras componentes

library(pvclust)
c.t <- as.data.frame(t(c.acp$x[,1:3])) # pvclust clasifica columnas, asi que hay que trasponer los datos
c.pv <- pvclust(c.t) # Calcula intervalos de confianza para las agrupaciones
plot(c.pv,cex=0.7)
