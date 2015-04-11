# Comparación de medias, ANOVA
# Prueba paramétrica
datos <-read.table(file="http://pastebin.com/raw.php?i=UHacpEu2",header=T)

#  mediante factores
x <- datos$x # Se extrae la variable x de la tabla
f <- datos$f # Factores
test <- aov(x~f)

print(summary(test))

