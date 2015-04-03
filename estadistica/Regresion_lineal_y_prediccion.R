# Regresión lineal

set.seed(10)

x1 <- rnorm(30,10)
x2 <- rnorm(30,20)
x3 <- rnorm(30,30)
e <- rnorm(30)

y <- x1 + 2 * x2 + 3 * x3 + e

x <- data.frame(x1=x1,x2=x2,x3=x3)

y.lm <- lm(y ~ ., data=x) # Se añanden las 3 variables 

print(summary(y.lm))

# Predecir valores a partir del modelo de la regresión
nuevo <- data.frame(x1=29,x2=21,x3=33)
prediccion <- predict(y.lm,newdata=nuevo,interval="confidence")
print(prediccion)