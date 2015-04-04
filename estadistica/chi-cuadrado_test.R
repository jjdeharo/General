# Test de chi-cuadrado

# Al responder 30 personas una encuesta con respuestas: mucho, normal, poco; se obtienen los resultados: 15, 5, 10, respectivamente
# ¿Estos resultados son significativamente distintos de unas respuestas equiprobables, es decir, 10, 10, 10?

respuestas <- c(15,5,10)
probabilidad <- rep(1/3,3)

test <- chisq.test(respuestas, p=probabilidad)
print(test)