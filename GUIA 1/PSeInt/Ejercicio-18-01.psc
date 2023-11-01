//Define un vector que alojará números enteros y otro de cadena. Dimensiona ambos de la longitud
//que tu desees. Ahora en lapiz y papel, escribe la dimensión de tus vectores y sus subíndices.

Algoritmo vectores
	
	Definir varVectoresNum, i Como Entero
//	Definir varVectoresCar Como Caracter
	
	Dimension varVectoresNum[4];
//	Dimension varVectoresCar[4];
	
	varVectoresNum[0] = 0;
	varVectoresNum[1] = 2;
	varVectoresNum[2] = 4;
	varVectoresNum[3] = 6;
	
//	varVectoresCar[0] = F;
//	varVectoresCar[1] = E;
//	varVectoresCar[2] = D;
//	varVectoresCar[3] = E;
	
	Para i = 0 Hasta 3 Hacer
		varVectoresNum[i] = i;
	FinPara
	Escribir varVectoresNum[3];
	
FinAlgoritmo
