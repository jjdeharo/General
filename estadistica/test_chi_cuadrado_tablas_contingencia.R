# Test chi-cuadrado para tablas de contingencia


#         Diestro  Zurdo	TOTAL
# Hombre	43      	9   	52
# Mujer  	44      	5   	49
# TOTAL 	87      	14  	100

sexo <- c(rep("H",52), rep("M",49))
dz <- c(rep("d",43),rep("z",9),rep("d",44),rep("z",5))
tabla <- table(sexo,dz)
print(tabla)

test <- chisq.test(tabla)
print(test)

# Por lo tanto no hay diferencias entre hombres y mujeres
# en cuanto a ser diestro o zurdo