//Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
//su valor más grande.

Algoritmo Diferencias
	
	Definir vector, return como entero
	Dimension vector(10)
	
	return = diferencia(vector)
	
FinAlgoritmo

Funcion return = diferencia(vector)
	
	Definir return, i, mayor, menor como entero
	
	mayor = 0;
	menor = 0;
	
	Para i = 0 hasta 9 hacer
		vector(i) = Aleatorio(0, 100);
		Escribir vector(i);
		Si i == 1 Entonces
			mayor = vector(i)
			menor = vector(i)
		FinSi
		Si vector(i) > mayor Entonces
			mayor = vector(i);
		SiNo
			Si vector(i) < menor entonces
				menor = vector(i);
			FinSi
		FinSi
	FinPara
	
	Escribir "El número mayor es: ", mayor;
	Escribir "El número menor es: ", menor;
	Escribir "La diferencia entre mayor y menor es de: ", mayor - menor;
	
FinFuncion
	