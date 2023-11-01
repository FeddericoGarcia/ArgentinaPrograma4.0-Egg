Algoritmo Caracters
	
	//Realizar un programa que pida una frase o palabra y si la frase o palabra es de 4
	//caracteres de largo, el programa le concatenara un signo de exclamación al final, y si no
	//es de 4 caracteres el programa le concatenara un signo de interrogación al final. El
	//programa mostrará después la frase final. Nota: investigar la función Longitud() y
	//Concatenar() de PseInt.
	
	Definir palabra Como Caracter
	Escribir "Ingresa una palabra o frase:"
	Leer palabra
	
	Si Longitud(palabra) = 4 Entonces
		palabra = Concatenar("¡¡ ", palabra)
		palabra = Concatenar(palabra, " !!")
		Escribir palabra
	SiNo
		palabra = Concatenar("¿ ", palabra)
		palabra = Concatenar(palabra, " ?")
		Escribir palabra
	FinSi

	
FinAlgoritmo
