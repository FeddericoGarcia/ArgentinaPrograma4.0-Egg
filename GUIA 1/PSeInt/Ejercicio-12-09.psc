// Realizar una función que calcule y retorne la suma de todos los divisores del número n distin-
// tos de n. El valor de n debe ser ingresado por el usuario.

Algoritmo CalcularYRetornar
	
	Definir num, j Como Entero
	
	Escribir "Ingresá un número";
	Leer num;
	
	j = Sumando(num)
	Escribir "La suma de los divisores es: ", j
	
FinAlgoritmo

Funcion  j = Sumando(num por referencia)
	
	Definir i, j Como Entero
	
	j = 0;
	
	Para i = 1 hasta num - 1 Hacer
		Si (num MOD i = 0) Entonces
			j = i + j;
		FinSi
	FinPara
	

FinFuncion
	