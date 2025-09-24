########## **** Analisis de datos **** #########

# 1. Importa a base de datos European_Survey.csv. Guarda esta base en el objeto europ_sur

europ_sur<-read.table(file = "European_Survey.csv", sep="," , header=TRUE)

# 2.  Sustituye los valores 9999 de la variable escala escala_ideo por valores perdidos usando tydiverse, funcion mutate() y replace().

library(tidyverse)

europ_sur <- europ_sur %>% mutate(escala_ideo = replace(escala_ideo, which(escala_ideo==9999), NA))


# 3. Utilizando un histograma y un test estadistico, comprueba si las variables interes en la politica, ideologia politica, y minutos en internet se distribuyen normalmente.

hist(europ_sur$escala_ideo)
ks.test(europ_sur$escala_ideo, "pnorm")

hist(europ_sur$inter_min)
ks.test(europ_sur$inter_min, "pnorm")

hist(europ_sur$politica_int)
ks.test(europ_sur$politica_int, "pnorm")

#Ninguna de las variables se distribuye normalmente, aunque el histograma de escala ideologica si que parece un poco mas normal


# 4. En base a los resultados del ejercicio anterior, utiliza la técnica estadística adecuada
# que te permita ver la correlacion entre escala ideologica y minutos pasados en internet. Obten también un grafico de dispersion (scatterplot) para
# explorar la asociacion de esta variables

# Diagrama de dispersion:
plot(europ_sur$escala_ideo, europ_sur$inter_mi)

# Correlacion de Spearman:
cor.test(europ_sur$escala_ideo, europ_sur$inter_min, method =  "spearman")

#La correlación de Spearman es casi cero y en el diagrama de dispersion no se ve ninguna tendencia, por lo que no parece
#que estas variables esten asociadas.

# 5. Crea una nueva variable, llamada ideol_rec, en la que las personas con 
# un puntuacion igual o menor que 4 reciban la categoria "izquierda", las puntuaciones 5 y 6 reciban un dato perdido (NA),
#y las puntuaciones 7 o mayor que 7 reciban la categoría "derecha". Utiliza tidyverse, funcion mutate() y case_when()

europ_sur <- europ_sur %>% 
  mutate(ideol_rec = case_when(
  escala_ideo <=3 ~ "izquierda",
  escala_ideo==5 ~ NA_character_,
  escala_ideo==6~ NA_character_,
  escala_ideo >=7 ~ "derecha"))

# 6. Una vez se ha recodificado esta variable, realiza una prueba estadística (tanto paramétrica asumiento varianzas iguales como no paramétrica)
# para comprobar si existen diferencias en la variable interes en la politica entre las personas categorizadas como izquierda
# y las personas categorizadas como derecha

# Test parametro t de Student
t.test(europ_sur$politica_int~europ_sur$ideol_rec, var.equal=TRUE)

# Test no parametrico para diferencias de medias U de Mann Whiney
wilcox.test(europ_sur$politica_int~europ_sur$ideol_rec)

#No existen diferencias significativas en interes por la politica entre estos dos grupos en ninguno de los dos tests.

# 7. Ignorando los resultados de la prueba de normalidad realizada en el punto 3, realiza una regresion lineal multiple
# en la que intentes predecir el interes en la politica a partir de la frecuencia del uso de internet "inter_frec" y del genero
# Interpreta los resultados

regresion <-lm(europ_sur$politica_int ~ europ_sur$inter_frec + europ_sur$genero)
summary(regresion)

# Ambas variables predicen el interes en la politica. A mas frecuencia de uso de internet, menor interes en la politica.
# Para interpretar el resultado de genero, necesitamos saber cual es la categoria de referencia, que por defecto es el 
# valor más bajo (1 = hombre). Por lo tanto, según estos resultados,las mujeres se interesan de media más en la
#politica que los hombres (aunque esto solo aplica al valor más bajo de la variable inter_frec, que est tambien
# la categoria de referencia. Para que esta inferencia aplicase #a valores medios de la variable inter_frec, 
#habria que centrar la variable previamente )

#Se puede utilizar la funcion scale() para centrar la variable inter_frec

europ_sur$inter_frec_c<-scale(europ_sur$inter_frec, center = TRUE, scale = FALSE)

#Si ahora realizamos la regresion de nuevo utilizando esta variable centrada, obtenemos los siguientes resultados:

regresion_c <-lm(europ_sur$politica_int ~ europ_sur$inter_frec_c + europ_sur$genero)
summary(regresion_c)

#Los coeficientes apenas cambian: las mujeres se interesan de media más en la politica que los hombres para niveles medios
# de la variable "frecuencia de uso en internet"

# Se puede utilizar la siguiente funcion para cambiar la categoria de referencia y que sean las mujeres:

europ_sur$genero <- relevel(factor(europ_sur$genero), ref="2") 

# Si volvemos a ejecutar los resultados, vemos que el coeficiente es igual pero negativo:
regresion <-lm(europ_sur$politica_int ~ europ_sur$inter_frec + europ_sur$genero)
summary(regresion)

