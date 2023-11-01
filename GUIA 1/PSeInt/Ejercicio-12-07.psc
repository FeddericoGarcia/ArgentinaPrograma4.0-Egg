// Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. 
// La funci�n debe devolver la cantidad de veces que encontr� la letra. 
// Nota: recordar el uso de la funci�n Subcadena().

Algoritmo EncontrarFrase
	
	Definir frase, letra Como Caracter
	
	Escribir "Ingresa una frase: "
	Leer frase;
	
	Escribir "Ingresa una letra para buscar: "
	Leer letra;
	
	Contador(frase, letra);
	
FinAlgoritmo

Funcion Contador(frase por valor, letra por valor)
	
	Definir cantidadLetras, i Como Entero;
	Definir letra2 Como Caracter
	
	cantidadLetras = 0;
	
	Para i = 0 hasta Longitud(frase) hacer
		letra2 = Subcadena(frase, i, i);
		Si letra = letra2 Entonces
			cantidadLetras = cantidadLetras + 1;
		FinSi
	FinPara
	
	Escribir "La letra ", letra " aparece ", cantidadLetras " veces.";
	
	
FinFuncion

