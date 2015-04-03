# preparación de los datos
x <- read.table("http://pastebin.com/raw.php?i=xeV7h24k",header=T,sep=",")
rownames(x) <- x[,1]
x <- x[-1]

x.pca <- prcomp(x)

plot(x.pca$x,pch="")
text(x.pca$x,labels=rownames(x))
abline(h = 0, v = 0, col = "gray60")

cat("\nValores propios\n")
print(x.pca$sdev)
cat("\nValores propios en % \n")
print(round(100*(x.pca$sdev)/sum(x.pca$sdev),1))
cat("\nValores propios acumulados en % \n")
print(cumsum(round(100*(x.pca$sdev)/sum(x.pca$sdev),1)))