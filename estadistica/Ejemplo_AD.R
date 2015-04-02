# AD Ejemplo

f <- factor(c(rep("A", 20), rep("B", 20), rep("C", 20), rep("D", 20), rep("E", 20)))
x1 <- rnorm(100, 170, 10)
x2 <- rnorm(100, 20, 5)
x3 <- x1 + x2 + rnorm(100)
x4 <- runif(100)
x5 <- x3 + x4 + runif(100)



datos <- data.frame(f,x1,x2,x3,x4,x5)
library(car)
scatterplotMatrix(datos[2:5]) # Gráfico de las variables por pares necesita la libretía car
library(MASS)
library(klaR)  # Necesaria para stepclass y errormatrix
library(mda) # necesaria para fda

# AD lineal
datos.lda <- lda(f~., datos) # AD con todas las variables explicando f
datos.lda.p <- predict(datos.lda,interval='confidence')
(datos.lda.mc <- errormatrix(datos$f, datos.lda.p$class))  # Matriz de confusión
datos.lda.mc2 <- table(datos$f, datos.lda.p$class) # Cálculo de la matriz de confusión directo (sin usar la funcińo errormatrix)
cat("Elementos correctamente clasificados por lda: ", sum(diag(datos.lda.mc2)), " (",round(100 * sum(diag(datos.lda.mc2)) / sum(datos.lda.mc2)), "%)\n", sep="")


# AD cuadrático
datos.qda <- qda(f~., datos)  # AD cuadrático
datos.qda.p <- predict(datos.qda)
datos.qda.mc <- errormatrix(datos$f, datos.qda.p$class)  # Matriz de confusión
print("Matriz de confusión:")
print(datos.qda.mc)

datos.qda.mc2 <- table(datos$f, datos.qda.p$class) # Cálculo de la matriz de confusión directo (sin usar la funcińo errormatrix)
cat("Elementos correctamente clasificados por qda: ",sum(diag(datos.qda.mc2))," (",round(100*sum(diag(datos.qda.mc2))/sum(datos.qda.mc2)),"%)\n",sep="")
 

# AD paso a paso
(datos.step.lda <- stepclass(datos[-1],datos[[1]],method="lda"))

(datos.step.qda <- stepclass(datos[-1],datos[[1]],method="qda"))

# Gráficos de las 3 primeras componentes del AD lineal
plot(datos.lda,dimen=3)

partimat(f~., datos)
discrim<-fda(f~., datos)
plot(discrim)

# pvs es como stepclass... investigar