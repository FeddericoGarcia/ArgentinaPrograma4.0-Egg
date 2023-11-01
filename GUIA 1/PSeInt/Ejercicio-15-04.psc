//Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//una cadena con un espacio adicional tras cada letra.
//Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
//dicho procedimiento.

Algoritmo Espaciado
	
	Definir frase Como Caracter
	
	Escribir "Ingresá una frase: ";
	Leer frase;
	
	convertirEspaciado(frase)
	
FinAlgoritmo

SubProceso convertirEspaciado(frase)
	
	Definir frase2, newFrase Como Caracter
	Definir i Como Entero
	
	newFrase = ""
	
	Para i = 0 hasta Longitud(frase) Hacer
		frase2 = newFrase+Subcadena(frase, i, i)+ " ";
		newFrase = frase2;
	FinPara
	
	Escribir "Tu frase era: " frase;
	Escribir "Tu nueva frase es: " newFrase;	
	
FinSubProceso
	