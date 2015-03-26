# Ejemplo_boostrap.R
# Ejemplo de bootstrap

# Se define una función donde de aplique la función para que la función boot pueda acceder a los elementos individuales 
# 'datos' es el vector conteniendo los datos

library(boot)

# Ejemplo para la media: mean()
data <- rnorm(200,70,5)
media <-function(data,indices) {return(mean(data[indices]))}
(z<-boot(data,media,R=999))

plot(z)

# Intervalos de confianza para la media
boot.ci(z,conf=0.95,type="basic")


# Ejemplo para correlación entre dos variables
x <- rnorm(100,70,2)
y <- 3 * x + rnorm(100)
data <- matrix(c(x,y),nc=2)
correlacion <- function(data,indice) {
  x <- data[indice,1]
  y <- data[indice,2]
  return(cor(x,y))
}
(z<-boot(data,correlacion,R=9999))

# Intervalo de confianza del 95%
boot.ci(z,conf=0.95,type="basic")
plot(z)
