// Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
// primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
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
	