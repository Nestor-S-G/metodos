* Encoding: UTF-8.

***** EJERCICIO 2

**** Transformación archivo Datos_personales (no importando las dos variables sin prácticamente datos: DES_NO_ESP y COD_NO_ESP, aunque en la siguiente sintaxis sí aparece -líneas 33 y 34-)

PRESERVE.
 SET DECIMAL COMMA.

GET DATA  /TYPE=TXT
  /FILE="C:\Users\Raquel Rodriguez\Documents\RAQUEL\DOCENCIA\UNED\POSGRADO\Métodos "+
    "Informáticos\2024\Tarea 2 MMCCS o 3 MIP\Datos_personales.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS=" ;"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  COD_NIE AUTO
  COD_MOD AUTO
  DES_COLECTIVO AUTO
  COD_COLECTIVO AUTO
  DES_FAM_INCUAL AUTO
  COD_FAM_INCUAL AUTO
  DES_PROV_CEN AUTO
  COD_PROV_CEN AUTO
  SEXO AUTO
  FEC_NAC AUTO
  EDAD AUTO
  NAC_ESP AUTO
  DES_NO_ESP 9X
  COD_NO_ESP 3X
  NIV_FORM_P AUTO
  NIV_FORM_M AUTO
  COD_EST_INIC AUTO
  DES_EST_INIC AUTO
  COD_EST_FIN_1 AUTO
  DES_EST_FIN_1 AUTO
  COD_EST_FIN_2 AUTO
  DES_EST_FIN_2 AUTO
  COD_EST_FIN_3 AUTO
  DES_EST_FIN_3 AUTO
  COD_EST_FIN_4 AUTO
  DES_EST_FIN_4 AUTO
  COD_MAX_NIV_ED AUTO
  DES_MAX_NIV_ED AUTO
  FAC AUTO
  /MAP.
RESTORE.

CACHE.
EXECUTE.
DATASET NAME Datos_personales WINDOW=FRONT.

SAVE OUTFILE='C:\Users\Raquel Rodriguez\Documents\RAQUEL\DOCENCIA\UNED\POSGRADO\Métodos Informáticos\2024\Tarea 2 MMCCS o 3 MIP\Soluciones\BD_Datos_personales.sav'
  /COMPRESSED.



