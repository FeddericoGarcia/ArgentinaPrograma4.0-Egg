//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. Inicia-
//lice las matrices para evitar el ingreso de datos por teclado.

Algoritmo MultiplicacionDeMatricez
	
	Definir matriz1, matriz2, matrizX, i, j Como Entero
	Dimension matriz1(3, 3), matriz2(3, 3), matrizX(3, 3);
	
	Para i = 0 hasta 2
		Para j = 0 hasta 2
			matriz1(i, j) = Aleatorio(1, 5);
			Escribir sin saltar "[", matriz1(i,j) "]"
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	Para i = 0 hasta 2
		Para j = 0 hasta 2
			matriz2(i, j) = Aleatorio(1, 5);
			Escribir sin saltar"[", matriz2(i,j) "]"
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	Para i = 0 hasta 2
		Para j = 0 hasta 2
			matrizX(i, j) = matriz1(i, j) * matriz2(i, j);
			Escribir sin saltar"[", matrizX(i,j) "]"
		FinPara
		Escribir "";
	FinPara
	
FinAlgoritmo
	