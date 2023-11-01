//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el usua-
//rio. A continuación, se deberá crear una función que reciba el vector y devuelva el valor más
//grande del vector.

Algoritmo Relleno
	
	Definir vectorNumb, i, return, num, num2 Como Entero
	
	Escribir "Ingresa el tamaño del vector: ";
	leer num;
	Dimension vectorNumb[num]
	Escribir "Ingresa los elementos del vector: ";
	Para i = 0 hasta num-1 hacer
		Leer vectorNumb(i);
		num2 = vectorNumb(i); 
	FinPara
	
	return = functionVector(vectorNumb, num)
	Escribir "El numero más grande es: " return;

FinAlgoritmo

Funcion return = functionVector(vectorNumb, num por referencia)
	
	Definir return, i Como Entero
	
	return = 0;
	
	Para i = 0 hasta num-1 hacer
		Si vectorNumb(i) > return
			return = vectorNumb(i)
		FinSi
	FinPara
	
FinFuncion
	