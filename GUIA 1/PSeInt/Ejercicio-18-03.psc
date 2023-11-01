//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al arre-
//glo.

Algoritmo sumaNumReales
	
	Definir numReales, sumaNum, restaNum, multiNum Como Real
	Definir i, j Como Entero
	
	Dimension numReales[10];
	
	Escribir "Ingresa 10 números reales/decimales: ";
	
	Para i = 0 hasta 9 Hacer
		Leer numReales[i];
	FinPara
	
	multiNum = numReales[0];
	sumaNum = 0;
	restaNum = 0;
	
	Para i = 0 hasta 9 Hacer
		sumaNum = sumaNum + numReales[i];
	FinPara
	Escribir "La suma de los elementos es: " sumaNum;
	
	Para i = 0 hasta 9 Hacer
		restaNum = restaNum - numReales[i];
	FinPara
	Escribir "La resta de los elementos es: " restaNum;
	
	Para i = 0 hasta 9 Hacer
		multiNum = multiNum * numReales[i];
	FinPara
	Escribir "La multi de los elementos es: " multiNum;
	
FinAlgoritmo



