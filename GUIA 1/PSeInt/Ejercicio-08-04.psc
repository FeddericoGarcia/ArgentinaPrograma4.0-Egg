Algoritmo Contador
	
	//Escribir un programa que lea n�meros enteros hasta teclear 0 (cero). Al finalizar el
	//programa se debe mostrar el m�ximo n�mero ingresado, el m�nimo, y el promedio de
	//todos ellos.
	//Para poder lograr, por ejemplo, el m�ximo inicializaremos una variable en cero llamada
	//numeroMaximo. Luego iremos comparando cada n�mero que se ingresa con esta variable.
	//Si es mayor reemplazaremos el valor de numeroMaximo. Por ejemplo, si 5 > 0 entonces el
	//m�ximo entre estos n�meros ser� 5. Si luego ingreso el n�mero 2, se eval�a 2 > 5 lo que
	//resultar� falso y por lo tanto el valor 5 de numeroMaximo no se reemplaza. Una l�gica
	//similar tendr� el m�nimo.
	
	Definir numIn, numeroMaximo, numMinimo, suma, contadorr Como Entero
	
	numeroMaximo = 0;
	numMinimo = 0;
	suma = 0;
	contadorr = -1;
	
	Hacer 
		Escribir "Escribe un numero: ";
		Leer numIn;
		
		suma = suma + numIn;
		Si contadorr = -1 Entonces
			numeroMaximo = numIn
			numMinimo = numIn
		FinSi
		Si numIn > numeroMaximo Entonces
			numeroMaximo = numIn;
		FinSi
		Si (numIn < numMinimo) y (numIn <> 0) Entonces
			numMinimo = numIn;
		FinSi
		contadorr = contadorr + 1;
	Mientras Que numIn <> 0
	
	Escribir "El numero maximo es: ", numeroMaximo, ", el numero minimo es: ", numMinimo, ", y el promedio es: ", suma / contadorr;
	
FinAlgoritmo