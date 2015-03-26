# Ejemplo de análisis de la varianza
# Los datos entran en forma de data.frame y se transforman en una variable POR FACTORES
# Sirve para diferenciar si las medias de varias variables son iguales (H0) o alguna es distinta (H1)

# Se crea un data.frame con 3 variables aleatorias
datos <- data.frame("v1"=runif(15,-1,1),"v2"=rnorm(15),"v3"=rnorm(15,1.5,1))

# Se transforma en una variable y un factor
datos <- stack(datos)  # stack tb puede trabajar con una lista de longitudes diferentes

datos.aov <- aov(values~ind,data=datos)  # ANOVA. La variable explicativa tiene que ser un FACTOR!
summary(datos.aov)

readline("ANOVA. Pulsa ENTER para seguir")

# si sale que hay diferencias podemos averiguar cuales son mediante pairwise.t.test. Habrá diferencias cuando sel valor sea menor de 0.05

with(datos,pairwise.t.test(values,ind,p.adj="bonferroni"))

readline("Test de Bonferroni para ver cuales son distintas. Pulsa ENTER para seguir")

# Aunque es preferible el test de Tukey que se hacen con la salida de aov Se mira la p de la última columna
TukeyHSD(datos.aov)
a<-readline("Lo mismo de antes pero usando el test de Tukey que es más apropiado.\nPulsa ENTER para terminar")
