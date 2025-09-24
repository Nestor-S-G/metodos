# Ejercicio 1 -------------------------------------------------------------

altura <- c(160, 146, 178, 192, 189, 154, 167, 148, 160, 173, 175, 154, 155, 162, 172)

altura_sub <- altura[c(3, 5, 10)]
print(altura_sub)

nuevas_obs <- c(154, 162, 169)
altura <- append(altura, nuevas_obs)
print(altura)

obs_altas <- c(altura[altura>170])
print(obs_altas)


# Ejercicio 2 -------------------------------------------------------------

A = matrix(c(1, 2, 3, 4, 10, 5, 5, 4, 1, 7, 12, 2, 9, 4, 5), nrow = 5, ncol = 3, byrow = TRUE)
print(A)
B <- A%*%t(A)
print(B)
print(det(B))


# Ejercicio 3 -------------------------------------------------------------

matriz_corr <- matrix(c(1, .31, 0.23, 0.31, 1, 0.15, 0.23, 0.15, 1), nrow = 3, ncol = 3, byrow = TRUE)
print(matriz_corr)

colnames(matriz_corr) <- c("calidad de vida", "edad", "nivel de ingresos")
rownames(matriz_corr) <- c("calidad de vida", "edad", "nivel de ingresos")
print(matriz_corr)

vec_corr <- as.vector(matriz_corr)
print(vec_corr)

# Ejercicio 4 -------------------------------------------------------------

ID <- c(1:11)
Peso <- c(65, 76, 81, 56, 87, 98, 56, 78, 95, 57, 56)
Altura <- c(167, 173, 181, 154, 172, 192, 152, 178, 178, 159, 152)
Genero <- c('Hombre', 'Mujer', 'Hombre', 'Mujer', 'Mujer', 'Hombre', 'Mujer', 'Mujer', 'Hombre', 'Mujer', 'Mujer')
datos_demog <- data.frame(ID,
                          Peso,
                          Altura,
                          Genero
)

names(datos_demog) <- c('ID_2023', 'Peso_2023', 'Altura_2023', 'Genero_2023')
print(head(datos_demog))

library(tidyverse)
datos_demog <- datos_demog %>%
  mutate(clasificacion_2023 = case_when(
    Altura > 180 ~ 'altos',
    Altura >= 165 ~ 'medios',
    Altura < 165 ~ 'bajos' ))

datos_medio <- subset(datos_demog, clasificacion_2023 == 'medios')
print(datos_medio)

# Ejercicio 5 -------------------------------------------------------------

library(readxl)
datos_primera_parte <- read_xlsx("Datos_Primera_parte.xlsx")
datos_segunda_parte <- read.delim(file = "Datos_Segunda_parte.txt", sep = "\t", header = TRUE)
datos <- merge(datos_primera_parte, datos_segunda_parte, all.x =TRUE, all.y = TRUE)

table(datos$Enfermedad)
table(datos$Genero)
table(datos$Fumador)
summary(datos$Edad)

#'table' nos muestra las frecuencias de las variables cualitativas. Podemos observar que los grupos de las variables 'Enfermedad' y 'Fumador' están equilibrados,
#mientras que en la variable 'Genero' las mujeres casi doblan a los hombres. Con 'summary' podemos ver que el intervalo de edad va de los 12 a los 88 años,
#con una media de 43.36 y una mediana de 34 años, así como tres sujetos cuya edad se desconoce.

datos <- datos %>% 
  mutate(Enfermedad_REC = case_when(
    Enfermedad == 0 ~ 0,
    Enfermedad >= 1 ~ 1))

barplot(datos$Enfermedad_REC)

# Ejercicio 6 -------------------------------------------------------------

escala_bienestar<-read.table(file = "escala_bienestar.csv", sep="," , header=TRUE)
datos_completo <- merge(datos, escala_bienestar)

datos_completo <- datos_completo %>%
  mutate(bienestar_medio = rowMeans(x = select(.data =datos_completo, starts_with(match = "ite")), na.rm = TRUE))

hist(datos_completo$bienestar_medio, main = 'Variable bienestar psicológico medio', ylab = 'frecuencia absoluta')


# Ejercicio 7 -------------------------------------------------------------

plot(datos_completo$Edad, datos_completo$bienestar_medio, xlab = 'Edad', ylab = 'Bienestar medio')

cor.test(datos_completo$Edad, datos_completo$bienestar_medio, method =  "spearman")
#La correlación, aunque negativa, es prácticamente 0, por lo que no se puede hablar de relación entre Edad y Bienestar medio.
#El diagrama tampoco muestra una tendencia clara.

wilcox.test(datos_completo$bienestar_medio~datos_completo$Enfermedad_REC)
#El valor p es >> .05, por lo que no hay diferencias significativas en bienestar medio entre quienes padecen una enfermedad leve y una grave.

# Ejercicio 8 -------------------------------------------------------------

estandarizacion <- function(a){
  for (i in a){
    r <- (i - median(a))/IQR(a)
    print(r)
  }
}

estandarizacion(datos_completo$bienestar_medio)

# Ejercicio 9 -------------------------------------------------------------

x <- c(1:10)

for (i in x){
  if (i < 6){
    print(i*10)
  } else {
  print(i/10)}
}
