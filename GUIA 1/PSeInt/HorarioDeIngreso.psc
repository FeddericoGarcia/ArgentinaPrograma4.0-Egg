Algoritmo HorarioDeIngreso
	
	Definir inHs, inMin Como Entero
	
	Escribir "Ingrese la hora:"
	Leer inHs
	Escribir "Ingrese los minutos:"
	Leer inMin
	
	Si ( inHs = 16 ) Entonces
		Si ( inMin >= 0 ) y (inMin <= 15) Entonces
			Escribir "Llegaste a tiempo, tienes presente";
		SiNo
			Escribir "Hoy tendr�s tardanza. Recuerda avisarle a tus coaches cuando llegar�s tarde. Ma�ana te esperamos a tiempo, tu participaci�n en el equipo es VITAL";
		FinSi
	SiNo 
		Escribir "!Horario incorrecto!"
	FinSi
	
FinAlgoritmo
