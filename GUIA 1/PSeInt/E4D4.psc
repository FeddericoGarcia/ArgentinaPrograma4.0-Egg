Algoritmo E4D4
	Definir num, d, u Como Entero;
	Escribir "Ingrese numero";
	Leer num;
	d = trunc( num / 100 );
	u = num - 10 * trunc( num / 10 );
	Si d == u Entonces
		Escribir "El numero es capicua";
	SiNo
		Escribir "El numero NO es capicua";
	Fin Si
FinAlgoritmo
