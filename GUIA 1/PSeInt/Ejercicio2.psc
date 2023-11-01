Algoritmo Correccion_Mientras
//	2. Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación solicite
//	números al usuario hasta que la suma de los números introducidos supere el límite inicial.
	
	Definir limite, num, acumulador Como Entero
		
	Escribir "Ingrese un numero"
	Leer num
	
	limite = 10
	acumulador = num
	
	Mientras acumulador < limite Hacer
		Escribir "Vuelva a ingresar un numero"
		Leer num
		acumulador = acumulador + num
	FinMientras

	Escribir "Supero el limite permitido"
	
FinAlgoritmo
