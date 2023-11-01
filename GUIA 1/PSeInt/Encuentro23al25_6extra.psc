////Realizar un programa que permita visualizar el resultado del producto de una matriz de ente-
////ros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden iniciali-
////zarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se rea-
////liza la multiplicación entre matrices consultar el siguiente link:
Algoritmo extra6_guia5
	
	definir matriz, vector, i,j, matrizM,dim , dim2,matrizT Como Entero
	dim= 3
	dim2=3
	Dimension matriz(3,3), vector(3), matrizM(3,3), matrizT(3,3)
	rellenar(matriz,3,3)
	rellenarvector(vector,3)
//	para i<-0 hasta 2 hacer
//		para j<-0 hasta 2 Hacer
//			matrizT(i,j) = matriz(j,i)
//		FinPara
//	FinPara
	
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			matrizM(j,i) = matriz(j,i) * vector(i)
		FinPara
	FinPara
	
	mostrarEnPantalla(matriz,3,3)
	para i<-0 hasta dim2-1 Hacer
		escribir"[",vector(i),"] " Sin Saltar
	FinPara
	Escribir ""
	
	mostrarEnPantalla(matrizM,3,3)
	
	
	
FinAlgoritmo
SubProceso rellenar(matriz, dim, dim2)	
	definir i, j Como Entero
	para i<-0 hasta dim-1 hacer
		para j<-0 hasta dim2-1 Hacer
			matriz(i,j) = aleatorio(1,10)
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
SubProceso rellenarvector(vec, dim)
	definir i Como Entero
	para i<-0 hasta dim-1 Hacer
		vec(i)= Aleatorio(1,10)
	FinPara
FinSubProceso
	