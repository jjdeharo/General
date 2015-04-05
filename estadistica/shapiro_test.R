# Test de normalidad de Shapiro-Wilk
set.seed(10)
x <- rnorm(100)
x.test <- shapiro.test(x)
print(x.test)

x2 <- runif(100)
x2.test <- shapiro.test(x2)
print(x2.test)