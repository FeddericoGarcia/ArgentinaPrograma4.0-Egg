////Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. Inicia-
////lice las matrices para evitar el ingreso de datos por teclado.

Algoritmo extra4_guia5
	definir matriz1, matriz2, matrizM, i,j Como Entero
	Dimension matriz1(3,3), matriz2(3,3), matrizM(3,3)
	
	rellenar(matriz1, 3, 3)
	rellenar(matriz2, 3, 3)
	escribir "rellenar matriz1:"
	mostrarEnPantalla(matriz1,3,3)
	escribir "rellenar matriz2:"
	mostrarEnPantalla(matriz2,3,3)
	
	
	para i<-0 hasta 2 Hacer
		para j <- 0 hasta 2 Hacer
			matrizM(i,j) = matriz1(i,j)*matriz2(i,j)
		FinPara
	FinPara
	Escribir "mostrar multiplicacion de las dos matrices:"
	mostrarEnPantalla(matrizM,3,3)
FinAlgoritmo

SubProceso mostrarEnPantalla(matriz, dim, dim2)	
	definir i, j Como Entero
	para i<-0 hasta dim-1 hacer
		para j<-0 hasta dim2-1 Hacer
			escribir"[",matriz(i,j),"] " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso
SubProceso rellenar(matriz, dim, dim2)	
	definir i, j Como Entero
	para i<-0 hasta dim-1 hacer
		para j<-0 hasta dim2-1 Hacer
			matriz(i,j) = aleatorio(1,10)
		FinPara
	FinPara
FinSubProceso