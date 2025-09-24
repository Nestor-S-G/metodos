####################### *** Ejercicios vectores *** #################

# 1. Una persona tiene tres redes sociales: instagram, facebook y tiktok. Esta persona tiene 1256, 165478, y 34354 seguidores respectivante
# en cada una de estas plataformas. Crea un vector llamado plataforma con los nombres de las tres plataformas, y otro que se llame
# seguidores con los numeros de seguidores

plataforma <- c('instagram', 'facebook', 'tiktok')
seguidores <- c(1256, 165478, 34354)

# 2. Con la funcion class(), explora el tipo de vector y comenta los resultados

class(plataforma)
class(seguidores)

# 3. Calcula la media de seguidores que tiene esta persona utilizando la funcion apropiada para ello

mean(seguidores)

# 4. De la variable seguidores, calcula tambien la mediana y la desviacion tipica

median(seguidores)
sd(seguidores)

# 5. Crea de nuevo el vector seguidores, esta vez anadiendo un valor perdido al final (imaginemos que hay una cuarta plataforma,
# llamada Bereal, de la cual no se sabe cuantos seguidores tiene esta persona). 

seguidores <- c(1256, 165478, 34354, NA)


# 6. Calcula de nuevo la media, ?que ocurre?

mean(seguidores)

#  7. Ve a la pagina 18 del manual "Analisis de datos en lenguaje R" y mira como se soluciona. Con esta solucion, intenta calcular
# la media de nuevo

mean(seguidores, na.rm = 1)

# 8. Esta persona ha aumentado en 100 el n?mero de seguidores en cada una de las plataformas. Crea otro vector, llamado
# seguidores_actualizado, donde se vea reflejado este aumento de seguidores en cada una de las plataformas (No realizar este c?lculo a mano)

seguidores_actualizado <- seguidores + 100

# 9. Imprime los resultados del vector seguidores_actualizado

print(seguidores_actualizado)


# 10. A partir del vector seguidores_actualizado, crea una nueva variable llamada tiktok que contenga el n?mero de seguidores que esta
# persona tiene en Tik Tok. Para ello, guarda en esta nueva variable la tercera observaci?n de la variable seguidores_actualizado
# (que es la observaci?n que corresponde al numero de seguidores in Tik Tok).
# Imprime los resultados

tiktok <- seguidores_actualizado[3]
print(tiktok)

# 11. Crea un vector llamado numeracion que contenga la serie de numeros que va del 1 al 90
# (No hay que escribir todos los numeros del 1 al 90, hay que utilizar los dos puntos, : , para crear un rango de valores)

numeración <- c(1:90)

# 12. Imprime el vector numeracion para comprobar que efectivamente se ha creado un vector que contiene los numeros del 1 al 90
 
print(numeración)

# 13. Del vector numeracion, selecciona e imprime la observacion numero 63

print(numeración[63])

# 14. Del vector numeracion, selecciona e imprime el rango de observaciones entre la observacion 14 y la 37

print(numeración[14:37])

# 15. Del vector numeracion, seleccione e imprime las observaciones 6 y 87.

print(numeración[c(6, 87)])

# 16. Guarda este rango de valores (desde la observacion 14 a la 37) en una nueva variable que se llame subrango

subrango <- numeración[14:37]

# 17. Imprime el vector subrango

print(subrango)

# 18. Crea un vector llamado serie en el que se reproducan los numeros 1,2,3, tres veces. Es decir, el resultado tiene que ser:
# 1,2,3,1,2,3,1,2,3. No hacerlo manualmente, utilizar la funcion rep() . Para saber como se utiliza esta funcion, buscar en Google
# o en Help. 

serie<-rep(1:3, 3)

# 19. Imprime el vector serie para comprobar que es correcto

print(serie)

# 20. Crea un vector llamado serie2 con los mismos valores (1, 2, y 3), pero en el que cada valor se repita 3 veces.  Es decir, el resultado tiene que ser
# 1,1,1,2,2,2,3,3,3 . Nuevamente, utiliza la funcion rep(), y busca que comandos te permiten obtener dicho resultado.

serie2 <- rep(1:3, 1, each = 3)

# 21. Imprime la segunda observacion de este vector

print(serie2)

# 22. Crea un nuevo vector, llamado serie3, en el que elimines la cuarta observacion del vector serie2. Imprime el vector serie3 para
# comprobar que efectivamente esa observacion ha sido eliminada

serie3 <- serie2[-4]
serie3
