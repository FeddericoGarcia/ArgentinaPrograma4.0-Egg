////Realizar un programa que rellene de números aleatorios una matriz a través de un subpro-
////grama y generar otro subprograma que muestre por pantalla la matriz final.

Algoritmo extra1_guia5
	definir dim, dim2, matriz1  como entero
	escribir"ingrese dimension de fila:"
	leer dim
	escribir"ingrese dimension de columna:"
	leer dim2
	
	Dimension matriz1(dim,dim2)
	rellenar(matriz1,dim,dim2)
	mostrarEnPantalla(matriz1,dim,dim2)
	
	
FinAlgoritmo

SubProceso rellenar(matriz, dim, dim2)	
	definir i, j Como Entero
	para i<-0 hasta dim-1 hacer
		para j<-0 hasta dim2-1 Hacer
			matriz(i,j) = aleatorio(1,100)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarEnPantalla(matriz, dim, dim2)	
	definir i, j Como Entero
	para i<-0 hasta dim-1 hacer
		para j<-0 hasta dim2-1 Hacer
			escribir"[",matriz(i,j),"] " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
	