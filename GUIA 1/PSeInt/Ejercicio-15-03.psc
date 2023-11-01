//Realizar un procedimiento que permita realizar la división entre dos números y muestre el co-
//ciente y el resto utilizando el método de restas sucesivas.
//
//El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
//obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
//realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 ? 13 = 37 una resta realizada
//		37 ? 13 = 24 dos restas realizadas
//		24 ? 13 = 11 tres restas realizadas

Algoritmo DividiendoElDivisor
	
	Definir dividendo, divisor Como Real
	Escribir "Ingrese el dividendo"
	Leer dividendo
	
	Escribir "Ingrese el divisor"
	Leer divisor
	
	restaSucesiva(dividendo, divisor)
	
FinAlgoritmo

SubProceso restaSucesiva (dividendo, divisor)
	
	Definir cont, rest Como Real
	cont = 0
	rest=dividendo
	
	Mientras rest-divisor>=0 Hacer
		
		rest = rest-divisor
		Escribir (rest+divisor), "-",divisor, "=", rest 
		cont=cont+1
		
	Fin Mientras
	
	Escribir "El cociente es: ", cont
	Escribir "El resto es: ", rest
	
FinSubProceso