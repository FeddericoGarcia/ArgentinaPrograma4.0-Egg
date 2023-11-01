Algoritmo Cuadrado
	
	// Realizar un programa que lea un n�mero entero (tama�o del lado) y a partir de �l cree un
	// cuadrado de asteriscos de ese tama�o. Los asteriscos s�lo se ver�n en el borde del
	// cuadrado, no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
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