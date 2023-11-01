Algoritmo sin_titulo
//	2. Escribir un programa que lea un número entero y devuelva el número de dígitos que
//	componen ese número. Por ejemplo, si introducimos el número 12345, el programa
//	deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el operador
//	de división. Nota: recordar que las variables de tipo entero truncan los números o
//	resultados.
	
	Definir num Como Entero
	Definir contador Como Real
	
	Escribir "Indique un numero entero"
	Leer num
	contador = 0
	
	Hacer
		
		num = trunc(num/10)
		contador = contador +1
		
	Mientras que num > 0
	
	Escribir "La cantidad de digitos es: " contador 
	
FinAlgoritmo
