# datos <- read.table("http://pastebin.com/raw.php?i=P76h35XP",dec=",",sep="\t",header=T)

data(iris)
datos <- iris
# datos es un data frame con la primera variable conteniendo los grupos en forma de factor

# AD sin selección de variables
require(MASS)
require(klaR) # para errormatrix
datos.lda <- lda(formula=Species~.,data=datos)
datos.lda.p <- predict(datos.lda,interval='confidence') # Asignación a cada clase, proporciona la probabilidad de pertenencia a cada una
plot(datos.lda,dimen=2) # Gráficos de las 2 primeras componentes del AD lineal
(datos.lda.mc <- errormatrix(datos$Species, datos.lda.p$class))  # Matriz de confusión
(round(errormatrix(datos$Species, datos.lda.p$class,r=T)*100)) # Matriz de confusion en %

#Selección de variables. Paso a paso
require("klaR")
datos.step <- stepclass(formula=Species~.,data=datos,method="lda")
cat("Variables retenidas en el modelo\n")
print(datos.step$model)
cat("\nFórmula:\n")
print(datos.step$formula)

# predicción
nuevo <- data.frame(Sepal.Length=5,Sepal.Width=3,Petal.Length=1.5,Petal.Width=0.3)
predicción <- predict(datos.lda,newdata=nuevo, interval='confidence')
cat("Asignado a: ")
print(prediccion$class)
