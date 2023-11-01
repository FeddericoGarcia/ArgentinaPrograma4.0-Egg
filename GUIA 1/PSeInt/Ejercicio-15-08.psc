//Crear un programa que dibuje una escalera de n�meros, donde cada l�nea de n�meros co-
//mience en uno y termine en el n�mero de la l�nea. Solicitar la altura de la escalera al usuario al
//comenzar. Ejemplo: si se ingresa el n�mero 3:
// 1
// 12
// 123

Algoritmo escaleraDeNumeros
	
	Definir numEscaleras Como Entero
	
	Escribir "Ingresa un n�mero: ";
	Leer numEscaleras;
	
	ContarEscaleras(numEscaleras)
	
FinAlgoritmo

SubProceso ContarEscaleras(numEscaleras)
	
	Definir i, j, num2 Como Entero
	num2 = 0;
	
	Para i = 1 hasta numEscaleras 
		Para j = 1 hasta i
			Escribir Sin Saltar j;
		FinPara
		Escribir "";
	FinPara
	
FinSubProceso
	