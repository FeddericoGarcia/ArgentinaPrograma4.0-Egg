Algoritmo Calculadora
	
	//Construir un programa que simule un men� de opciones para realizar las cuatro
	//operaciones aritm�ticas b�sicas (suma, resta, multiplicaci�n y divisi�n) con dos valores
	//num�ricos enteros. El usuario, adem�s, debe especificar la operaci�n con el primer
	//car�cter de la operaci�n que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?
	//o ?m? para la multiplicaci�n y ?D? o ?d? para la divisi�n.
	
	Definir num1, num2 Como Entero
	Definir resultado Como Real
	Definir ecuacion Como Caracter
	
	Escribir "Ingresar el primer numero: "
	Leer num1
	Escribir "Que operaci�n matem�tica quieres realizar?: "
	Escribir "S - SUMA"
	Escribir "R - RESTA"
	Escribir "D - DIVISI�N"
	Escribir "M - MULTIPLICACI�N"
	Leer ecuacion
	ecuacion = Mayusculas( ecuacion )
	Escribir "Ingresa el segundo numero: "
	Leer num2
	
	Segun ecuacion hacer
		"S":
			Escribir "La suma es: ", num1 + num2
		"R":
			Escribir "La resta es: ", num1 - num2
		"D":
			Escribir "La division es: ", num1 / num2
		"M":
			Escribir "La multiplicacion es: ", num1 * num2
	FinSegun
	
FinAlgoritmo