**** Transformación archivo FIP  (no importando las 14 variables sin datos (o sin prácticamente datos): DES_NO_ESP, COD_NO_ESP, DES_PAIS_ACT, COD_PAIS_ACT, etc. 
    
PRESERVE.
 SET DECIMAL COMMA.

GET DATA  /TYPE=TXT
  /FILE="C:\Users\Raquel Rodriguez\Documents\RAQUEL\DOCENCIA\UNED\POSGRADO\Métodos "+
    "Informáticos\2024\Tarea 2 MMCCS o 3 MIP\FIP.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS=" ;"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  COD_NIE AUTO
  COD_MOD AUTO
  DES_PROV_FIP AUTO
  COD_PROV_FIP AUTO
  DES_FAM_INCUAL AUTO
  COD_FAM_INCUAL AUTO
  ES_COLECTIVO AUTO
  ES_FIP AUTO
  MES_FIN AUTO
  ANNO_FIN AUTO
  TIT_ANTERIOR AUTO
  DES_PROV_EST A26
  COD_PROV_EST AUTO
  MISMA_RESIDENCIA AUTO
  DES_PROV_ACT 10X
  COD_PROV_ACT 2X
  DES_PAIS_ACT 1X
  COD_PAIS_ACT 1X
  PRACTICAS AUTO
  PRIM_EXP_LAB AUTO
  FAC_ACC_EMPL AUTO
  SAT_PRACT AUTO
  RNC_EST_B1 AUTO
  MES_RNC_B1 AUTO
  ANNO_RNC_B1 AUTO
  EST_0102 AUTO
  MES_AB_0102 1X
  ANNO_AB_0102 1X
  CURSO_0102 AUTO
  DES_ESP_0102 AUTO
  COD_ESP_0102 AUTO
  CENTRO_0102 AUTO
  FIN_0102 AUTO
  EST_0203 AUTO
  MES_AB_0203 AUTO
  ANNO_AB_0203 AUTO
  CURSO_0203 AUTO
  DES_ESP_0203 AUTO
  COD_ESP_0203 AUTO
  CMB_EST_0203 AUTO
  R_CMB_EST_0203 1X
  CMB_CENTRO_0203 AUTO
  CENTRO_0203 AUTO
  FIN_0203 AUTO
  EST_0304 AUTO
  MES_AB_0304 AUTO
  ANNO_AB_0304 AUTO
  CURSO_0304 AUTO
  DES_ESP_0304 A50
  COD_ESP_0304 AUTO
  CMB_EST_0304 AUTO
  R_CMB_EST_0304 AUTO
  CMB_CENTRO_0304 AUTO
  CENTRO_0304 AUTO
  FIN_0304 AUTO
  EST_0405 AUTO
  MES_AB_0405 AUTO
  ANNO_AB_0405 AUTO
  CURSO_0405 AUTO
  DES_ESP_0405 A50
  COD_ESP_0405 AUTO
  CMB_EST_0405 AUTO
  R_CMB_EST_0405 AUTO
  CMB_CENTRO_0405 AUTO
  CENTRO_0405 AUTO
  FIN_0405 AUTO
  R_AB_EST AUTO
  RNC_EST AUTO
  R_RNC_EST 1X
  MES_RNC 1X
  ANNO_RNC 1X
  MES_RNC_2 1X
  ANNO_RNC_2 1X
  MES_RNC_3 1X
  ANNO_RNC_3 1X
  PL_FPI AUTO
  PL_EGB AUTO
  PL_ESO AUTO
  PA_CFGM AUTO
  PA_CFGS AUTO
  PA_UNI AUTO
  TIT_FPI AUTO
  TIT_EGB AUTO
  TIT_ESO AUTO
  /MAP.
RESTORE.

CACHE.
EXECUTE.
DATASET NAME FIP WINDOW=FRONT.

SAVE OUTFILE='C:\Users\Raquel Rodriguez\Documents\RAQUEL\DOCENCIA\UNED\POSGRADO\Métodos Informáticos\2024\Tarea 2 MMCCS o 3 MIP\Soluciones\BD_FIP.sav'
  /COMPRESSED.


**** Transformación archivo Empleo_actualidad (no importando las 2 variables sin datos (DES_PAIS y COD_PAIS), 
    
PRESERVE.
 SET DECIMAL COMMA.

GET DATA  /TYPE=TXT
  /FILE="C:\Users\Raquel Rodriguez\Documents\RAQUEL\DOCENCIA\UNED\POSGRADO\Métodos "+
    "Informáticos\2024\Tarea 2 MMCCS o 3 MIP\Empleo_actualidad.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS=" ;"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  COD_NIE AUTO
  COD_MOD AUTO
  NUM_CUEST AUTO
  DES_EMPRESA AUTO
  MES_INIC AUTO
  ANNO_INIC AUTO
  ES_ETT AUTO
  DIST_ESTABL AUTO
  DES_ACTIVIDAD AUTO
  COD_ACTIVIDAD AUTO
  DES_PROV AUTO
  COD_PROV AUTO
  DES_PAIS 1X
  COD_PAIS 1X
  CMB_MUNICIPIO AUTO
  NUM_PERSONAS AUTO
  DES_OCUPACION AUTO
  COD_OCUPACION AUTO
  SIT_PROFESIONAL AUTO
  TIPO_CONT_ACT AUTO
  MISMO_CONT AUTO
  TIPO_CONT_INIC AUTO
  TPO_MED_CONT AUTO
  TPO_MED_REAL AUTO
  INGRESOS_MES_ACT AUTO
  MISMO_SAL AUTO
  INGRESOS_MES_INIC AUTO
  TIT_ACADEMICA AUTO
  TRAB_ADEC_FORM AUTO
  ENC_EMPLEO AUTO
  ESTUDIOS AUTO
  EXPERIENCIA AUTO
  CONTACTOS AUTO
  INICIATIVA AUTO
  RIESGOS AUTO
  SUERTE AUTO
  /MAP.
RESTORE.

CACHE.
EXECUTE.
DATASET NAME Empleo_actualidad WINDOW=FRONT.

SAVE OUTFILE='C:\Users\Raquel Rodriguez\Documents\RAQUEL\DOCENCIA\UNED\POSGRADO\Métodos Informáticos\2024\Tarea 2 MMCCS o 3 MIP\Soluciones\BD_Empleo_actualidad.sav'
  /COMPRESSED.



**** Transformación archivo Itinerario (no se ha eliminando ninguna variable porque todas tienen datos)
    
PRESERVE.
 SET DECIMAL COMMA.

GET DATA  /TYPE=TXT
  /FILE="C:\Users\Raquel Rodriguez\Documents\RAQUEL\DOCENCIA\UNED\POSGRADO\Métodos "+
    "Informáticos\2024\Tarea 2 MMCCS o 3 MIP\Itinerario.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS=" ;"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  COD_NIE AUTO
  COD_MOD AUTO
  PRIORIDAD AUTO
  PRIORIDAD_4 AUTO
  PRIOR_ALCANZADA AUTO
  ESP_TITULO AUTO
  COD_TITULO AUTO
  PROBL_FAMILIARES AUTO
  PROBL_ECONOMICOS AUTO
  MERCADO_DIFICIL AUTO
  ESTUDIOS_DIFICILES AUTO
  SIN_METAS AUTO
  SIN_ESFUERZO AUTO
  OTRA AUTO
  SITUACION_ACT AUTO
  FUTURO AUTO
  /MAP.
RESTORE.

CACHE.
EXECUTE.
DATASET NAME Itinerario WINDOW=FRONT.


SAVE OUTFILE='C:\Users\Raquel Rodriguez\Documents\RAQUEL\DOCENCIA\UNED\POSGRADO\Métodos Informáticos\2024\Tarea 2 MMCCS o 3 MIP\Soluciones\BD_Itinerario.sav'
  /COMPRESSED.



****EJERCICIO 3
    
*****Fusionamos FIP + Datos_Personales empleando SOLO como variable clave COD_NIE (el resto de variables comunes las quitamos de variables clave), yaque de otra forma tendremos problemas+
para que la fusión nor respete todos los datos, ya que si no son "comunmente compartidas todas las variables clave", no se cargarán los valores o registros, haciendo que podemos tener variables necesarias +
en blanco.

DATASET ACTIVATE BD_FIP.
SORT CASES BY COD_NIE.
DATASET ACTIVATE BD_Datos_personales.
SORT CASES BY COD_NIE.
DATASET ACTIVATE BD_FIP.
MATCH FILES /FILE=*
  /FILE='BD_Datos_personales'
  /RENAME (COD_FAM_INCUAL COD_MOD DES_FAM_INCUAL = d0 d1 d2) 
  /BY COD_NIE
  /DROP= d0 d1 d2.
EXECUTE.


****Luego, al resultado le unimos Empleo_actualidad mediante ÚNICAMENTE la variable común COD_NIE 
 
SORT CASES BY COD_NIE.
DATASET ACTIVATE BD_Empleo_actualidad.
SORT CASES BY COD_NIE.
DATASET ACTIVATE BD_FIP.
MATCH FILES /FILE=*
  /FILE='BD_Empleo_actualidad'
  /RENAME (COD_MOD = d0) 
  /BY COD_NIE
  /DROP= d0.
EXECUTE.


****Después, al resultado le unimos mediante ÚNICAMENTE la variable común COD_NIE la base de datos de Itinerario
    
SORT CASES BY COD_NIE.
DATASET ACTIVATE BD_Itinerario.
SORT CASES BY COD_NIE.
DATASET ACTIVATE BD_FIP.
MATCH FILES /FILE=*
  /FILE='BD_Itinerario'
  /RENAME (COD_MOD = d0) 
  /BY COD_NIE
  /DROP= d0.
EXECUTE.
    

***Una vez tenemos todas las fusiones, debemos filtrar los casos que terminaron sus estudios en el año 2001 (ANNO_FIN=2001) creando un nuevo archivo al que llamaremos BD_TOTAL.    

DATASET COPY  BD_TOTAL.
DATASET ACTIVATE  BD_TOTAL.
FILTER OFF.
USE ALL.
SELECT IF (ANNO_FIN = 2001).
EXECUTE.
DATASET ACTIVATE  BD_FIP.


***Por último, guardaremos ese archivo

SAVE OUTFILE='C:\Users\Raquel Rodriguez\Documents\RAQUEL\DOCENCIA\UNED\POSGRADO\Métodos Informáticos\2024\Tarea 2 MMCCS o 3 MIP\Soluciones\BD_TOTAL.sav'
  /COMPRESSED.




****EJERCICIO 4
    
***Ponemos las etiquetas a las variables

VARIABLE LABELS MES_FIN '¿En qué mes del año 2001 finalizó dicho curso?'
		/TIT_ANTERIOR '¿Qué titulación tenía al acceder al curso de Formación Ocupacional de los Servicios Públicos de Empleo?'
	/COD_PROV_EST '¿Cuál era su municipio de residencia (PROVINCIA) al finalizar este curso?'
	/PRACTICAS '¿Realizó Prácticas no laborales en empresas?'
		/PRIM_EXP_LAB  '¿Fue su primera experiencia laboral?'
  /FAC_ACC_EMPL  '¿Le facilitó acceder a un empleo?'
  /SAT_PRACT  '¿En qué medida está satisfecho con el aprendizaje desarrollado estas prácticas?'
  /RNC_EST_B1  'Desde el año 2001 ¿Se matriculó en algún estudio del Sistema Educativo?'.
  
***Identificamos los valores de cada variable

VALUE LABELS MES_FIN
    1 'enero' 
    2 'febrero'
    3 'marzo'
    4 'abril'
    5 'mayo'
    6 'junio'
    7 'julio'
    8 'agosto'
    9 'septiembre'
   10 'octubre'
   11 'noviembre'
   12 'diciembre'.


VALUE LABELS TIT_ANTERIOR
    1 'Estudios o escolarización básica' 
    2 'Titulaciones Básicas: EGB, ESO'
    3 'Bachillerato'
    4 'Formación Profesional de Grado Medio'
    5 'Formación Profesional de Grado Superior'
    6 'Univesitarios'.


VALUE LABELS COD_PROV_EST
				1	'ALAVA'
				2	'ALBACETE'
				3	'ALICANTE'
				4	'ALMERIA'
				5	'AVILA'
				6	'BADAJOZ'
				7	'ISLAS BALEARES'
				8	'BARCELONA'
				9	'BURGOS'
			10	'CÁCERES'
			11	'CADIZ'
			12	'CASTELLON'
			13	'CIUDAD REAL'
			14	'CORDOBA'
			15	'A CORUÑA'
			16	'CUENCA'
			17	'GIRONA'
			18	'GRANADA'
			19	'GUADALAJARA'
			20	'GUIPUZCOA'
			21	'HUELVA'
			22	'HUESCA'
			23	'JAEN'
			24	'LEON'
			25	'LLEIDA'
			26	'LA RIOJA'
			27	'LUGO'
			28	'MADRID'
			29	'MALÁGA'
			30	'MURCIA'
			31	'NAVARRA'
			32	'OURENSE'
			33	'ASTURIAS'
			34	'PALENCIA'
			35	'CANARIAS'
			36	'PONTEVEDRA'
			37	'SALAMANCA'
			38	'SANTA CRUZ DE TENERIFE'
			39	'CANTABRIA'
			40	'SEGOVIA'
			41	'SEVILLA'
			42	'SORIA'
			43	'TARRAGONA'
			44	'TERUEL'
			45	'TOLEDO'
			46	'VALENCIA'
			47	'VALLADOLID'
			48	'VIZCAYA'
			49	'ZAMORA'
			50	'ZARAGOZA'
			51	'CEUTA'
			52	'MELILLA'.


VALUE LABELS PRACTICAS PRIM_EXP_LAB  FAC_ACC_EMPL  RNC_EST_B1
    1 'SI' 
    6 'NO'.
    
VALUE LABELS SAT_PRACT
    1 'Nada satisfecho' 
    2 'Poco satisfecho'
    3 'Satisfecho'
    4 'Bastante satisfecho'
    5 'Muy satisfecho'.


***Identificamos el tipo de escala de medida de estas variables

VARIABLE LEVEL MES_FIN TIT_ANTERIOR COD_PROV_EST PRACTICAS PRIM_EXP_LAB FAC_ACC_EMPL RNC_EST_B1 (NOMINAL) 
 SAT_PRACT (ORDINAL).






***EJERCICIO 5 


***Hacemos un análisis descriptivo de las variables Sexo y Nivel formativo alcanzado por su padre y por su madre

FREQUENCIES VARIABLES=SEXO NIV_FORM_P NIV_FORM_M
  /BARCHART FREQ
  /ORDER=ANALYSIS.


***Estudiamos la normalidad de la variable Edad gráficamente y hallamos los percentiles 12, 45 y 65.

FREQUENCIES VARIABLES=EDAD
		/FORMAT=NOTABLE
  /PERCENTILES=12 45 65 
		/GROUPED = EDAD
	 /STATISTICS = MEAN STDDEV VARIANCE MIN MAX KURTOSIS SKEWNESS
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.


***Estudiamos la normalidad de la variable Edad de forma numérica mediante la Prueba de Kolmogorov-Smirnov para una muestra

NPAR TESTS
  /K-S(NORMAL)=EDAD
  /STATISTICS QUARTILES
  /MISSING ANALYSIS.





****EJERCICIO 6

***Tenemos que recodificar la variable provincia en función de si es Norte o Sur.
***Por ejemplo, las provincias del NORTE y sus códigos podrían ser:
ALAVA	1
AVILA	5
BARCELONA 8
BURGOS	9
A CORUÑA	15
GIRONA	17
GUADALAJARA 19
GUIPUZCOA 20
HUESCA	22
LEON	24
LLEIDA	25
LA RIOJA	26
LUGO	27
MADRID	28
NAVARRA	31
OURENSE	32
ASTURIAS	33
PALENCIA	34
PONTEVEDRA 36
SALAMANCA 37
CANTABRIA 39
SEGOVIA	40
SORIA	42
TARRAGONA 43
TERUEL	44
VALLADOLID 47
VIZCAYA	48
ZAMORA	49
ZARAGOZA	50

***Las provincias del SUR y su respectivo código serían:
ALBACETE	2
ALICANTE	3
ALMERIA	4
BADAJOZ	6
ISLAS BALEARES 7
CÁCERES	10
CADIZ	11
CASTELLON 12
CIUDAD REAL 13
CORDOBA	14
CUENCA	16
GRANADA	18
HUELVA	21
JAEN	23
MALÁGA	29
MURCIA	30
CANARIAS	35
SANTA CRUZ DE TENERIFE 38
SEVILLA	41
TOLEDO	45
VALENCIA	46
CEUTA	51
MELILLA	52


***Por tanto, recodificamos cada una de estas valores de la variable provincia así:

RECODE COD_PROV_EST (1=1) (5=1) (8=1) (9=1) (15=1) (17=1) (19=1) (20=1) (22=1) (24=1) (25=1) (26=1) (27=1) (28=1) (31=1) (32=1) (33=1) (34=1) (36=1) (37=1) (39=1) (40=1) (42=1) (43=1) (44=1) (47=1) (48=1) (49=1) (50=1) (2=2) (3=2) (4=2) 
(6=2) (7=2) (10=2) (11=2)  (12=2) (13=2) (14=2) (16=2) (18=2) (21=2) (23=2) (29=2) (30=2) (35=2) (38=2) (41=2) (45=2) (46=2) (51=2) (52=2) INTO COD_PROV_EST_REC.
VARIABLE LABELS  COD_PROV_EST_REC 'Provincia norte o sur'.
EXECUTE.

***Asignamos los valores de la nueva variable provincia:norte-sur

VALUE LABELS COD_PROV_EST_REC  
    1 'Norte' 
    2 'Sur'.


***Le damos un formato sin decimales.

FORMATS COD_PROV_EST_REC (F2.0).


***Llevamos a cabo un análisis Chi-cuadrado ya que se trata de dos variables nominales (se lleva a cabo mediante una tabla de contingencia).

DATASET ACTIVATE BD_TOTAL.
CROSSTABS
  /TABLES=COD_PROV_EST_REC BY FUTURO
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI 
  /CELLS=COUNT EXPECTED ROW COLUMN TOTAL 
  /COUNT ROUND CELL.

***Tras el análisis, podemos afirmar que NO hay diferencias estadísticamente significativas entre norte y sur en cuanto a las consideraciones, de cara a un futuro, sobre su situación actual en materia de educación laboral







****EJERCICIO 7

***Hay que crear una variable que sea solo el año de nacimiento, a partir de la variable FEC_NAC.
***Para ello puedo recurir a Transformar/Calcular variable, marcando en Funciones: cadena y en Funciones y variables especiales: CHAR.SUBSTR(2). Debo tener en cuenta
que la nueva variable (FEC_NAC_AÑO) tenga también formato cadena.

STRING FEC_NAC_AÑO (A4).
COMPUTE FEC_NAC_AÑO = CHAR.SUBSTR(FEC_NAC,7).
EXECUTE.

***También podría hacerse mediante la sigueinte expresión pero es algo más compleja

STRING FEC_NAC_AÑO (A4).
COMPUTE FEC_NAC_AÑO = SUBSTR(FEC_NAC,CHAR.LENGHT(FEC_NAC)-3,4).
EXECUTE.


**Transformar la nueva variable FEC_NAC_AÑO en una variable numérica para poder operar con ella (Se puede hacer mediante Datos > Definir propiedades de variables) .

ALTER TYPE  FEC_NAC_AÑO(F4.0).
FORMATS  FEC_NAC_AÑO(F4.0).
EXECUTE.

***Por último tenemos que calcular el valor de la nueva variable EDAD_ACTUAL a través de Transformar > Calcular variable

COMPUTE EDAD_ACTUAL= 2024 - FEC_NAC_AÑO.
VARIABLE LABELS  EDAD_ACTUAL 'Edad actual (teniendo en cuenta para calcularla solo el año de '+
    'nacimiento)'.
FORMATS   EDAD_ACTUAL(F2.0).
EXECUTE.






****EJERCICIO 8

* Para resolver este ejercicio tenemos que hacer una tabla personalizada.
* Previamente, si queremos que la tabla sea lo suficientemente clara y no dé información sobre qué
significa un nivel de estudios previo igual a 1, 2, 3.... debemos definir las propiedades de la variables TIT_ANTERIOR.

VALUE LABELS TIT_ANTERIOR
  1 'Sin estudios'
  2 'EGB, ESO'
  3 'Bachillerato'
  4 'FP Grado Medio'
  5 'FP Grado Superior'.
EXECUTE.


CTABLES
  /VLABELS VARIABLES=TIT_ANTERIOR EDAD  DISPLAY=LABEL
  /TABLE TIT_ANTERIOR BY EDAD [S][MINIMUM, MAXIMUM, MEAN, MEDIAN, MODE, PTILE 25, PTILE 50, PTILE 75, 
    VARIANCE]
  /CATEGORIES VARIABLES=TIT_ANTERIOR ORDER=A KEY=VALUE EMPTY=EXCLUDE MISSING=EXCLUDE.

















