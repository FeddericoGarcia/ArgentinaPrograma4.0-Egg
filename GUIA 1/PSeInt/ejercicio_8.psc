//Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha repre-
//sentada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede asumir que
//dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para los valores
//dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.

Algoritmo ejercicio_8
	Definir dia , mes , year Como Entero
	Escribir "Ingrese una fecha."
	Escribir "Día:"
	Leer dia
	Escribir "Mes:"
	Leer mes
	Escribir "Año:"
	Leer year
	diaAnterior(dia,mes,year)
	Escribir "La fecha anterior es: " dia "/" mes "/" year
FinAlgoritmo

SubProceso diaAnterior(di Por Referencia,me Por Referencia,an Por Referencia)
	Si (di >= 2) y (di <= 30) Entonces
		di = di - 1
		me = me
		an = an
	Fin Si
	Si (di = 1) y (me >= 2) y (me <> 3) Entonces
		di = 30
		me = me - 1
		an = an
	Fin Si
	Si (di = 1) y (me = 3) Entonces
		di = 28
		me = me - 1
		an = an
	Fin Si
	Si (di = 1) y (me = 1) Entonces
		di = 31
		me = 12
		an = an - 1
	Fin Si
FinSubProceso