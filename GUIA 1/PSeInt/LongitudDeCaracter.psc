Algoritmo Caracters
	
	//Realizar un programa que pida una frase o palabra y si la frase o palabra es de 4
	//caracteres de largo, el programa le concatenara un signo de exclamaci�n al final, y si no
	//es de 4 caracteres el programa le concatenara un signo de interrogaci�n al final. El
	//programa mostrar� despu�s la frase final. Nota: investigar la funci�n Longitud() y
	//Concatenar() de PseInt.
	
	Definir palabra Como Caracter
	Escribir "Ingresa una palabra o frase:"
	Leer palabra
	
	Si Longitud(palabra) = 4 Entonces
		palabra = Concatenar("�� ", palabra)
		palabra = Concatenar(palabra, " !!")
		Escribir palabra
	SiNo
		palabra = Concatenar("� ", palabra)
		palabra = Concatenar(palabra, " ?")
		Escribir palabra
	FinSi

	
FinAlgoritmo
