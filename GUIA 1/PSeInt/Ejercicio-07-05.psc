Algoritmo Ejercicio0507
	
	//Escriba un programa que solicite dos n�meros enteros (m�nimo y m�ximo). A continuaci�n,
	//se debe pedir al usuario que ingrese n�meros enteros situados entre el m�ximo y m�nimo.
	//Cada vez que un n�mero se encuentre entre ese intervalo, se sumara uno a una variable.
	//El programa terminar� cuando se escriba un n�mero que no pertenezca a ese intervalo, y
	//al finalizar se debe mostrar por pantalla la cantidad de n�meros ingresados dentro del
	//intervalo.
	
	Definir min, max, numIn, contador Como Enteros
	Escribir "Ingresa el primer numero entero para el m�nimo: ";
	Leer min;
	
	Escribir "Ahora, un segundo numero entero para el m�ximo: ";
	Leer max;
	
	Escribir "Ingresa el tercer numero: "
	Leer numIn
	
	contador = 0
	Mientras (numIn > min) y (numIn < max) Hacer
		contador = contador + 1
		Escribir "Vuelve a ingresar otro numero: "
		Leer numIn
	FinMientras
	
	Escribir "La cantidad de intentos es: ", contador
	
	
FinAlgoritmo