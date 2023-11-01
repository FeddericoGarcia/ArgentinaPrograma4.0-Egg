//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
//muestre por pantalla.

Algoritmo RellenarVector2
	
	Definir vector1, vector2, num, i como entero
	
	Escribir "Ingresa el numero de relleno para los vectores (5 de preferencia)";
	Leer num;
	
	Dimension vector1(num), vector2(num)
	
	Para i = 0 hasta num-1 Hacer
		vector1(i) = Aleatorio(0, 50);
		vector2(i) = Aleatorio(0, 50);
		
		Escribir "*****"
		Escribir "Vector uno es: ", vector1(i);
		Escribir "Vector dos es: ", vector2(i);
		Escribir "*****"
		
	FinPara
	
FinAlgoritmo
