# Comparación de medias, test de Tukey
# Prueba paramétrica

x1 <- rnorm(100,10)
x2 <- rnorm(100,10.5)
x3 <- rnorm(100,10)

x <- c(x1,x2,x3) # Unión de las 3 variables en una
f <- c(rep("x1",100),rep("x2",100),rep("x3",100)) # Factores


test <- TukeyHSD(aov(x~f))

print(test)