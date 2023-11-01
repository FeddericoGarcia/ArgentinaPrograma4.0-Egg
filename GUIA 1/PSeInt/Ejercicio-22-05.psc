//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, encon-
//trando la manera de que la frase se muestre de manera continua en la matriz.
//
//Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
//		H A B
//		I L I
//		D A D
//	Nota: recordar el uso de la función Subcadena().

Algoritmo rellenarMatriz5
	
	Definir i, j, long Como Entero
	Definir caract, matriz Como Caracter
	Dimension matriz(3 ,3)
	
	
	Escribir "Se rellenará la matriz automáticamente (3 x 3)";
	
	Hacer
		
		Escribir "Ingresa una frase de 9 caracteres : ";
		Leer caract;
		
		Si longitud(caract) > 9 entonces
			Escribir "Tenes que ingresa una frase de 9 caracteres: ";
			Leer caract;
		FinSi
		
	Mientras Que Longitud(caract) <> 9
	
	long = 0
	
	Para i = 0 hasta 2 Hacer
		Para j = 0 hasta 2 Hacer
			matriz(i,j) = Subcadena(caract, long, long);
			Escribir sin saltar " ", matriz(i, j) " ";
			long = long + 1;
		FinPara
		Escribir "";
	FinPara
	
FinAlgoritmo
	