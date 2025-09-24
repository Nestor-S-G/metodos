##### ***** Funciones   **** ######

# 1. Crea una funci?n llamada multiplo que, al aplicarla a un n?mero, lo multiplique por dos

multiplo <- function(a){
  r <- a*2
  return(r)
}

#2. Crea un vector llamado edad con los siguientes valores, que representan la edad de 16 personas
#21,15,66,27,56,13,12,13,12,67,34,2,3,21,12,15

edad <- c(21,15,66,27,56,13,12,13,12,67,34,2,3,21,12,15)

#3. Crea una funci?n (llamado media) que te devuelva la media de un vector. Una vez generes la funcion, aplicala al vector edad. Comprueba que el valor que te devuelve
#es el valor correcto.

media <- function(a){
  r <- for (i in a){
    r <- sum(a)/length(a)
    return(r)
  }
}
media(edad)
mean(edad)

# 4. Crea el siguiente vector con la altura de 10 personas, y aplicale la funcion "media" que acabas de crear (para as? calcular la altura media).
# 161, 164, 149, 187, NA, 159, 172, 198, 183, 167

altura <- c(161, 164, 149, 187, NA, 159, 172, 198, 183, 167)
media(altura)

# 5. Seguramente el paso anterior no haya producido ning?n resultado. Cambia la funcion "media" para que, aunque haya datos perdidos, 
#siga calculando la media correctamente. Aplica esta funcion corregida de nuevo a la variable altura.

media_co <- function(a){
  r <- for (i in a){
    r <- sum(a, na.rm = 1)/length(a)
    return(r)
  }
}
media_co(altura)

# 6. Crea una funci?n en la que, al meter un dataframe, te devuelva el nombre de las columnas del data frame y un resumen (summary()) de todas sus variables.
# Para resolver este ejercicio, tienes que crear un data frame inventado. Porcura que este data frame que te inventes tenga al menos 3 columnas
# con algunas columnas num?ricas y otras columnas con characters.

datafun <- function(a){
  print(names(a))
  print(summary(a))
}

ticker <- c('MVO', 'SCYX', 'SJT', 'CRT', 'TER', 'PRO', 'GQG', 'PLS', 'BVXP', 'RMV')
ROC <- c(152.91, 461.61, 713.09, 270.49, 69.18, 250.03, 63.41, 46.76, 53.46, 197.86)
PBratio <- c(24.35, .87, 118.5, 40.35, 1.98, 46.1, 12.36, 3.46, 18.78, 64.18)

stocks <- data.frame(ticker,
                     ROC,
                     PBratio)
names(stocks) <- c('Ticker', 'ROIC', 'P/B Ratio')

datafun(stocks)

