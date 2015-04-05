# Comparación de dos medias, suma de rangos de Wilcoxon
# Prueba no paramétrica
set.seed(10)
x1 <- rnorm(100,10)
x2 <- rnorm(100,10.5)

test <- wilcox.test(x1,x2)

print(test)