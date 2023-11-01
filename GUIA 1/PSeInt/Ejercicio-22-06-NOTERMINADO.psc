//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//	
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un algo-
//	ritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que sea
//	mágica escribir la suma. Además, el programa deberá comprobar que los números introduci-
//	dos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la matriz
//	que no debe superar orden igual a 10.

Algoritmo rellenarMatriz6
	
	Definir matriz, i, j, f, c, matrizMagica, sumaDiago, sumaDiago2, sumaFila, sumaColumna, contador Como Entero
	
	Escribir "Ingresa el tamaño de la matriz:";
	Escribir "FILA - Hasta 9 inclusive";
	Leer f;
	Escribir "COLUMNA - Hasta 9 inclusive";
	Leer c;
	
	Dimension matriz(f, c)
	
	matrizMagica = 15;
	sumaFila = 0;
	sumaColumna = 0;
	sumaDiago = 0;
	sumaDiago2 = 0;
	
	//rellena la matriz
	Si f <= 9 y c <= 9 Entonces
		Para i = 0 hasta f-1 
			Para j = 0 hasta c-1 
				matriz(i, j) = Aleatorio(1, 6);
			FinPara
		FinPara
	SiNo
		Escribir "Ingresa nuevamente los números: ";
	FinSi
	
	//muestra matriz
	Para i = 0 hasta f-1 
		Para j = 0 hasta c-1 
			Escribir sin saltar "[" matriz(i, j) "]";
		FinPara
		Escribir "";
	FinPara
	
	//suma de primera diagonal
	Para i = 0 Hasta f-1
		Para j = 0 Hasta c-1
			Si i == j Entonces
				sumaDiago= sumaDiago + matriz(i,j)
			FinSi
		FinPara
	FinPara
	Escribir "La suma de la Primera diagonal es: ",sumaDiago
	
	Para i = f-1 Hasta 0
		Para j = c-1 Hasta 0
			Si j == i Entonces
				sumaDiago2 = matriz(j,i) + sumaDiago2
			FinSi
		FinPara
	FinPara
	Escribir "La suma de la Segunda diagonal es: ", sumaDiago2
	
	Si f == c Entonces
		Para i = 0 hasta f-1
			Para j = 0 hasta c-1
				sumaFila = sumaFila + matriz(i,j);
			FinPara
		FinPara
	FinSi
	Escribir "La suma de la fila ", i " es: ",sumaFila;
	
//	Para i = f-1 Hasta 0
//		Para j = c-1 Hasta 0
//			Si j == i Entonces
//				sumaDiago2 = matriz(i,j) + sumaDiago2
//			FinSi
//		FinPara
//	FinPara
//	Escribir "La suma de la diagonal 2 es: ",sumaDiago2
//	
//	Para i = f-1 Hasta 0
//		Para j = c-1 Hasta 0
//			Si j == i Entonces
//				sumaFila = matriz(i,j) + sumaFila
//			FinSi
//		FinPara
//	FinPara
//	Escribir "La suma de la fila " i " es de: ", sumaFila
	
	
//	Si f=c Entonces
//        suma = 0
//		
//        Para i <- 0 Hasta f-1 Hacer
//            suma=0
//            Para j<-0 Hasta c-1 Con Paso 1 Hacer
//				suma = suma + matriz(i, j); 
//            Fin Para
//			
//            Escribir "La suma de la fila " i+1, " es: " suma
//			
//        FinPara 
//        Escribir " La matriz NO es magica"
//    SiNo
//        Escribir "La matriz es magica"
//    Fin Si
	
	
FinAlgoritmo
	