//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.

Algoritmo rellenarMatriz
	
	Definir matriz, i, j, num Como Entero
	Dimension matriz(3, 3);
	
	Escribir "Ingresá el número 3"
	Leer num;
	
	Para i = 0 hasta num-1 Hacer
		Para j = 0 hasta num-1 Hacer
			Escribir "Ingresa los elementos de la matriz: ";
			Leer matriz(i, j);
		FinPara
	FinPara
	
	Escribir "Los valores ingresados son: "
	
	Para i = 0 hasta num-1 Hacer
		Para j = 0 hasta num-1 Hacer
			Escribir sin saltar "[", matriz(i, j) "]";
		FinPara
		Escribir "";
	FinPara
	
FinAlgoritmo
