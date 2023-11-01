Funcion total=PagoJornal(turno,horas,festivo)
	Definir total como real
	total=0
	si turno=="diurno"
		total=horas*90
		si festivo=="si"
			total=total+horas*(90*0.10)
		FinSi
	SiNo
		si turno=="nocturno"
			total=horas*125
			si festivo=="si"
				total=total+horas*(125*0.15)
			FinSi
		FinSi
	FinSi
FinFuncion




Algoritmo Jornales
	
	definir jornal, horas, qant, i Como real
	definir nombre, dia, turno, festivo Como Caracter
	
	Escribir "Cantidad de trabajadores"
	leer qant
	i=1
	
	Mientras  i <= qant hacer
		Escribir "Ingrese nombre del trabajador"
		leer nombre
		Escribir "Día de la semana trabajado"
		leer dia
		Escribir "Es festivo? (si/no)"
		leer festivo
		Escribir "turno trabajado (diurno/nocturno)"
		leer turno
		Escribir "Cantidad de horas trabajadas"
		leer horas
		i=i+1
		
		
		jornal = PagoJornal (turno,horas,festivo)
		Escribir "El jornal diario de " ,nombre " es: $" jornal
		
	FinMientras
	
	
FinAlgoritmo