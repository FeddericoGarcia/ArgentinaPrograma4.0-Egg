Algoritmo Multiplo2y3
	
	// Escribir un programa que calcule la suma de los N primeros n�meros naturales. El valor de
	// N se leer� por teclado.
	
	Definir num, suma, i Como Entero
	
	Escribir "Ingresa un n�mero positivo: "
	Leer num;
	
	suma = 0;
	
	Para i <- 0 Hasta num con paso 1 Hacer
		suma = suma + i
	FinPara
	
	Escribir "La suma de los numeros naturales es: " suma;	
	
FinAlgoritmo