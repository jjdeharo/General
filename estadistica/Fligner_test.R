# Comparación de varianzas, más de dos muestras
# Test de Fligner

set.seed(10)
x1 <- rnorm(30,10,1)
x2 <- rnorm(30,10,1.1)
x3 <- rnorm(30,10,1.2)
 
x <- data.frame(x1=x1,x2=x2,x3=x3)

var <- fligner.test(x)
print(var)