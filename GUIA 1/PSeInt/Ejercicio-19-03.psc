//Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
//	Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.

Algoritmo sintitulo
	
	Definir num, vectorNum, i Como entero
	Definir vectorNom como caracter
	
	Escribir "Ingresa el tamaño de los 2 vectores: ";
	Leer num;
	Dimension vectorNum(num), vectorNom(num);
	
	Para i = 0 hasta num-1 Hacer
		Escribir "Ingresa nombre de personas: ";
		Leer vectorNom(i);		
		vectorNum(i) = longitud(vectorNom(i));
	FinPara
	
	Para i = 0 hasta num-1 Hacer
		vectorNom(i) = Mayusculas(vectorNom(i))
		Escribir "POSICION  ", i 
		Escribir "NOMBRE:   " vectorNom(i);
		Escribir "LONGITUD: ", vectorNum(i);
		Escribir "***"
	FinPara
	
FinAlgoritmo
	