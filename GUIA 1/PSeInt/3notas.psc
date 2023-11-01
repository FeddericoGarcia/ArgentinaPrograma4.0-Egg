Algoritmo notas
	
	//Realizar un programa que pida tres notas y determine si un alumno aprueba o reprueba un
	//curso, sabiendo que aprobará el curso si su promedio de tres calificaciones es mayor o
	//igual a 70; y reprueba en caso contrario.
	
	Definir nota1, nota2, nota3, promedio Como Real
	Escribir "Cual fue la nota de Matematicas?:"
	Leer nota1
	
	Escribir "Cual fue la nota de Quimica Cuantica?:"
	Leer nota2
	
	Escribir "Cual es la nota de Fisica?:"
	Leer nota3
	
	promedio = ( nota1 + nota2 + nota3 ) / 3
	
	Si promedio >= 70 Entonces
		Escribir "Aprobaste el curso con ", promedio
	SiNo
		EScribir "Desaprobaste el curso con ", promedio
	FinSi
	
FinAlgoritmo
