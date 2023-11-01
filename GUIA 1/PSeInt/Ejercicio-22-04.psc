//	Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro subpro-
//	ceso para imprimir la matriz.

Algoritmo RellenarLaMatriz
	
	Definir matriz, f, c Como Entero
	Dimension matriz(4,4)
	
	rellenarMatriz(matriz)
	mostrarMatriz(matriz)
	
FinAlgoritmo

SubProceso rellenarMatriz(matriz)
	
	Definir f, c Como Entero
	
	Para f = 0 hasta 3
		Para c = 0 hasta 3
			Si f = c Entonces
				matriz(0,0) = 0
				matriz(1,1) = 0
				matriz(2,2) = 0
				matriz(3,3) = 0
			SiNo
				matriz(f,c) = Aleatorio(1,5)
			FinSi
		FinPara
	FinPara
	
FinSubProceso

SubProceso mostrarMatriz(matriz)
	
	Definir f, c Como Entero
	
	Escribir "------------";
	
	Para f = 0 hasta 3
		Para c = 0 hasta 3
			Escribir sin saltar "[" matriz(f, c) "]"
		FinPara
		Escribir "";
	FinPara	
	
	Escribir "------------";
	
FinSubProceso
