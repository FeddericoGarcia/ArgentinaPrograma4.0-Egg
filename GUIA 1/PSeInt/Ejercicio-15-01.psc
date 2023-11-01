// Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
// La variable A, debe terminar con el valor de la variable B.
Algoritmo Intercambio
	
	Definir a, b Como Entero
	
	Escribir "Ingresa un número entero: ";
	Leer a;
	Escribir "Ingresa otro número entero: ";
	Leer b;
	
	Escribir "El primer numero (", a ") ahora es: ", b;
	
FinAlgoritmo

SubProceso Intercambio2(a por referencia, b por valor)
	
	Definir j Como Entero
	
	j = a;	
	a = b;
	b = j;
	
FinSubProceso
