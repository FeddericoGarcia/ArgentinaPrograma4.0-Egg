Algoritmo EscaleraInvertida
	
	// Escriba un programa que lea un n�mero entero (altura) y a partir de �l cree una escalera
	// invertida de asteriscos con esa altura. Por ejemplo, si ingresamos una altura de 5 se
	// deber� mostrar:
	// *****
	// ****
	// ***
	// **
	// *
	
	Definir num, i, j Como Entero
	
	Escribir "Ingresa un numero: ";
	Leer num;
	
	num = num -1;
	
	Para i = 0 hasta num Hacer
		
		Para j = 0 hasta num - i hacer
			Escribir sin saltar "*"
		FinPara
		
		Escribir  "";
		
	FinPara
	
FinAlgoritmo