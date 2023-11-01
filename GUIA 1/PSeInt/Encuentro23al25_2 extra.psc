////2. Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla
////con números aleatorios entre 1 y 100 y mostrar su traspuesta.
////¿Qué es una Matriz Traspuesta?
////La matriz traspuesta de una matriz A se denota por B y se obtiene cambiando sus filas por columnas
////(o viceversa).
////Matriz A = è Matriz B =
////Ejemplo: Obsérvese, por ejemplo, que la primera fila de la matriz A es (1,0,4). Esta fila es la primera
////	columna de su matriz traspuesta.

algoritmo extra2_guia5
	definir matriz1, matrizT, f, c, i , j como entero
	escribir"ingrese dimension de fila:"
	leer f
	escribir"ingrese dimension de columna:"
	leer c
	dimension matriz1(f,c),matrizT(c,f)
	rellenar(matriz1,f,c)	
	mostrarEnPantalla(matriz1,f,c)
	
	para i<-0 hasta c-1 hacer
		para j<-0 hasta f-1 Hacer
			matrizT(i,j) = matriz1(j,i)
		FinPara
	FinPara
	escribir"___________________________________"
	mostrarEnPantalla(matrizT,c,f)
	
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
