Algoritmo E4D9
	Definir i, cont2, cont3 Como Entero
	cont2 = 0;
	cont3 = 0;
	Para i <- 1 Hasta 100 Con Paso 1 Hacer
		Si i MOD 2 == 0 Entonces
			cont2 = cont2 + 1;
		Fin Si
		Si i MOD 3 == 0 Entonces
			cont3 = cont3 + 1;
		Fin Si
	Fin Para
	Escribir "Multiplos de 2: ", cont2;
	Escribir "Multiplos de 3: ", cont3;
FinAlgoritmo
