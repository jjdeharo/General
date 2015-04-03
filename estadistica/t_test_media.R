# Comparación una media con un valor teórico, t de student
# Prueba paramétrica

x <- rnorm(100,10)
Media <- 10

test <- t.test(x, mu=Media)

print(test)