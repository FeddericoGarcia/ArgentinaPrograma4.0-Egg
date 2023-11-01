//Realizar una función que permita obtener el término n de la sucesión de Fibonacci. La suce-
//sión de Fibonacci es la sucesión de los siguientes números:
//		1, 1, 2, 3, 5, 8, 13, 21, 34, ...
//	Donde cada uno de los números se calcula sumando los dos anteriores a él. Por ejemplo:
//		La sucesión del número 2 se calcula sumando (1+1)
//		Análogamente, la sucesión del número 3 es (1+2),
//		Y la del 5 es (2+3),
//		Y así sucesivamente...
//	La sucesión de Fibonacci se puede formalizar de acuerdo a la siguiente fórmula:
//		Fibonacci (n) = Fibonacci (n-1) + Fibonacci (n-2) para todo n > 1
//			Fibonacci (n) = 1 para todo n <= 1
//				Por lo tanto, si queremos calcular el término "n" debemos escribir una función que reciba
//					como argumento el valor de "n" y que calcule la serie hasta llegar a ese valor.
//					
//	Para conocer más acerca de la serie de Fibonacci consultar el siguiente link: https://quant-
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
	