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
	
	Definir vector, i, buscarVector, contNum Como Entero
	Dimension vector[5];
	
	Escribir "Ingresa 5 elementos númericos: ";
	Escribir "";
	Para i = 0 hasta 4 Hacer
		Leer vector[i];
	FinPara
	
	Escribir "Por favor, ingresa el ELEMENTO a buscar:";
	Leer buscarVector;
	
	Para i = 0 hasta 4 hacer
		Si buscarVector = vector[i] Entonces
			Escribir "La posicion del elemento es: " i+1;
		SiNo
			Escribir "El número ingresado no está dentro del array/arreglo";
			i = 4;
		FinSi
	FinPara
	
FinAlgoritmo
	