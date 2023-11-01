Algoritmo Multiplo2y3
	
	// Siguiendo el ejercicio 20 de los ejercicios principales, ahora deberemos hacer lo mismo
	// pero que la cadena se muestre al revés. Por ejemplo, si tenemos la cadena: Hola,
	// deberemos mostrar a l o H.
	
	Definir frase, letra, aux, fraseNueva Como Caracter
	Definir lonFrase, i Como Entero
	
	Escribir "Escribí una frase";
	Leer frase;
	
	lonFrase = Longitud( frase );
	fraseNueva = "";
	
	Para i = 0 hasta lonFrase con paso 1 Hacer
		letra = Subcadena(frase, (lonFrase - 1) - i, (lonFrase - 1) - i);
		Si letra <> " " Entonces
			aux = Concatenar(" ", letra);
			fraseNueva = Concatenar( fraseNueva, aux)
		FinSi
	FinPara
	
	Escribir fraseNueva;
	
	
FinAlgoritmo