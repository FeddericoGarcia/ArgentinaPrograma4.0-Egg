//	Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//	Para ello se deber� utilizar un procedimiento llamado diaAnterior que reciba una fecha repre-
//	entada a trav�s de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede asumir que
//	dia, mes y anio representan una fecha v�lida. Realice pruebas de escritorio para los valores
////	dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.

Algoritmo diasDelAnio
	
	Definir dia, mes, anio Como Entero
	
	Escribir "Ingresa un d�a: ";
	leer dia;
	Escribir "Ingresa un mes: ";
	leer mes; 
	Escribir "Ingresa un anio: ";
	leer anio;
	
	diaAnterior(dia, mes, anio);
	
	Escribir "La fecha anterior es: " dia "/" mes "/" anio;
	
FinAlgoritmo

SubProceso diaAnterior(dia por referencia, mes por referencia, anio por referencia)
	
	Si (dia >= 2) y (dia <= 30) Entonces
		dia = dia - 1		
	FinSi
	Si (dia = 1) y (mes >= 2) y (mes <> 3) Entonces
		dia = 31;
		mes = mes - 1		
	FinSi
	Si (dia = 1) y (mes = 3) Entonces
		dia = 29;
		mes = mes - 1;
	FinSi
	Si (dia = 1) y (mes = 1) Entonces
		dia = 31;
		mes = 12;
		anio = anio - 1		
	FinSi
	
FinSubProceso
	