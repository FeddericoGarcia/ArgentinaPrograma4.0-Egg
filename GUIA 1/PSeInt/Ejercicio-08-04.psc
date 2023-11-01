Algoritmo Contador
	
	//Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
	//programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de
	//todos ellos.
	//Para poder lograr, por ejemplo, el máximo inicializaremos una variable en cero llamada
	//numeroMaximo. Luego iremos comparando cada número que se ingresa con esta variable.
	//Si es mayor reemplazaremos el valor de numeroMaximo. Por ejemplo, si 5 > 0 entonces el
	//máximo entre estos números será 5. Si luego ingreso el número 2, se evalúa 2 > 5 lo que
	//resultará falso y por lo tanto el valor 5 de numeroMaximo no se reemplaza. Una lógica
	//similar tendrá el mínimo.
	
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