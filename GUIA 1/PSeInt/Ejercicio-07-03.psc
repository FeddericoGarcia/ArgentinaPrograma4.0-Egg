Algoritmo Correccion_Mientras
	
	//Dada una secuencia de números ingresados por teclado que finaliza con un -1, por
	//ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,......,-1; realizar un programa que calcule el promedio de los
	//números ingresados. Suponemos que el usuario no insertará número negativos.

	Definir num, suma, i Como Entero
	Definir promedio Como Real
	Escribir "Ingresa un numero:"
	Leer num
	
	suma = 0
	promedio = 0
	i = 0
	
	Mientras num <> -1 Hacer
		
		i = i + 1
		suma = num + suma
		promedio = suma / i
		
		Escribir "Ingresa un numero: "
		Leer num
	FinMientras
	
	Escribir "La suma de los números es ", suma 
	Escribir "La cantidad de número ingresados fue ", i
	Escribir "El promedio es ", promedio 
	
FinAlgoritmo