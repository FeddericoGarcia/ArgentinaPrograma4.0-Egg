Algoritmo PrimerosNumerosPares
	
	//  Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
	// decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
	// de los siguientes valores: 2+4+6+8+10.
	
	Definir num, suma, contVueltas, suma2 Como Entero
	
	Escribir "Ingrese la cantidad de numeros pares que desea sumar: ";
	Leer num;
	
	suma = 0;
	suma2 = 0
	contVueltas = 0;
	
	Hacer 
		
		suma = suma + 2;
		suma2 = suma2 + suma;
		contVueltas = contVueltas + 1;
		Escribir "el numero de suma: ", suma
		Escribir "el numero que va sumando: ", suma2
		Escribir "Vuelta numero: " contVueltas
		
	Mientras Que contVueltas < num;
	
	
	Escribir "La suma es: ", suma2
	
FinAlgoritmo