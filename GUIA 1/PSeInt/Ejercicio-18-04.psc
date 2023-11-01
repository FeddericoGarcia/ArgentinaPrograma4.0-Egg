//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el usua-
//rio. A continuaci�n, se debe buscar un elemento dentro del arreglo (el n�mero a buscar tam-
//bi�n debe ser ingresado por el usuario). El programa debe indicar la posici�n donde se en-
//cuentra el valor. En caso de que el n�mero se encuentre repetido dentro del arreglo se deben
//imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso de que el n�mero a buscar no est� adentro del arreglo se debe mostrar
//un mensaje.
//
//
Algoritmo rellenarVector
	
	Definir vector, i, buscarVector, contNum Como Entero
	Dimension vector[5];
	
	Escribir "Ingresa 5 elementos n�mericos: ";
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
			Escribir "El n�mero ingresado no est� dentro del array/arreglo";
			i = 4;
		FinSi
	FinPara
	
FinAlgoritmo
	