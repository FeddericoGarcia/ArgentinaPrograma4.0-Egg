//Programe una función que calcule el producto de un arreglo de números enteros. Para esto
//	imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
//		igual a (V[1]*V[2]*V[3]*V[4])

Algoritmo SumandoVectores
	
	Definir vector, num, return como entero
	
	Escribir "Ingrese el tamaño del vector: ";
	Leer num;
	
	Dimension vector[num]
	return = sumaVectores(vector, num)
	
	Escribir "El producto de los elementos del vector da un total de: " return;
	
FinAlgoritmo

Funcion return = sumaVectores(vector, num)
	
	Definir return, i, num2, sumaV Como Entero
	
	return = 0;
	sumaV = 0;
	
	Para i = 0 hasta num-1 hacer
		Escribir "Ingresa los elementos del vector: ";
		Leer num2;
		vector(i) = num2;
	FinPara
	
	Para i = 0 hasta num-1 Hacer
		return = return + (vector(i) * vector(i));
		i = 0 - 1;
//		sumaV = vector(i)
//		return = i * (sumaV * vector(i))
//		Escribir return
//		Escribir sumaV
	FinPara
	
	
FinFuncion
	