Algoritmo Numero1al20
	
	// Realizar un programa que lea 5 números (comprendidos entre 1 y 20) e imprima el número
	// ingresado seguido de tantos asteriscos como indique su valor. Por ejemplo:
	// 5 *****
	// 3 ***
	// 11 ***********
	// 2 **
	// 9 *********
	
	Definir num, i , j Como Entero
	
	Para i = 1 hasta 5 Hacer
		
		Escribir "Escribe un numero entre el 1 y 20: ";
		Leer num;
		
		Si num >= 1 y num <= 20 Entonces
			
			Para j = 1 hasta num Hacer
				Escribir sin saltar "* ";
			FinPara
			Escribir "";
		SiNo
			Escribir "El numero ingresado no es correcto, por favor, ingresa un numero entre el 1 y 20";
		FinSi
		
	FinPara

FinAlgoritmo
