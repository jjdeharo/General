 datos <- read.table("http://pastebin.com/raw.php?i=P76h35XP",dec=",",sep="\t",header=T)


# datos es un data frame con la primera variable conteniendo los grupos en forma de factor

# AD sin selección de variables
datos.lda <- lda(formula=Sexo~.:.,data=datos)
plot(datos.lda)

#Selección de variables. Paso a paso
require("klaR")
datos.step <- stepclass(datos[-5],datos[5],method="lda")
cat("Variables retenidas en el modelo\n")
print(datos.step$model)
cat("\nFórmula:\n")
print(datos.step$formula)

cat("\nAnálisis discriminante\n")
datos.lda <- lda(formula=datos.step$formula,data=datos,CV=T)
plot(datos.lda)
cat("Clasificación actual:\n")
print(datos.lda$class)
cat("\nTabla de confusion:\n")
datos.tc <- table(datos.lda$class,datos[,1])
print(datos.tc)

clasificar <- function(datos.lda, df) {
  
}