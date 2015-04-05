# Comparación de dos medias, t de student
# Prueba paramétrica
set.seed(10)
x1 <- rnorm(100,10)
x2 <- rnorm(100,10.5)

test <- t.test(x1,x2)

print(test)