Algoritmo sin_titulo
//	2. Escribir un programa que lea un n�mero entero y devuelva el n�mero de d�gitos que
//	componen ese n�mero. Por ejemplo, si introducimos el n�mero 12345, el programa
//	deber� devolver 5. Calcular la cantidad de d�gitos matem�ticamente utilizando el operador
//	de divisi�n. Nota: recordar que las variables de tipo entero truncan los n�meros o
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
