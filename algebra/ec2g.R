# Ecuación de 2º grado

ec2g<-function(a,b,c) {

	disc<- b^2-4*a*c
	
	if (disc<0) {
		cat("Ecuación sin solución real\n")
		return(NA) }
	x<-c(0,0)
	x[1] <- (-b-sqrt(disc))/(2*a)
	x[2] <- (-b+sqrt(disc))/(2*a)
	cat("Solución a la ecuación de 2º grado:\n")
	return(x)
	}
	
