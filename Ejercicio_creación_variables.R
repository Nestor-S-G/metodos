#####################    ***   Operaciones aritméticas, creación de variables ****    ############################

# 1. Utilizando R como calculadora, cálcula cuál sería tu salario neto a final de año si tu salario bruto fuera 25498 euros y
# tuvieras que pagar un 14% de impuestos (no hace falta que crees ninguna variable todavía, simplemente utiliza R como una calculadora)

25498*.86

# 2. Calcula la raíz cuadrada de 96 utilizando la función sqrt(). Calcula el resultado de 25 elevado al cubo

sqrt(96)
25^3

# 3. Crea una variable, llamada salario_neto, en la que guardes el resultado del primer ejercio.

salario_neto <- 25498*.86

# 4. Imagina que te han subido el sueldo en 265 euros. Guarda en la misma variable (salario_neto), el valor del anterior salario neto
# más esta subida

salario_neto <- salario_neto +265

# 5. Crea una nueva variable, llamada sueldo_mensual, en el que guardes el sueldo que recibirías cada mes si tuvieras 12 pagas

sueldo_mensual <- salario_neto/12

# 6. Imprime el valor de la variable sueldo_mensual

print(sueldo_mensual)

# 7. Crea una variable llamada hipoteca_mensual que venga 560

hipoteca_mensual <- 560

# 8. Calcula el dinero que te quedaría mensualmente una vez has deducido el gasto de la hipoteca

sueldo_mensual - hipoteca_mensual

# 9. Crea una variable llamada remanente donde se guarde este valor. Para ello utiliza las variables creadas, no metas este valor a mano.

remanente <- sueldo_mensual - hipoteca_mensual

# 10. Crea una variable llamada nombre que contenga tu nombre

nombre <- 'Néstor'

# 11. Imprime el contenido de la variable nombre

print(nombre)

# 12. Intenta sumar un valor numérico a la variable nombre. ¿Qué ocurre?

nombre + 36

# 13. Utilizando la función class(), imprime la clase de la variable sueldo_mensual y de la variable nombre. Comenta los resultados

class(sueldo_mensual)
class(nombre)
