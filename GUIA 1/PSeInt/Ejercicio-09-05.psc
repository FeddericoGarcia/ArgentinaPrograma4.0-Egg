Algoritmo Multiplo2y3
	
	// Realizar un programa que muestre la cantidad de números que son múltiplos de 2 o de 3
	// comprendidos entre 1 y 100.
	
	Definir i, cont2, cont3 Como Entero
	
	cont2 = 0;
	cont3 = 0;
	
	Para i <- 1 hasta 100 con paso 1 Hacer
		Si i MOD 2 == 0 Entonces
			cont2 = cont2 + 1;
		FinSi
		Si i MOD 3 == 0 Entonces
			cont3 = cont3 + 1;
		FinSi
		
	FinPara
	
	Escribir "El multiplo de 2 es: " cont2;
	Escribir "El multiplo de 3 es: " cont3;
	
FinAlgoritmo