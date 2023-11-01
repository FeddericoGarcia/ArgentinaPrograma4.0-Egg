Algoritmo Ejercicio0708
	
	//Escribir un programa que calcule cuántos dígitos tiene un número entero positivo sin
	//convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
	//investigar la función trunc().
	
	Definir num Como Entero
	Definir num2 Como Real
	
	Escribir "Ingresa un numero:"
	Leer num
	
	num2 = 0
	
	Mientras num > 0 Hacer
		num = trunc(num / 10)
		num2 = num2 + 1
	FinMientras
	
	Escribir num2
	
	
FinAlgoritmo
