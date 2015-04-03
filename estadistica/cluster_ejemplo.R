# preparación de los datos
x <- read.table("http://pastebin.com/raw.php?i=xeV7h24k",header=T,sep=",")
rownames(x) <- x[,1]
x <- x[-1]

x.dist <- dist(x)  # Distancia entre los datos
v.dist <- dist(t(x))  # Distancia entre las variables


x.hclust <- hclust(x.dist)
v.hclust <- hclust(v.dist)
plot(x.hclust,cex=1,hang = -1)
plot(v.hclust,hang = -1)


