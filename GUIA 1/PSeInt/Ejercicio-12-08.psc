// Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
// primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
// 3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.
	
Algoritmo NumeroPrimo
	
	Definir num Como Entero
	
	Escribir "Ingresa un numero: "
	Leer num;
	
	numPrimo(num);
	
FinAlgoritmo

Funcion numPrimo(num por valor)
	
	Definir i, j Como Entero
	
	j = 0;
	
	Para i = 1 hasta num Hacer
		Si (num mod i = 0) Entonces
			j = j + 1;
		FinSi
	FinPara
	
	Si j = 2 Entonces
		Escribir "El numero ", num " es PRIMO";
	SiNo
		Escribir "El numero ", num " NO ES PRIMO";
	FinSi
	
FinFuncion
	