//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
//	d) Excelentes 16-20
//	

Algoritmo estudiantes
	
	Definir estudiante, num, i, nota, defi, regu, buen, exce como entero
	
	Escribir "Ingresa el numero de los estudiantes: (100)";
	Leer num;
	defi = 0;
	regu = 0;
	buen = 0;
	exce = 0;
	
	Dimension nota(num)
	
	Para i = 0 hasta num-1 hacer
		nota(i) = aleatorio(0, 20)
	FinPara
	
	Para i = 0 hasta num-1 hacer
		Si (nota(i) >= 0) y (nota(i) <= 5) Entonces
			defi = defi + 1;
		FinSi
		Si (nota(i) >= 6) y (nota(i) <= 10) Entonces
			regu = regu + 1;
		FinSi
		Si (nota(i) >= 11) y (nota(i) <= 15) Entonces
			buen = buen + 1;
		FinSi
		Si (nota(i) >= 16) y (nota(i) <= 20) Entonces
			exce = exce + 1;
		FinSi
	FinPara
	
	Escribir "El promedio de las notas de los estudiantes son: "
	Escribir "Deficientes: " defi;
	Escribir "Regulares:   " regu;
	Escribir "Buenos:      " buen;
	Escribir "Excelentes:  " exce;
	
FinAlgoritmo
	