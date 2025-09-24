################# ****** Ejercicio data frame ****** #################

# 1. Crea el siguiente data frame dentro del objeto mis_datos e imprimelo.

#ID   Edad Genero	Autoestima    Ciudad
#1    35	 Mujer		26          Madrid
#2  	56	 Mujer		25	        Barcelona
#3  	24	 Hombre		25	        Segovia
#4  	21	 Hombre		26	        Segovia
#5   	21 	 Hombre 	25          Madrid
#6  	31	 Mujer	  26	        Barcelona
#7    39	 Hombre	  24	        Barcelona


ID <- c(1:7)
Edad <- c(35,56,24,21,21,31,39)
Genero <-c("Mujer","Mujer","Hombre","Hombre","Hombre", "Mujer","Hombre")
Autoestima <- c(26,25,25,26,25,26,24)
Ciudad <- c("Madrid", "Barcelona", "Segovia", "Segovia", "Madrid", "Barcelona","Barcelona")

mis_datos<-data.frame(ID, Edad, Genero, Autoestima, Ciudad)
mis_datos

# 2. Cambia el nombre de las variables de manera que todas las letras esten en minusculas
names(mis_datos) <- c("id", "edad", "genero", "autoestima", "ciudad")

# 3. Selecciona la columna autoestima

#Dos posibilidades:

mis_datos[, "autoestima"]

mis_datos$autoestima

# 4. Selecciona la cuarta observacion de la columna ciudad

#Dos posibilidades:
mis_datos[4,5]

mis_datos$ciudad[4]

# 5. Ordena las observaciones por puntuaciones de autoestima en orden decreciente y guardalo en un data frame nuevo llamado mis_datos_or
# Imprime el objeto mis_datos_or para comprobar que se ha hecho bien la ordenacion

ordenados <- order(mis_datos$autoestima, decreasing = TRUE)

mis_datos_or<-mis_datos[ordenados,]
mis_datos_or


# 6. Aplica la funcion summary() sobre el data frame mis_datos_or y commenta los resultados que observas
summary(mis_datos_or)

#Con la funci贸n summary, aparecen los estad铆sticos descriptivos de las variables continuas.

# 7. Aplica la funci贸n str() sobre el data frame mis_datos_or y comenta los resultados que observas
str(mis_datos_or)

#Con la funcion str(), aparece informaci贸n sobre qu茅 tipo de variables tenemos ("int" es sinonimo de numerico), asi como sus valores
# Esta funcion es muy util cuando trabajamos con una base de datos por primera vez, ya que nos da de un vistazo informacion
# sobre todas las variables

# 8. Calcula la media y la desviaci贸n t铆pica de la variable edad

mean(mis_datos_or$edad)
sd(mis_datos_or$edad)

# 9. A partir del data frame mis_datos_or, crea otros subconjunto de datos llamado barcelona que solo incluya
# a los participantes cuya ciudad es barcelona. Para ello, utiliza la funcion subset(). Imprime el 
# data.frame barcelona para comprobar que has seleccionado bien los datos.

barcelona<-subset(mis_datos_or, ciudad == "Barcelona")
barcelona


# 10. A partir del data frame mis_datos_or, crea otros subconjunto de datos llamado auto_baja que solo incluya
# a los participantes cuya puntuaci贸n de autoestima es igual a 25. Para ello, utiliza la funcion subset(). Imprime el 
# data.frame auto_baja para comprobar que has seleccionado bien los datos.

auto_baja<-subset(mis_datos_or, autoestima == 25)
auto_baja

# 11. A partir del data frame mis_datos_or, crea otros subconjunto de datos llamado jovenes que solo incluya
# a los participantes cuya edad sea menor de 30. Para ello, utiliza la funcion subset(). Imprime el 
# data.frame jovenes para comprobar que has seleccionado bien los datos.

jovenes<-subset(mis_datos_or, edad < 30)
jovenes

# 12. En el data frame mis_datos_or completo, crear una nueva variable que contenga las puntuaciones t韕icas (puntuaciones Z)
# de la variable edad. Imprime el data frame para comprobar que has creado la variable correctamente

mis_datos_or$Z_edad <- (mis_datos_or$edad - (mean(mis_datos_or$edad ))) / sd(mis_datos_or$edad)
mis_datos_or

# 13. Crea una variable nueva, llamada ratio, que contenta el resultado de dividir la edad de cada sujeto por su puntuaci髇 en autoestima
# Imprime el data frame para comprobar que has creado la variable correctamente
mis_datos_or$ratio<-mis_datos_or$edad/mis_datos_or$autoestima
mis_datos_or

