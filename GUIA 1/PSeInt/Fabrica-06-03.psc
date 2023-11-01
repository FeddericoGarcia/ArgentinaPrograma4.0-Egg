Algoritmo Fabrica
	
	//Escriba un programa para obtener el grado de eficiencia de un operario de una f�brica de
	//tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un per�odo
	//de prueba:
	//? Producir menos de 200 tornillos defectuosos.
	//? Producir m�s de 10000 tornillos sin defectos.
	//? El grado de eficiencia se determina de la siguiente manera:
	//? Si no cumple ninguna de las condiciones, grado 5.
	//? Si s�lo cumple la primera condici�n, grado 6.
	//? Si s�lo cumple la segunda condici�n, grado 7.
	//? Si cumple las dos condiciones, grado 8
	
	Definir tornillosDef, tornillosNoDef Como Entero
	Escribir "�Cuantos tornillos defectuosos hay?"
	Leer tornillosDef
	
	Escribir "Y cuantos tornillos sin defecto?"
	Leer tornillosNoDef
	
	Si (tornillosDef <= 200) y (tornillosNoDef <= 10000) Entonces
		Escribir "Empleado de nivel/grado: 6 "
	SiNo
		Si (tornillosDef >= 200) y (tornillosNoDef >= 10000)
			Escribir "Empleado de nivel/grado: 7 "
		SiNo
			Si (tornillosDef <= 200) y (tornillosNoDef >= 10000)
				Escribir "Empleado de nivel/grado: 8 "
			SiNo
				Escribir "Empleado de nivel/grado 5 "
			FinSi			
		FinSi		
	FinSi
	
	
FinAlgoritmo
