//Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y
//ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de
//ceros. Por ejemplo, nuestro matriz final debería verse así:
//	111111111111111
//	100000000000001
//	100000000000001
//	100000000000001
//	111111111111111

Algoritmo matrizEjercExt3unosYceros
	
	definir matriz,f,c Como Entero
	dimension matriz(5,15)
	
	para f<-0 hasta 4
		para c<-0 hasta 14
			si f=0 o c=0 o f=4 o c=14 
				matriz(f,c) = 1
			sino 
				matriz(f,c)=0
			finsi
			escribir "(" matriz(f,c) ")" sin saltar
		FinPara
		escribir ""
	FinPara
	
FinAlgoritmo