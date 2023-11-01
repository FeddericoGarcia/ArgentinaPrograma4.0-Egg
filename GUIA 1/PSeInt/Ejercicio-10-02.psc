Algoritmo Cuadrado
	
	// Realizar un programa que lea un número entero (tamaño del lado) y a partir de él cree un
	// cuadrado de asteriscos de ese tamaño. Los asteriscos sólo se verán en el borde del
	// cuadrado, no en el interior. Por ejemplo, si se ingresa el número 4 se debe mostrar:
	// * * * *
	// * 	 *
	// * 	 *
	// * * * *
	// Nota: Recordar el uso del escribir sin saltar en PseInt.
	
	Definir num, i, j Como Entero
	
	Escribir "Ingresa un numero: ";
	Leer num;
	
	Para i = 1 hasta num Hacer
		Para j = 1 hasta num Hacer
			Si (i > 1) y (i < num) y (j > 1) y (j < num) Entonces
				Escribir sin saltar " ";
			SiNo
				Escribir sin saltar "*";
			FinSi
			
		FinPara
		// Es importante luego del cierre de variable J escribir una cadena vacia para que el programa
		// realice el salto de linea en la variable I, y luego continuar con las validaciones de J
		Escribir  "";
	FinPara
	
	
FinAlgoritmo