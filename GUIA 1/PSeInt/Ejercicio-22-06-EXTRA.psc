//Realizar un programa que permita visualizar el resultado del producto de una matriz de ente-
//ros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden iniciali-
//zarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se rea-
//liza la multiplicación entre matrices consultar el siguiente link:

Algoritmo ResultadoDeMatrices
	
	Definir matriz1, matriz2, vector, f, c, return Como Entero
	Dimension matriz1(3,3), matriz2(3,3), vector(3)
	
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			matriz1(f,c) = Aleatorio(1,5)
			matriz2(f,c) = Aleatorio(1,5)
			vector(f) = Aleatorio(1,5)
		FinPara
	FinPara
	
	viewMatriz(matriz1, matriz2, vector)
	return = Multiplicacion(matriz1, matriz2, vector)
	
FinAlgoritmo

SubProceso viewMatriz(matriz1, matriz2, vector)
	
	Definir f, c Como Entero
	
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			Escribir sin saltar "[" matriz1(f,c) "]"
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			Escribir sin saltar "[" matriz2(f,c) "]"
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	
	Para f = 0 hasta 2
			Escribir sin saltar "[" vector(f) "]"
		Escribir "";
	FinPara
	Escribir "";
FinSubProceso

Funcion return = Multiplicacion(matriz1, matriz2, vector)
	
	Definir return, f, c Como Entero
	
	Para f = 0 hasta 2
		Para c = 0 hasta 2
			return = matriz1(f,c) + matriz2(f,c) * vector(f)
		FinPara
	FinPara
	
	Escribir return 
	
FinFuncion
	