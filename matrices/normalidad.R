# Ejecuta 6 tests de normalidad y dibuja gráfico

normalidad <- function(x,plot=T) {
  if (plot == T) {
    hist(x)
    readline("<ENTER> Para graico siguiente")
    qqnorm(x)
    qqline(x)
  }
  require(nortest)
  if (length(x) > 5000) return(list(lillie.test(x),ad.test(x),cvm.test(x),pearson.test(x)))
  return(list(shapiro.test(x),lillie.test(x),ad.test(x),cvm.test(x),pearson.test(x),sf.test(x)))
}