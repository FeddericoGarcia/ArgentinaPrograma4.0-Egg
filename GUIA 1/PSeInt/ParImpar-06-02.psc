Algoritmo parImpar
	
	//Realizar un programa que, dado un n�mero entero, visualice en pantalla si es par o impar.
	//En caso de que el valor ingresado sea 0, se debe mostrar "el n�mero no es par ni impar".
	//Nota: investigar la funci�n mod de PSeInt
	
	Definir numer Como Entero
	Escribir "Por favor, ingresa un numero y te dire de que tipo es: ";
	Leer numer;
	
	Si numer = 0 Entonces
		Escribir "El n�mero no es par ni impar";
	SiNo
		Si (numer mod 2 = 0) Entonces
			Escribir "Tu numero es PAR!";
		SiNo
			Escribir "Tu numero es IMPAR!";
		FinSi
	FinSi

	
	
FinAlgoritmo
