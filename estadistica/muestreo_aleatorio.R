# Tomar muestras aleatorias

# Cargamos datos del caudal del Nilo (contiene datos de 1871 hasta 1970)

data(Nile)

# Ejemplo 1
# Tomamos una muestra aleatoria de tamaño 10 sin reemplazamiento (es decir, cada dato sólo puede salir una vez)
set.seed(10)
muestra <- sample(Nile,10,replace=F)
print(muestra)

# Ejemplo 2
# En el siguiente ejemplo tomaremos 30 muestras de tamaño 10 con reemplazamiento (es decir, cada dato se puede repetir de un muestreo a otro) y haremos un gráfico con las medias

medias <- vector() # Define el vector que contendrá las medias
for (i in 1:30) {
  muestra <- sample(Nile,10,replace=T)
  medias[i] <- mean(muestra) # Calcula la media y la guarda
}

hist(medias)

# Comprobamos si las medias siguen una distribución normal
normal <- shapiro.test(medias)
print(normal)