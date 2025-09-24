mi_funcion <- function(a, b){
  r1 <- a + b
  r2 <- min(c(a, b))
  resul <- list(suma=r1, mini=r2)
  return(resul)
}

mi_funcion(a = 1, b = 4)
