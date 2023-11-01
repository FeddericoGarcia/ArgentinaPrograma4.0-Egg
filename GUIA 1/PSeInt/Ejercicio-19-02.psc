//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.

Algoritmo rellenoNum
	
	Definir num, i, vector, sumaVector Como Entero
	
	Escribir "Ingresa el tamaño del vector: ";
	Leer num
	sumaVector = 0;
	Dimension vector(num)
	
	Para i = 0 hasta num-1 Hacer
		Escribir "Ingresa los elementos del vector: (números enteros hasta " num - i " )";
		Leer vector(i);
		sumaVector = sumaVector + vector(i)
	FinPara
	
	Escribir "El promedio de los elementos del vector es de: ", sumaVector/num
	
FinAlgoritmo
