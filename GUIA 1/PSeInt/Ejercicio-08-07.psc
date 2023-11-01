Algoritmo ParEImpar
	
	//  Hacer un algoritmo para calcular la media de los números pares e impares, sólo se
	// ingresará diez números.
	
	Definir sumPar, sumImpar, numIn, suma, contVueltas, contPar, contImpar Como Entero
	
	contPar = 0;
	sumPar = 0;
	contImpar = 0;
	sumImpar = 0;
	contVueltas= 0;
	
	Hacer
		Escribir "Ingresa un numero: "
		Leer numIn
		
		Si (numIn mod 2) = 0 Entonces
			sumPar = sumPar + numIn;
			contPar = contPar + 1;
		SiNo
			sumImpar = sumImpar + numIn;
			contImpar = contImpar + 1;			
		FinSi
		
		contVueltas = contVueltas + 1;

		Escribir "El numero de vuelta es: ", contVueltas;
		
	Mientras Que contVueltas < 10
	
	Escribir "La media de los numeros PARES es: ", sumPar / contPar
	Escribir "La media de los numeros IMPARES es: ", sumImpar / contImpar
	
FinAlgoritmo