// Realizar una función que valide si un número es impar o no. 
// Si es impar la función debe devolver un verdadero, si no es impar debe devolver falso. 
// Nota: la función no debe tener mensajes
// que digan si es par o no, eso debe pasar en el Algoritmo.

Algoritmo ParEImpar
	
	Definir num1 Como Entero
	Definir num2 Como Logico
	
	Escribir "Ingrese un numero: ";
	leer num1;
	
	num2 = impar(num1)
	
	Escribir num2
	
	
FinAlgoritmo

Funcion retorno <- Impar(num1)
	
	Definir retorno Como Logico;
	retorno = (num1 MOD 2) <> 0;	
	
FinFuncion

