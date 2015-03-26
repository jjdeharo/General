# Ajuste de modelos lineales. Uso de lm y gls


y <- 1:50
x1 <- y+runif(50)
x2 <- y^2 +runif(50)
x3 <- x1 + x2 + runif(50)
datos <- data.frame("Y"=y,"X1"=x1,"X2"=x2,"X3"=x3)

y.ajuste <- lm(Y ~ .,datos) # Es lo miso que: y.ajuste <- lm(Y ~ X1 + X2 + X3,datos) Es decir, todas las variables del data.frame menos Y

# Resultados
summary(y.ajuste)


# Eliminamos X2 y X3 que no son signficativamente distintas de 0

y.ajuste2 <- lm(Y ~ X1,datos)

# Resultados
summary(y.ajuste2)



# Comprobamos la diferencia entre los dos modelos

anova(y.ajuste,y.ajuste2)



# Intervalos de confianza

confint(y.ajuste)

# Intervalos de confianza con lmIC() (función creada por mi)

source("lmIC.R")
lmIC(y.ajuste) # lmIC(Objeto.lm, significación=95, decimales=3)



## Uso de gsl es igual que lm pero se puede utilizar intervals() que hace lo mismo que lmIC()

y.ajuste <- gls(Y ~ .,datos)
summary(y.ajuste)
library(nlme)
intervals(y.ajuste)


# Ajustes no lineales

g<-lm(Y ~ X1+I(sqrt(X2)) + X3,datos) 
summary(g)



# Predicción

pre <- data.frame("X1"=5,"X2"=25,"X3"=30)  # Datos de los que se quiere la predicción

predict(g,pre,interval="confidence",level=0.99) # Si se omite los datos a predecir se aplica sobre los datos iniciales. level por defecto 0.95. 
 
