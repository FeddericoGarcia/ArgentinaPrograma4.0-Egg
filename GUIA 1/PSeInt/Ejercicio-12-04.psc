// Realizar una función que calcule la suma de dos números. En el algoritmo principal le pedire-
// mos al usuario los dos números para pasárselos a la función. Después la función calculará la
// suma y lo devolverá para imprimirlo en el algoritmo.

Algoritmo Calcular
	
	Definir num1, num2, i Como Enteros
	
	Escribir "Ingresa un numero: "
	Leer num1;
	Escribir "Ingresa otro numero: "
	Leer num2;
	
	i = Sumando(num1, num2)
	
	Escribir "La suma de ", num1 " y ", num2 " tiene como resultado: " i
	
FinAlgoritmo

Funcion retorno <- Sumando( num1, num2 )
	
	Definir retorno Como Entero;
	retorno = num1 + num2;
	
FinFuncion

