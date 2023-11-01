//	Se debe crear una matriz con las siguientes palabras como se muestra a continuación. Luego de
//	eso debemos acomodar las palabras para que la primera letra ?R? de cada una quede en la
//	posición 5, alineándose.
	

Algoritmo ejercicioCooperativoGuia4
	Definir tablero como Cadena
	Dimension tablero[9, 12]
	inicializarMatriz(tablero, 9, 12)
	agregarPalabra(tablero, "vector", 0)
	agregarPalabra(tablero, "matrix", 1)
	agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma", 3)
	agregarPalabra(tablero, "subproceso", 4)
	agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	acomodarPalabras(tablero)
	imprimirMatriz(tablero, 9, 12)
FinAlgoritmo

SubProceso inicializarMatriz(tablero, 9, 12)
	
	Definir f, c Como Entero
	
	Para f = 0 Hasta 8
		Para c = 0 hasta 11
			tablero(f, c) = "*"
		FinPara
	FinPara	
	
FinSubProceso


SubProceso agregarPalabra(tablero, frase, num)
	
	Definir f, c Como Entero
	
	Para f = num hasta num
		Para c = 0 Hasta Longitud(frase)-1
			tablero(f, c) = Subcadena(frase, c, c)
		FinPara
	FinPara	
	
FinSubProceso

SubProceso buscarR(tablero, frase, num Por Referencia)
	
	Definir f, c, posR Como Entero
	
	Para f = frase hasta frase
		posR = 0;
		Para c = 0 Hasta 11
			si tablero(f, c) = "r" Entonces
				posR = posR + 1
				Si posR == 1 Entonces
					num = j + 1;
				FinSi
			FinSi
		FinPara
	FinPara
	
FinSubProceso
	
SubProceso acomodarPalabras(tablero)
	
	Definir f, c, pos, posR Como Entero
	Definir matrizAux Como Entero
	Dimension matrizAux(9,12)
	inicializarMatriz(tablero, 9, 12)
	Para f = 0 hasta 8
		buscarR(tablero, f, posR)
		pos = 5 - posR
		Para c = 0 Hasta 11
			Si pos = 0 Entonces
				matrizAux(f, pos) = tablero(f, c)
				Si pos > 11 Entonces
					pos = pos + 1;
				FinSi
			FinSi
		FinPara
	FinPara
	
	Para f = 0 hasta 8 Hacer
		para c = 0 hasta 11 Hacer
			tablero(f,c) = matrizAux(f,c)
		FinPara
	FinPara
	
	
FinSubProceso

SubProceso imprimirMatriz(tablero, 9, 12)
	
	Definir f, c Como Entero
	
	Para f = 0 Hasta 8
		Para c = 0 hasta 11
			Escribir sin saltar "| " tablero(f, c) " ";
		FinPara
		Escribir "";
	FinPara	

FinSubProceso