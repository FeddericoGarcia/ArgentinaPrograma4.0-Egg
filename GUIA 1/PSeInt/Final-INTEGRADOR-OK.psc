Algoritmo Final
    //Definici�n de variables
    Definir calculadora Como Entero
    Definir cadena1, cadena2 Como Caracter
    Definir diagonal3D1, diagonal3D2 Como Entero
    //Definimos las 3 dimensiones de la matriz calculadora
    Dimension calculadora(3, 3, 3)
    //Asignamos valores a las cadenas de texto
    cadena1 = "789090362"
	cadena2 = "484529837"
    //Inicializamos la matriz
    inicializarMatriz(calculadora)
	//Llenamos las matrices como se marca en el enunciado
    llenarMatriz_Z0(calculadora, cadena1)
    llenarMatriz_Z1(calculadora, cadena2)
    llenarMatriz_Z2(calculadora)
    //Mostramos los resultados de la matriz
    imprimirMatriz(calculadora)
    //Asignamos los valores de las diagonales 3D
	diagonal3D1 = calculadora(0, 2, 0)*calculadora(1, 1,1)*calculadora(2, 0, 2)
	diagonal3D2 = calculadora(0, 0, 0)*calculadora(1, 1,1)*calculadora(2, 2, 2)
	///	Los elementos de las diagonales y sus resultados:
	/// 7 * 5 * 21 = 105
	/// 1 * 5 * 9 = 315
    //Escribimos los resultados de las diagonales
    Escribir "La multiplicaci�n de los elementos de la diagonal 3D 1 es ", diagonal3D1
    Escribir "La multiplicaci�n de los elementos de la diagonal 3D 2 es ", diagonal3D2
	
FinAlgoritmo

//inicializarMatriz(matriz)
//Inicializa la matriz con alg�n valor gen�rico en todas sus posiciones, por ejemplo con el n�mero 0.
SubProceso inicializarMatriz(calculadora)
	
	Definir f, c, capa Como Entero
	
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			Para capa = 0 hasta 2
				calculadora(capa, f, c) = 0
			FinPara
		FinPara
	FinPara
	
FinSubProceso

//llenarMatriz_Z0(matriz, cadena)
//Recibe una matriz y la llena con los valores de la cadena separados y convertidos a n�meros. 
//Pista: tendremos que utilizar un contador auxiliar para asignar los valores.
SubProceso llenarMatriz_Z0(calculadora, cadena1)
	
	Definir f, c, capa, cont Como Entero
	
	cont = 0;
	
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			calculadora(0, f, c) = ConvertirANumero(Subcadena(cadena1, cont, cont));
			cont = cont + 1;
		FinPara
	FinPara
	
FinSubProceso

//llenarMatriz_Z1(matriz, cadena)
//Recibe una matriz y la llena con los valores de la cadena separados y convertidos a n�meros. 
//Pista: tendremos que utilizar un contador auxiliar para asignar los valores.
SubProceso llenarMatriz_Z1(calculadora, cadena2)
	
	Definir f, c, cont Como Entero
	
	cont = 0;
	
	Para f = 0 hasta 2 
		Para c = 0 hasta 2
			calculadora(1, f, c) = ConvertirANumero(Subcadena(cadena2, cont, cont));
			cont = cont + 1;
		FinPara
	FinPara

FinSubProceso

//llenarMatriz_Z2(matriz)
//Llena los valores multiplicando los elementos de las otras capas que est�n en la misma posici�n.
SubProceso llenarMatriz_Z2(calculadora)
	
	Definir f, c Como Entero
	
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			calculadora(2, f, c) = calculadora(0, f, c) * calculadora(1, f, c)
		FinPara
	FinPara
	
FinSubProceso

//imprimirMatriz(matriz)
//Muestra por pantalla la matriz. Se mostrar� la capa 0, debajo la capa 1 y luego la capa 2.
SubProceso imprimirMatriz(calculadora)
	
	Definir f, c, capa Como Entero
	
	Escribir "------------------";
	Escribir "- CALCULADORA 3D -"
	Escribir "------------------";
	
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			Escribir sin saltar "[ " calculadora(0, f, c) " ]"
		FinPara
		Escribir "";
	FinPara

	Escribir "------------------";
	
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			Escribir sin saltar "[ " calculadora(1, f, c) " ]"
		FinPara
		Escribir "";
	FinPara

	Escribir "------------------";
	
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			Escribir sin saltar "[ " calculadora(2, f, c) " ]"
		FinPara
		Escribir "";
	FinPara

	Escribir "------------------";
	
FinSubProceso

/////////////////////////////////////////////////////
////CALCULADORA MODIFICADA POR EL INTEGRADOR
////CON SUS PREGUNTAS Y RESPUESTAS DE MULTIPLE-CHOICE:
/////////////////////////////////////////////////////
	
//�Qu� hay en la  Posici�n (0,2,1)?*
//5 puntos
//8
//0
////6 - OK
//7


//�Qu� hay en la Posici�n (2,2,2)?*
//5 puntos
//18  
//28
//0
////14 - OK

//�Qu� hay en la  Posici�n (1,1,2)?*
//4 puntos
//8
////9 - OK
//4
//2

//�Cu�l es el resultado de multiplicar los valores de la diagonal3D1 ?*
//5 puntos
//232
//208
//200
////216 - OK

