// Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
//máxima y mínima. 
// Crear un programa principal, que, utilizando un procedimiento, vaya pi-
//diendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. 
// El programa pedirá el número de días que se van a introducir.

Algoritmo ASD
	
	Definir dias, max, min, i como entero
	
	Escribir "Ingresá la cantidad de días: ";
	leer dias;
	
	Para i = 1 hasta dias 
		
		Escribir "Ingresá la temperatura máxima: ";
		Leer max;
		Escribir "Ingresá la temperatura mínima: ";
		Leer min;
		temperatura(max, min, i);
		
	FinPara
	
FinAlgoritmo

SubProceso temperatura(max, min, i)

	Escribir "La temperatura media es de: " (min+max)/2 "°C";
	
FinSubProceso
	