//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el usua-
//rio. A continuación, se debe buscar un elemento dentro del arreglo (el número a buscar tam-
//bién debe ser ingresado por el usuario). El programa debe indicar la posición donde se en-
//cuentra el valor. En caso de que el número se encuentre repetido dentro del arreglo se deben
//imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso de que el número a buscar no está adentro del arreglo se debe mostrar
//un mensaje.
//
//
Algoritmo rellenarVector
	
	Definir vector, i, buscarVector, contNum, num, num2 Como Entero
	
	contNum = 0;
	
	Escribir "Ingresa el tamaño del vector: ";
	Escribir "";
	Leer num;
	Dimension vector[num];
	
	Escribir "Ingresa los elementos del vector: ";
	Para i = 0 hasta num-1 Hacer
		Leer num2
		vector[i] = num2
	FinPara
	
	Escribir "Por favor, ingresa el ELEMENTO a buscar:";
	Leer buscarVector;
	
	Para i = 0 hasta num-1 hacer
		Si buscarVector = vector[i] Entonces
			Escribir "El número ingresado no está dentro del array/arreglo";
			contNum = contNum + 1;
			
		FinSi
		Si contNum = 1 Entonces
			Escribir "La posicion del elemento es: " i;
		FinSi
	FinPara
	
FinAlgoritmo
	