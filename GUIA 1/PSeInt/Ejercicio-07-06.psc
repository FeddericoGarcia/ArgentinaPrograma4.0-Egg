Algoritmo Ejercicio0507
	
	//Escriba un programa que solicite al usuario n�meros decimales mientras que el usuario
	//escriba n�meros mayores al primero que se ingres�. Por ejemplo: si el usuario ingresa
	//como primer n�mero un 3.1, y luego ingresa un 4, el programa debe solicitar un tercer
	//n�mero. El programa continuar� solicitando valores sucesivamente mientras los valores
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