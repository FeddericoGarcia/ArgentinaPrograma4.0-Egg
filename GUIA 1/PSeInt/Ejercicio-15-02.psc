// Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
//m�xima y m�nima. 
// Crear un programa principal, que, utilizando un procedimiento, vaya pi-
//diendo la temperatura m�xima y m�nima de n d�as y vaya mostrando la media de cada d�a. 
// El programa pedir� el n�mero de d�as que se van a introducir.

Algoritmo ASD
	
	Definir dias, max, min, i como entero
	
	Escribir "Ingres� la cantidad de d�as: ";
	leer dias;
	
	Para i = 1 hasta dias 
		
		Escribir "Ingres� la temperatura m�xima: ";
		Leer max;
		Escribir "Ingres� la temperatura m�nima: ";
		Leer min;
		temperatura(max, min, i);
		
	FinPara
	
FinAlgoritmo

SubProceso temperatura(max, min, i)

	Escribir "La temperatura media es de: " (min+max)/2 "�C";
	
FinSubProceso
	