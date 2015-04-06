# Test exacto de Fisher para tablas de contingencia


#         Diestro  Zurdo	TOTAL
# Hombre	43      	9   	52
# Mujer  	44      	4   	48
# TOTAL 	87      	13  	100

sexo <- c(rep("H",52), rep("M",48))
dz <- c(rep("d",43),rep("z",9),rep("d",44),rep("z",4))
tabla <- table(sexo,dz)
print(tabla)

test <- fisher.test(tabla)
print(test)
cat("Por lo tanto no hay diferencias entre hombres y mujeres en cuanto a ser diestro o zurdo")