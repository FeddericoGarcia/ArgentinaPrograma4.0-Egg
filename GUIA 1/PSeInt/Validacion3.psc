Algoritmo Validacion
	
	//Continuando el ejercicio anterior, ahora se pedirá una frase o palabra y se validara si la
	//primera letra de la frase es igual a la última letra de la frase. Se deberá de imprimir un
	//mensaje por pantalla que diga "CORRECTO", en caso contrario, se deberá imprimir
	//"INCORRECTO".
	
	Definir palabra1 Como Caracter
	Definir numDePalabra Como Entero
	
	Escribir "Ingresa tu frase o palabra:"
	Leer palabra1
	
	numDePalabra = Longitud( palabra1 ) - 1
	Escribir numDePalabra;
	palabra1 = Mayusculas( palabra1 )
	
	Si Subcadena(palabra1, 0, 0) = Subcadena( palabra1, numDePalabra, numDePalabra ) Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
FinAlgoritmo
