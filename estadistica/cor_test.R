# Test de correlación

x<- rnorm(100,10,2)
y <- 4 * x + rnorm(100,sd=15)

print(cor.test(x,y))