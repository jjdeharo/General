fibonacci <- function(x=10) {
  d <- options()$digits
	options(digits=22)
	a <- vector(length=x)
	a[1]=1
	a[2]=1
	for (n in 3:x) {
		a[n]=a[n-1]+a[n-2] 
	}
  options(digits=d)
	return(a)
		
	}
	
		
