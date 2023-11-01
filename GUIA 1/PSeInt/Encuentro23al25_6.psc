////Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
////tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
////Por ejemplo:
////	2 7 6
////	9 5 1
////	4 3 8
////	
////	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un algo-
////	ritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que sea
////		
////		mágica escribir la suma. Además, el programa deberá comprobar que los números introduci-
////		dos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la matriz
////		
////		que no debe superar orden igual a 10.
Algoritmo cuadradoMagico
	
	definir matriz, i,j, dim, vFila, vColum, diago, sumaF, sumaC, sumaD,sumaD2, cont,x como entero
		hacer
			escribir"ingrese la dimension de la matriz: (1-9)"
			leer dim
			si dim <1 o dim >9 Entonces
				escribir "Dimension fuera de rango definido. "
			FinSi
		Mientras Que dim <1 o dim >9
		Dimension matriz(dim, dim)
	para i<-0 hasta dim-1 Hacer
		para j<-0 hasta dim-1 Hacer
		escribir"ingrese los valores de los subindices: [",i,"][",j,"]"
		leer matriz(i,j)
		FinPara
	FinPara
		para i<-0 hasta dim-1 Hacer
			para j<-0 hasta dim-1 Hacer
				escribir"[",matriz(i,j),"]" sin saltar
			FinPara
			escribir""
		FinPara
		escribir"______________________________________________"
		sumaF=0
		sumaC=0
		sumaD=0
	Dimension vFila(dim), vColum(dim)
	para i<-0 hasta dim-1 Hacer
		sumaF=0
		sumaC=0
		para j<-0 Hasta dim-1 Hacer
			sumaF = sumaF + matriz(i,j)
			sumaC = sumaC + matriz(j,i) 
			si i==j Entonces
				sumaD = sumaD + matriz(i,j)
			FinSi
		FinPara
		vFila(i)= sumaF
		vColum(i)= sumaC	
	FinPara
	x=-1
	sumaD2=0
	para i<- 0 hasta dim-1 Hacer
		sumaD2 = sumaD2 + matriz(dim-1-i, x+1)
		x=x+1
	FinPara
	para i<- 0 hasta dim-1 Hacer
		escribir "sumatoria de fila (",i,") = ",vFila(i)," "
	FinPara
	escribir"______________________________________________"
	para i<- 0 hasta dim-1 Hacer
		escribir "sumatoria de columna (",i,") = ",vColum(i)," "
	FinPara
	escribir"______________________________________________"
	escribir"sumatoria de la diagonal principal: ",sumaD
	escribir"______________________________________________"
	escribir"sumatoria de la diagonal secundaria: ",sumaD2
	escribir"______________________________________________"
	cont=0
	para i<-0 hasta dim-1 Hacer
		si vFila(i)==sumaD Y vColum(i)==sumaD y vFila(i)==sumaD2 Y vColum(i)==sumaD2 Entonces
			cont= cont+1
		FinSi
	FinPara
	si cont== dim
		Escribir "La matriz ingresada es una MATRIZ MÁGICA"
	sino
		Escribir "La matriz ingresada NO es una MATRIZ MÁGICA"
	FinSi
	escribir"______________________________________________"

FinAlgoritmo
