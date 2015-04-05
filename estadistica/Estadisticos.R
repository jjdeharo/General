
set.seed(10)
x <- rnorm(100,10,2)

cat("Media=",mean(x),"\nMediana=",median(x),"\nVarianza=",var(x),"\nDesviación típica=",sd(x),"\n\n")

print(quantile(x))

p <- c(0,1/3,2/3,1)
print(quantile(x,p=p))