Algoritmo Correccion_Mientras
	
	// Escriba un programa en el cual se ingrese un valor l�mite positivo, y a continuaci�n solicite
	// n�meros al usuario hasta que la suma de los n�meros introducidos supere el l�mite inicial.
	
	Definir limite, num, i Como Enteros
	
	limite = 50
	
	Escribir "Ingresa un numero:";
	Leer num
	i = num
	
	Mientras i < limite Hacer
		Escribir "Vuelve a ingresar un numero:";
		Leer num
		i = i + num
	FinMientras
	
	Escribir "Superaste el limite permitido";
	
	
FinAlgoritmo