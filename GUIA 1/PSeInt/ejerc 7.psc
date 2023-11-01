Algoritmo sin_titulo
	Definir  num1 Como cadena 
	Definir num3,long Como Entero
	Hacer
		escribir "ingrese el numero :"
		leer num1
		long=Longitud(num1)
	Mientras Que long<1 o long>3
	num3=devolvernum(num1)
	Escribir  "el numero ingresado es ",num3
	
FinAlgoritmo
Funcion num2=devolvernum(num1 Por Referencia)
	Definir num2 Como Entero
num2=convertiranumero(num1)
FinFuncion
	