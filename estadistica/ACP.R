data(iris)
iris.pca <- prcomp(iris[-5])
colores <- as.character(iris$Specie)
colores[colores=="setosa"] <- "red"
colores[colores=="virginica"] <- "black"
colores[colores=="versicolor"] <- "blue"
pairs(iris.pca$x,col=colores)

cat("\nValores propios\n")
print(iris.pca$sdev)
cat("\nValores propios en % \n")
print(round(100*(iris.pca$sdev)/sum(iris.pca$sdev),1))
cat("\nValores propios acumulados en % \n")
print(cumsum(round(100*(iris.pca$sdev)/sum(iris.pca$sdev),1)))

# Grafico PC1-2 variables
plot(iris.pca$rotation,pch='')
abline(h = 0, v = 0, col = "gray60")
text(iris.pca$rotation,labels=rownames(iris.pca$rotation))

# Grafico PC1-3 variables
plot(iris.pca$rotation[,1],iris.pca$rotation[,3],pch='.')
abline(h = 0, v = 0, col = "gray60")
text(iris.pca$rotation[,1],iris.pca$rotation[,3],labels=rownames(iris.pca$rotation))
