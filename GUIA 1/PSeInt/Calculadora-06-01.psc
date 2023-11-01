Algoritmo Calculadora
	
	//Construir un programa que simule un menú de opciones para realizar las cuatro
	//operaciones aritméticas básicas (suma, resta, multiplicación y división) con dos valores
	//numéricos enteros. El usuario, además, debe especificar la operación con el primer
	//carácter de la operación que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?
	//o ?m? para la multiplicación y ?D? o ?d? para la división.
	
	Definir num1, num2 Como Entero
	Definir resultado Como Real
	Definir ecuacion Como Caracter
	
	Escribir "Ingresar el primer numero: "
	Leer num1
	Escribir "Que operación matemática quieres realizar?: "
	Escribir "S - SUMA"
	Escribir "R - RESTA"
	Escribir "D - DIVISIÓN"
	Escribir "M - MULTIPLICACIÓN"
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
