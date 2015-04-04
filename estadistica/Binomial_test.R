# Test binomial exacto

# Al lanzar una moneda 20 veces se obtienen 14 caras y 6 cruces
# ¿Se ajusta a una probalidad del 50%?

print(binom.test(14,20))

# Al lanzar un dado 30 veces se obtienen 8 veces el 2
# ¿Se ajusta a una probabilidad de 1/6?

print(binom.test(8,30,p=1/6))

# Interpretación: si p-value > 0.05 lo observado no se desvía de lo esperado