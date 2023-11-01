//Escribir un programa que realice la b�squeda lineal de un n�mero entero ingresado por el
//usuario en una matriz de 5x5, llena de n�meros aleatorios y devuelva por pantalla las coorde-
//nadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En caso de no
//encontrar el valor dentro de la matriz se debe mostrar un mensaje.


Algoritmo BusquedaLineal
	
	Definir num, matriz, f, c, cont Como Entero
	
	Dimension matriz(5, 5)
	
	Escribir "Ingresa un n�mero de uno al cinco: ";
	Leer num;
	
	Para f = 0 hasta 4
		para c = 0 hasta 4
			matriz(f,c) = Aleatorio(1, 5)
			Escribir sin saltar "[" matriz(f,c) "]"
		FinPara
		Escribir "";
	FinPara
	
	Escribir "";
	
	Para f = 0 hasta 4
		para c = 0 hasta 4
			Si num = matriz(f,c)
				Escribir "El n�mero ", num " esta en la FILA ", f ", COLUMNA ",c ;
			FinSi
		FinPara
	FinPara
	
	Si num > 5 
		Escribir "El n�mero ", num " NO se encuentra en la matriz";
	FinSi
	
FinAlgoritmo
