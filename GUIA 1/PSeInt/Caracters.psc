Algoritmo Caracters
	
	//Realizar un programa que pida introducir solo frases o palabras de 6 caracteres. Si el
	//usuario ingresa una frase o palabra de 6 caracteres se deberá de imprimir un mensaje por
	//pantalla que diga "CORRECTO", en caso contrario, se deberá imprimir "INCORRECTO".
	//Nota: investigar la función Longitud() de PseInt.
	
	Definir caractr Como Caracter
	Escribir "Ingresa una frase o palabra:"
	Leer caractr
	
	Definir caractr2 Como Entero
	
	caractr2 = Longitud( caractr )
	
	Si caractr2 = 6 Entonces
		Escribir "Correcto"
	SiNo
		Escribir "Incorrecto"
	FinSi

	
FinAlgoritmo
