# Correlación entre pares de variables
set.seed(10)
df <- data.frame(a=runif(10),b=runif(10),c=runif(10),d=runif(10))
test <- cor(df)
print(test)