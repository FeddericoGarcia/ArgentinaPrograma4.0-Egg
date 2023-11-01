//Realizar una funci�n que permita obtener el t�rmino n de la sucesi�n de Fibonacci. La suce-
//si�n de Fibonacci es la sucesi�n de los siguientes n�meros:
//		1, 1, 2, 3, 5, 8, 13, 21, 34, ...
//	Donde cada uno de los n�meros se calcula sumando los dos anteriores a �l. Por ejemplo:
//		La sucesi�n del n�mero 2 se calcula sumando (1+1)
//		An�logamente, la sucesi�n del n�mero 3 es (1+2),
//		Y la del 5 es (2+3),
//		Y as� sucesivamente...
//	La sucesi�n de Fibonacci se puede formalizar de acuerdo a la siguiente f�rmula:
//		Fibonacci (n) = Fibonacci (n-1) + Fibonacci (n-2) para todo n > 1
//			Fibonacci (n) = 1 para todo n <= 1
//				Por lo tanto, si queremos calcular el t�rmino "n" debemos escribir una funci�n que reciba
//					como argumento el valor de "n" y que calcule la serie hasta llegar a ese valor.
//					
//	Para conocer m�s acerca de la serie de Fibonacci consultar el siguiente link: https://quant-
//							dare.com/numeros-de-fibonacci/


Algoritmo FibonacciOK
	
	Definir num Como Entero
	
	Escribir "Ingresa un numero:";
	Leer num;
	
	Fibonacci(num)
	
FinAlgoritmo

Funcion Fibonacci(num)
	
	Definir  i, A, B, C  Como Entero
	
	a = 0;
	b = 1;
	c = 0;
	
	Para i = 1 hasta num
		a = b;
		b = c;
		c = a + b;
		
		Si i < num
			Escribir sin saltar c, ", "
		SiNo
			Escribir sin saltar c
		FinSi
		
	FinPara
	
	Escribir ""
	
	
FinFuncion
	