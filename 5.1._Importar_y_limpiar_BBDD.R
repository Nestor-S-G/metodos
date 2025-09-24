########## **** Importar y limpiar bases de datos **** #########

# 1. Importa a base de datos European_Survey.csv. Guarda esta base en el objeto europ_sur

europ_sur<-read.table(file = "European_Survey.csv", sep="," , header=TRUE)

# 2. Aplica la funcion str() a la base de datos y comenta los resultados

str(europ_sur)

# 3. Aplica la funcion summary() a la base de datos y estudia los resultados

summary(europ_sur)

# 4. Con la funcion table(), halla cuantas observaciones hay por cada pais, y cuuntos hombres y mujeres hay en la base de datos.
# Intenta llevar a cabo los mismos analisis utilizando tidyverse, la funcion summarise

table(europ_sur$pais)
table(europ_sur$genero)

#con tidyverse

library(tidyverse)
europ_sur %>% group_by(pais) %>% summarise(conteo=n())
europ_sur %>% group_by(genero) %>% summarise(conteo=n())


# 5. Obten la media de la variable inter_min, utilizando tanto la funcion mean() como la funcion summarise de tidyverse

mean(europ_sur$inter_min, na.rm = 1)

europ_sur %>% summarise(mean(inter_min, na.rm = 1))

# 6. Sustituye los valores 9999 de la variable escala escala_ideo por valores perdidos usando tydiverse, funcion mutate() y replace().
#Vuelve a pedir summary() de la base de datos para comprobar que se han recodificado estos valores

europ_sur <- europ_sur %>% mutate(escala_ideo = replace(escala_ideo, which(escala_ideo==9999), NA))
summary(europ_sur)

# 7. Recodifica en una nueva variable: crea una nueva variable, llamada ideol_rec, en la que las personas con 
# un puntuacion igual o menor que 4 reciban la categoria "izquierda", 5 y 6 "centro", y 7 o mayor que 7 "derecha". Utiliza
# tidyverse, funcion mutate() y case_when()

europ_sur <- europ_sur %>% 
  mutate(ideol_rec = case_when(
    escala_ideo <= 4 ~ "Izmierda",
    escala_ideo == 5 ~ 'Centro',
    escala_ideo == 6 ~ 'Centro',
    escala_ideo >= 7 ~ 'Derecha'))

table(europ_sur$ideol_rec)
# 8. Selecciona aquellos participantes que pasan menos de 180 minutos en internet. Utiliza la funcion filter() de tidyverse 

europ_sur %>% filter(inter_min < 180)


# 9. Guarda este subconjunto de datos en una base nueva, llamada frec_baja. Con la funcion summary(), comprueba que la observaci?n maxima
#de inter_min en esta nueva base de datos es menor de 180

frec_baja <- europ_sur %>% filter(inter_min < 180)
summary(frec_baja$inter_min)

# 10. Obten la media de la variable inter_min por cada genero (hombre/mujer) en la base de datos completa (europ_sur)

europ_sur %>% group_by(genero) %>% summarise(mean(inter_min, na.rm = 1))

# 11. Guarda en una base de datos nueva llamada ideo_pais la media de cada pa?s en las variables politica_int y escala_ideo

ideo_pais <- europ_sur %>% group_by(pais) %>% summarise(media_poli_int = mean(politica_int, na.rm = 1), media_escal_ideo = mean(escala_ideo, na.rm = 1))
ideo_pais

# 12. Genera un histograma con la media de la escala ideologica de cada pais (a partir de la base de datos ideo_pais)

hist(ideo_pais$media_escal_ideo)

# 13. En la nueva base, ideo_pais, genera una nueva columna que incluya la division (o ratio) entre la media de escala ideologica y la media de interes en la politica
#Imprime la base de datos para comprobar que has creado la nueva variable correctamente.

ideo_pais$ratio = ideo_pais$media_escal_ideo / ideo_pais$media_poli_int
ideo_pais

#Otra forma

ideo_pais <- ideo_pais %>% mutate(ratio = media_escal_ideo/media_poli_int)
ideo_pais
