//	Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios. Después,
//	hacer una función que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
//	función debe devolver el resultado de esta validación, para mostrar el mensaje en el algoritmo.
//	Nota: recordar el uso de las variables de tipo lógico.

Algoritmo RellenarVectores
	
	Definir vector1, vector2, i, j, num Como Entero
	Definir return Como Logico
	Escribir "Ingresa el tamaño del vector: ";
	Leer num;
	Dimension vector1(num), vector2(num)
	
	rellenar(vector1, vector2, num)
	return = returnRelleno(vector1, vector2, num)
	
FinAlgoritmo


SubProceso rellenar(vector1, vector2, num)
	Definir i, num2, num3 Como Entero
	
	Para i = 0 hasta num - 1 Hacer
		vector1(i) = Aleatorio(0, 1)
		vector2(i) = Aleatorio(0, 1)
		Escribir  "Vector 1: " vector1(i);
		Escribir  "Vector 2: " vector2(i);
		Escribir ""
	FinPara
	
FinSubProceso


Funcion return = returnRelleno(vector1, vector2, num)
	
	Definir return Como Logico
	Definir i, cont Como Entero
	
	cont = 0;
	return = Falso;
	
	Para i = 0 hasta num-1 Hacer
		Si vector1(i) = vector2(i)
			cont = cont + 1;
		FinSi
	FinPara
	
	Si cont = num 
		return = Verdadero;
		Escribir "¿Hay números iguales?: ", return
	SiNo
		Escribir "¿Hay números iguales?: ", return
	FinSi
	
FinFuncion
	