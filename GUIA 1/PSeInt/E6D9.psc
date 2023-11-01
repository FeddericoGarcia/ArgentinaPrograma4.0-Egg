Algoritmo E6D9
	Definir frase, letra, fraseNueva, aux Como Caracter;
	Definir numLetras, i Como Entero;
	Escribir "Ingrese una frase";
	Leer frase;
	fraseNueva = "";
	numLetras = Longitud(frase);
	Para i <- 0 Hasta numLetras - 1 Con Paso 1 Hacer
		letra = SubCadena(frase, (numLetras - 1) - i , ( numLetras - 1 ) - i );
		Si letra <> " " Entonces
			aux = Concatenar(" ",letra);
			fraseNueva = Concatenar(fraseNueva,aux);
		Fin Si
	Fin Para
	Escribir fraseNueva;
FinAlgoritmo
