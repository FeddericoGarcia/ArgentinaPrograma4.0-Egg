//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. Inicia-
//lice las matrices para evitar el ingreso de datos por teclado.

Algoritmo calcularMultiplicacionMatricez
	
	Definir matriz1, matriz2, matrizMulti, f, c como entero
	Dimension matriz1(3, 3), matriz2(3, 3), matrizMulti(3, 3);
	
	Para f = 0 hasta 2
		para c = 0 hasta 2
			matriz1(f, c) = Aleatorio(1, 5)
			Escribir sin saltar "[" matriz1(f, c) "]"
		FinPara
		Escribir "";
	FinPara
	
	Escribir "---------"
	
	Para f = 0 hasta 2
		para c = 0 hasta 2
			matriz2(f, c) = Aleatorio(1, 5)
			Escribir sin saltar "[" matriz2(f, c) "]"
		FinPara
		Escribir "";
	FinPara
	
	Escribir "---------"
	Escribir "La matriz de multiplicación: ";
	
	Para f = 0 hasta 2 Hacer
		Para c = 0 hasta 2
			matrizMulti(f,c) = matriz1(f, c) * matriz2(f, c);
			Escribir sin saltar "[" matrizMulti(f, c) "]"
		FinPara
		Escribir "";
	FinPara
	
FinAlgoritmo
