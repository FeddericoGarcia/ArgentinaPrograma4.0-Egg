//Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
//muestre por pantalla.

Algoritmo Relleno
	
	Definir vectorNumb, i Como Entero
	
	Dimension vectorNumb[5]
	
	Escribir "Ingresa 5 números: ";
	Para i = 0 hasta 4 Hacer
		Leer vectorNumb[i];
	FinPara
	
	Escribir "El sub indice con su elemento debajo:";
	Para i = 0 hasta 4 Hacer
		Escribir "-INDICE/SUBINDICE-  " i ;
		Escribir "-ELEMENTO-          " vectorNumb(i);
	FinPara
	
FinAlgoritmo
	