// Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
// que el primer número múltiplo del segundo y devuelva verdadero si el primer número es múlti-
// plo del segundo, sino es múltiplo que devuelva falso.

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

