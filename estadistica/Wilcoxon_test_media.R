# Comparación una media con un valor teórico, suma de rangos de Wilcoxon
# Prueba no paramétrica
set.seed(10)
x <- rnorm(100,10)
Media <- 10

test <- wilcox.test(x, mu=Media)

print(test)