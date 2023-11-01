//Crear un programa que dibuje una escalera de números, donde cada línea de números co-
//mience en uno y termine en el número de la línea. Solicitar la altura de la escalera al usuario al
//comenzar. Ejemplo: si se ingresa el número 3:
// 1
// 12
// 123

Algoritmo escaleraDeNumeros
	
	Definir numEscaleras Como Entero
	
	Escribir "Ingresa un número: ";
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
	