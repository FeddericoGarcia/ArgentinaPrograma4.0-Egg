Algoritmo Final
    //Definición de variables
    Definir calculadora Como Entero
    Definir cadena1, cadena2 Como Caracter
    Definir diagonal3D1, diagonal3D2 Como Entero
    //Definimos las 3 dimensiones de la matriz calculadora
    Dimension calculadora(3, 3, 3)
    //Asignamos valores a las cadenas de texto
    cadena1 = "123456789"
    cadena2 = "987654321"
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
    Escribir "La multiplicación de los elementos de la diagonal 3D 1 es ", diagonal3D1
    Escribir "La multiplicación de los elementos de la diagonal 3D 2 es ", diagonal3D2
	
FinAlgoritmo

//inicializarMatriz(matriz)
//Inicializa la matriz con algún valor genérico en todas sus posiciones, por ejemplo con el número 0.
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
//Recibe una matriz y la llena con los valores de la cadena separados y convertidos a números. 
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
//Recibe una matriz y la llena con los valores de la cadena separados y convertidos a números. 
//Pista: tendremos que utilizar un contador auxiliar para asignar los valores.
SubProceso llenarMatriz_Z1(calculadora, cadena2)
	
	Definir f, c, cont Como Entero
	
	cont = 0;
	
	Para f = 2 hasta 0 con paso -1 
		Para c = 0 hasta 2
			calculadora(1, f, c) = ConvertirANumero(Subcadena(cadena2, cont, cont));
			cont = cont + 1;
		FinPara
	FinPara

FinSubProceso

//llenarMatriz_Z2(matriz)
//Llena los valores multiplicando los elementos de las otras capas que estén en la misma posición.
SubProceso llenarMatriz_Z2(calculadora)
	
	Definir f, c Como Entero
	
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			calculadora(2, f, c) = calculadora(0, f, c) * calculadora(1, f, c)
		FinPara
	FinPara
	
FinSubProceso

//imprimirMatriz(matriz)
//Muestra por pantalla la matriz. Se mostrará la capa 0, debajo la capa 1 y luego la capa 2.
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
