# Datos aleatorios normales, distribución normal

# Ejemplo 1
# 10 números al azar,media 100 y desviación típica 2
print(rnorm(10,100,2))

# Ejemplo 2
# 1000 números enteros al azar entre 1 y 100 con la misma media y desviación de antes y hacemos un histograma con ellos
nums <- trunc(rnorm(1000,100,2))
hist(nums)