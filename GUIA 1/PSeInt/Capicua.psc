Algoritmo Capicua
	
	Definir num, a, b Como Entero;
	Escribir "Escribe un numero de tres cifras:";
	Leer num;
	a = trunc(num / 100);
	b = num - 10 * trunc( num / 10);
	Si a == b Entonces
		Escribir "Este numero si es capicua";
	SiNo
		Escribir "Este numero no es capicua";
	FinSi
	
FinAlgoritmo
