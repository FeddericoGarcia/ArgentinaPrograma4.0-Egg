////Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
////usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.

Algoritmo sin_titulo
	Definir cant, v1, i, acum Como Entero
	acum=0
	
	Escribir "Ingrese el tamaño de su vector:"
	Leer cant
	
	Dimension v1[cant]
	
	Para i=0 Hasta cant-1 Hacer
		Escribir "Ingrese un numero para almacenar en la posicion ", i, " del vector:"
		Leer v1[i]
		acum=acum+v1[i]
	FinPara
	
	Escribir "El promedio de la suma de todos los valores ingresados es ", acum/cant
FinAlgoritmo
