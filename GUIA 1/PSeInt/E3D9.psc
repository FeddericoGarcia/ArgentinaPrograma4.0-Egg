Algoritmo E3D9
	Definir nombre, nombreMax Como Caracter;
	Definir nTp, nExp, nPar, num, i, porc, max, total Como Entero;
	Definir  prome Como Real;
	Escribir "Ingrese cantidad de alumnos";
	Leer num;
	porc = 0;
	total = 0;
	max = 0;
	Para i <- 1 Hasta num Con Paso 1 Hacer
		Escribir "Ingresar nombre de alumno";
		Leer nombre;
		Escribir Sin Saltar "Ingrese su nota de trabajo practico integrador: ";
		Leer nTP;
		Escribir Sin Saltar "Ingrese su nota de exposicion";
		Leer nExp;
		Escribir Sin Saltar "Ingrese su nota de parcial";
		Leer nPar;
		prome = nTP * 0.35 + nExp * 0.25 + nPar * 0.4;
		Si prome >= 6.5 Entonces
			Escribir "Aprobaste el curso, con ", prome;
		SiNo
			Escribir "Desaprobaste el curso, con ", prome;
		Fin Si
		Si prome > 7.5 Entonces
			porc = porc + 1;
		SiNo
			Si prome >= 4 y prome <= 7.5 Entonces
				total = total + 1;
			Fin Si
		Fin Si 
		Si nExp > max Entonces
			max = nExp;
			nombreMax = nombre;
		Fin Si
	Fin Para
	Escribir "El porcentaje de estudiantes con mas de 7.5 de nota final es: ", ( porc / num ) * 100 ;
	Escribir "El total de estudiantes con nota entre 4 y 7.5 de nota final es: ", total ;
	Escribir "El alumnos ", nombreMax," con nota de exposion ", max," es el que tiene la mayor nota de esta ultima";
FinAlgoritmo
