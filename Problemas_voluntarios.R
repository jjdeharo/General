cat("\014")
A <- matrix(c(1,3,1,4),nc=2)
B <- matrix(c(2,1,1,1),nc=2)
C <- matrix(c(1,1,2,3),nc=2)
Ai <- solve(A)
X <- Ai %*% B %*% Ai 
print(X)
X2 <-  solve(A+B)%*%C
print(X2)
