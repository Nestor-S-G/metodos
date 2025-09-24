A <- matrix(c(5,4,8,1,6,1,6,8,9,2,1,9,0,4,6,8,1,7,2,1), nrow = 5, ncol = 4, byrow = 1)
print(A)

colnames(A) <- c('Lunes', 'Martes', 'Miércoles', 'Jueves')
rownames(A) <- c('A', 'B', 'C', 'D', 'E')
print(A)

A <- A+5
print(A)

B <- matrix(c(1,2,3,3,7,6,1,5,8,5,1,2,1,9,4,0,4,6,8,4), nrow = 4, ncol = 5, byrow = 1)
print(B)

C <- A%*%B
print(C)

C1 <- diag(C)
print(C1)

Z <- C[3,4]
print(Z)

G <- C[,2]
print(G)

colores <- c('azul', 'azul', 'rojo', 'azul', 'verde', 'amarillo', 'azul', 'verde', 'amarillo', 'negro', 'negro', 'negro', 'blanco',
             'verde', 'blanco', 'amarillo')

colores_factor <- factor(colores)
plot(colores_factor, main = 'Gráfico de barras')

# 13. Recodifica el nivel "amarillo" en "naranja". Para ello, imprime primero los nieveles del factor. Por último, imprime de nuevo
# el factor recodificado para comprobar que lo has hecho todo bien.


mi_lista <- list( 4, "lunes", c(4,6,7,8), c("verde", "amarillo"), 9, matrix(c(1,2,3,4,5,6), nrow=2, ncol=3))
print(mi_lista)
mi_lista[[3]]
mi_lista[[3]][2] # Selecciona el segundo número del tercer elemento de la lista


#18. Elimina el primer elemento de la lista. Imprime de nuevo mi_lista para comprobar que ya no está el primer elemento de la lista.