//�Qu� hay en la  Posici�n (0,1,0)?*
//3 puntos
////0 - OK
//6
//3
//2

//�Cu�l es el resultado de multiplicar los valores de la diagonal3D2 ?*
//5 puntos
////196 - OK
//156
//128
//216

//La siguiente funci�n de que se encarga?*
//5 puntos
//Imagen sin t�tulo
////Validar caracteres - OK
//Validar longitud 
//Sacar una cuenta matem�tica
//Ninguna de las anteriores

//Este SI de que se encarga ?*
//	5 puntos
//	Imagen sin t�tulo
//	Validar las diagonales de la matriz
//	Validar la diagonal secundaria de la matriz
////	Validar la diagonal primaria de la matriz - OK
//	Ninguna de las anteriores

//Una matriz es cuadrada cuando tiene:	*
//	1 punto
////	La misma cantidad de filas que columnas - OK
//	M�s columnas que filas
//	M�s filas que columnas
//	Ninguna de las anteriores

//El siguiente Subproceso de que se encarga? (Siendo m la dimensi�n de la matriz)*
//	5 puntos
//	Imagen sin t�tulo
//	Rellenar la matriz
////	Mostrar la matriz - OK
//	Evaluar diagonales
//	Sumar valores

//�Esta funci�n de qu� se encarga?*
//5 puntos
//Imagen sin t�tulo
////Seg�n la longitud de la muestra, le da una dimensi�n a la matriz - OK
//Seg�n la longitud de la muestra, valida si es la muestra es correcta
//Seg�n la longitud de la muestra, le da una dimensi�n de la matriz que puede ser 9, 16 o 1369
//Ninguna de las anteriores

//Un condicional NO es:	*
//	1 punto
//	Una sentencia que permite decidir si se ejecuta o no un bloque de c�digo
//	Una sentencia que altera el flujo secuencial de un algoritmo
//	Una sentencia decisiva que puede desencadenar m�ltiples opciones
////Ninguna de las anteriores - OK

//�Qu� bucles podemos usar para rellenar un arreglo?
//	2 puntos
//	Mientras
//	Mientras Que
//	Para 
////Todos los bucles mencionados - OK

//La siguiente funci�n, �de qu� se encarga?*
//5 puntos
//Imagen sin t�tulo
////Validar caracteres - OK
//Validar longitud
//Evaluar diagonales
//Ninguna de las anteriores

//En el siguiente c�digo, la variable "m" deber�a estar definida como tipo...*
//8 puntos
//Imagen sin t�tulo
////Entero o Real - OK
//L�gico
//Car�cter
//Corresponde al valor PI

// Una variable es*
// 1 punto
// Un lugar de retenci�n temporal de informaci�n 
// Un lugar de almacenamiento, cuyo contenido no var�a durante el proceso
//	Una palabra reservada del lenguaje de programaci�n
////	Ninguna de las anteriores - OK

//�El siguiente fragmento de c�digo de que se encarga?*
//8 puntos
//Imagen sin t�tulo
////Invierte un numero y lo guarda en var - OK
//Multiplica un numero por 10
//Suma los valores de var y aux 
//Trunca el numero para mostrarlo sin decimales

//La variable de retorno es:*
//	1 punto
//	Es el valor que recibe la funci�n
////	Es el valor final que entrega la funci�n - OK
//	Es un valor nulo
//	Ninguna de las anteriores

//�Los siguientes Para anidados de qu� se encargan? (Siendo m y n la dimensi�n de la matriz)*
//	5 puntos
//	Imagen sin t�tulo
//	Validar la matriz
//	Sumar los valores pares de la matriz en el Si
//	Rellenar la matriz
////Sumar los valores pares de la matriz en el Si y los valores impares en el SiNo - OK

//Un par�metro es: *
//	2 puntos
//	El valor enviado por el programa principal al subprograma 
////El valor que recibe el subprograma enviado del programa principal - OK
//	Una variable global
//	Ninguna de las anteriores

//�Esta funci�n de qu� se encarga?*
//8 puntos
//Imagen sin t�tulo
//Es una funci�n recursiva para sumar dos numeros
//Sumar dos valores
////Es una funci�n recursiva para sumar los primeros N enteros de un numero - OK
//Ninguna de las anteriores

//Una funci�n de un programa siempre debe:	*
//	2 puntos
//	Recibir al menos un argumento 
////Tener un nombre - OK
//	Ser llamado dentro de otra funci�n
//	Ninguna de las anteriores

//De acuerdo a la sintaxis del bucle "hacer-mientras", se�alar cu�l es la afirmaci�n Verdadera.*
//2 puntos
//Imagen sin t�tulo
//	Si condici�n = falso, el bucle no se llega a ejecutar nunca
//	El hacer-mientras sabe cuantas veces se debe repetir la sentencia
////Si condici�n = verdadero, entonces el bucle se sigue ejecutando - OK
//	Ninguna de las anteriores es verdadera

//El siguiente subproceso, de que se encarga? (Siendo m la dimensi�n de la matriz)	*
//	5 puntos
//	Imagen sin t�tulo
//	Validar caracteres
//	Recorrer ambas diagonales
//	Mostrar matriz
////	Rellenar la matriz - OK

/////////////////////////////////////////////////////
/////////////////////////////////////////////////////

