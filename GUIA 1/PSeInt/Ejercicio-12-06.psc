// Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario, validando
// que el primer n�mero m�ltiplo del segundo y devuelva verdadero si el primer n�mero es m�lti-
// plo del segundo, sino es m�ltiplo que devuelva falso.

Algoritmo Multiplo
	
	Definir num1, num2 Como Entero
	Definir num3 Como Logico
	
	Escribir "Ingrese un numero: ";
	leer num1;
	Escribir "Ingrese otro numero: ";
	leer num2;
	
	num3 = EsMultiplo(num1, num2)
	
	Escribir num3
	
FinAlgoritmo

Funcion retorno <- EsMultiplo(num1, num2)
	
	Definir retorno Como Logico;
	retorno = (num1 MOD num2 = 0); 
	
FinFuncion

