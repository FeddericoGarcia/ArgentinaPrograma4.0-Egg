//13. Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//capicúa o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
//		transformar el numero a cadena para realizar el ejercicio.

Funcion Capicua(num)
	Definir unidad, centena, decena, mil, miles Como Real
	Definir contador, num2 Como Entero
	num2 = num
	contador = 0
	Hacer
		
		num2 = trunc(num2/10)
		contador = contador +1
		
	Mientras que num2 > 0
	
	miles = num/100
	miles = trunc(miles/100)
	
	mil = num mod 10000
	mil = trunc(mil/1000)
		
	centena = num mod 1000
	centena = trunc(centena/100)
	
	decena = num mod 100
	decena = trunc(decena/10)
		
	unidad = ((num%10))
	unidad = trunc(unidad)
	
	Escribir miles
	Escribir mil
	Escribir centena
	Escribir decena 
	Escribir unidad
	
	si contador = 2 Entonces
		si decena = unidad
			Escribir "Es Capicua"
		SiNo
			Escribir "No es capicua"
		FinSi
	FinSi
	
	si contador = 3 Entonces
		si centena = unidad
			Escribir "Es Capicua"
		SiNo
			Escribir "No es capicua"
		FinSi
	FinSi
	
	si contador = 4 Entonces
		si mil = unidad y decena = centena Entonces
			Escribir "Es Capicua"
		SiNo
			Escribir "No es capicua"
		FinSi
	FinSi
	
	si contador = 5 Entonces
		si miles = unidad y mil = decena Entonces
			Escribir "Es Capicua"
		SiNo
			Escribir "No es capicua"
		FinSi
	FinSi
	
FinFuncion

Algoritmo Proporciones
	
	Definir num Como Entero
	
	Escribir "Ingrese un número de cinco cifras"
	Leer num

	Capicua(num)
	
FinAlgoritmo
