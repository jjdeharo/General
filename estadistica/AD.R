datos <- read.table("http://pastebin.com/raw.php?i=P76h35XP",dec=",",sep="\t",header=T)

# datos es un data frame con la primera variable conteniendo los grupos en forma de factor

#Selección de variables. Paso a paso
require("klaR")
datos.step <- stepclass(datos[,2:ncol(datos)],datos[,1],method="lda")
cat("Variables retenidas en el modelo\n")
print(datos.step$model)
cat("\nFórmula:\n")
print(datos.step$formula)

cat("\nAnálisis discriminante\n")
datos.lda <- lda(formula=datos.step$formula,data=datos,CV=T)
#plot(datos.lda)
cat("Tabla de confusion:\n")
datos.tc <- table(datos.lda$class,datos[,1])
print(datos.tc)