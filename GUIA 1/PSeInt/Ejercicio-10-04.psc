Algoritmo EscaleraInvertida
	
	// La funci�n factorial se aplica a n�meros enteros positivos. El factorial de un n�mero entero
	// positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
	// n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
	// Escriba un programa que calcule las factoriales de todos los n�meros enteros desde el 1
	// hasta el 5. El programa deber� mostrar la siguiente salida:
	// !1 = 1
	// !2 = 1*2 = 2
	// !5 = 1*2*3*4*5 = 120
	
	Definir num, i, j, factorial Como Entero
	Definir caractr Como Caracter
	
	Escribir "Ingresa un numero natural: ";
	Leer num;
	
	factorial = 1;
	caractr = "";
	
	Para i = 1 hasta num Hacer
		factorial = factorial * i
		Si i < num Entonces
			caractr = caractr+ConvertirATexto(i)+ "x";
		SiNo
			caractr = caractr+ConvertirATexto(i);
		FinSi
	FinPara
	
	Escribir "La funcion factorial del numero ", num "! = " caractr " = ", factorial;
	
	
	
FinAlgoritmo