# Datos aleatorios equiprobables, distribución uniforme

# Ejemplo 1
# 10 números al azar entre 1 y 100

set.seed(10)
print(runif(10,1,100))

# Ejemplo 2
# 1000 números enteros al azar entre 1 y 10 y hacemos un histograma con ellos
nums <- trunc(runif(1000,1,101))
hist(nums)