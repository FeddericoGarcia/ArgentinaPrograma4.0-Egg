Algoritmo IngresoNumPositivo
	
	//  Se debe realizar un programa que:
	// 1o) Pida por teclado un número (entero positivo).
	// 2o) Pregunte al usuario si desea introducir o no otro número.
	// 3o) Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
	// 4o) Muestre por pantalla la suma de los números introducidos por el usuario.
	
	Definir num1, suma Como Entero
	Definir usuario Como Caracter
	
	suma = 0
	
	Hacer
		Escribir "Ingrese un numero entero positivo: ";
		Leer num1;
		
		Escribir "¿Deseas introducir otro numero?: ";
		Leer usuario;
		
		suma = suma + num1;
		
	Mientras Que usuario <> "n" 
	
	Escribir "La suma es: ", suma;
	
	
FinAlgoritmo