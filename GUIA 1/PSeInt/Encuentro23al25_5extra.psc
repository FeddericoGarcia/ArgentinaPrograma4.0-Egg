////Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
////primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
////deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
////la matriz de la siguiente forma:
////	3 + 5 = 8
////	4 + 3 = 7
////	1 + 4 = 5
////...

Algoritmo extra5_guia5
	definir matriz, i, j, f como entero
	escribir" ingrese la cantidad de filas para la matriz:"
	leer f
	Dimension matriz(f,3)
	
	para i<-0 hasta f-1 Hacer
		para j<-0 hasta 2 Hacer
			si j<2 Entonces
				escribir"ingrese los valores del subindice[",i,"][",j,"]"
				leer matriz(i,j)
			FinSi
			si j==2 Entonces
				matriz(i,j)= matriz(i,j-1) + matriz(i,j-2)
			FinSi
		FinPara
	FinPara
	mostrarEnPantalla(matriz,f,3)
	
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
