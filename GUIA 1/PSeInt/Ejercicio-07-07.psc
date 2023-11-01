Algoritmo Ejercicio0707
	
	//Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
	//calcula seg�n el siguiente criterio: la parte pr�ctica vale el 10%; la parte de problemas vale
	//el 50% y la parte te�rica el 40%. El programa leer� el nombre del alumno, las tres notas
	//obtenidas, mostrar� el resultado por pantalla, y a continuaci�n volver� a pedir los datos del
	//siguiente alumno hasta que el nombre sea una cadena vac�a. Las notas deben estar
	//comprendidas entre 0 y 10, y si no est�n dentro de ese rango no se imprimir� el promedio
	//y se mostrar� un mensaje de error.
	
	Definir alumno Como Caracter
	Definir nota1, nota2, nota3 Como Real
	Definir promedio Como Real
	
	nota1 = 0
	nota2 = 0
	nota3 = 0
	
	Escribir "�Cual es el nombre del alumno?: "
	Leer alumno;
	
	Mientras alumno <> "" Hacer
		
		Escribir "Cual es la primera nota?:"
		Leer nota1;
		
		Si (nota1 >= 0) y (nota1 <= 10) Entonces
			nota1 = nota1 * 0.1
			Escribir "Ingresa la segunda nota:";
			Leer nota2;
			Si (nota2 >= 0) y (nota2 <= 10) Entonces
				nota2 = nota2 * 0.5;
				Escribir "Y la tercera nota:"
				Leer nota3;
				Si (nota3 >= 0) y (nota3 <= 10) Entonces
					nota3 = nota3 * 0.4;
				FinSi
			FinSi
		SiNo
			Escribir "Los numeros ingresados no son validos";
		FinSi
		
		promedio = nota1 + nota2 + nota3
		
		Escribir "El alumno ", alumno, " tiene un promedio de: ", promedio
		
		Escribir "�Cual es el nombre del alumno?: "
		Leer alumno;
		
	FinMientras
	
FinAlgoritmo
