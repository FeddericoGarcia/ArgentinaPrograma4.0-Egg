Algoritmo Ejercicio0507
	
	//Escriba un programa que solicite al usuario números decimales mientras que el usuario
	//escriba números mayores al primero que se ingresó. Por ejemplo: si el usuario ingresa
	//como primer número un 3.1, y luego ingresa un 4, el programa debe solicitar un tercer
	//número. El programa continuará solicitando valores sucesivamente mientras los valores
	//ingresados sean mayores que 3.1, caso contrario, el programa finaliza.
	
	Definir num1, num2 Como Real
	Escribir "Escribir un numero decimal: ";
	Leer num1;
	
	num2 = num1 + 1
	
	Mientras num1 < num2 Hacer
		Escribir "Ingresar otro numero: ";
		Leer num2;
		
	FinMientras
	
	Escribir "Programa Finalizado"
	
	
FinAlgoritmo