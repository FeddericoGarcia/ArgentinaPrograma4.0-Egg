//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro subpro-
//grama que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y los re-
//sultados por pantalla.

Algoritmo abc
	
	Definir matriz, n, m Como Entero
	
	Escribir "Ingresa las FILAS de la matriz: ";
	Leer n;
	Escribir "Ingresa las COLUMNAS de la matriz: ";
	Leer m;
	
	Dimension matriz(n, m)
	
	llenarMatriz(matriz, n, m);
	mostrarMatriz(matriz, n, m);
	
FinAlgoritmo

SubProceso llenarMatriz(matriz, n, m)
	
	Definir f, c Como Entero
	
	Para f = 0 hasta n-1
		para c = 0 hasta m-1
			matriz(f, c) = Aleatorio(1,5)
		FinPara
	FinPara
	
FinSubProceso

SubProceso mostrarMatriz(matriz, n, m)
	
	Definir f, c, return, total Como Entero
	
	total = 0;
	
	Para f = 0 hasta n-1
		para c = 0 hasta m-1
			Escribir sin saltar "[" matriz(f, c) "]";
		FinPara
		Escribir "";
	FinPara
	
	Escribir "---------"
	Escribir "La suma de los elementos de la matriz es: "
	
	Para f = 0 hasta n-1
		para c = 0 hasta m-1
			return = matriz(f, c) + matriz(f, c);
			total = total + return
			Escribir Sin Saltar"[" return "]"
		FinPara
		Escribir "";
	FinPara
	Escribir "---------"
	Escribir "El total de la suma de la matriz es: * " total " *";
	
FinSubProceso
	