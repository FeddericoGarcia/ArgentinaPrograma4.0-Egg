Algoritmo sin_titulo
	//1. Realiza un programa que sólo permita introducir los caracteres ?S? y ?N?. Si el usuario
	//ingresa alguno de esos dos caracteres se deberá de imprimir un mensaje por pantalla que
	//diga "CORRECTO", en caso contrario, se deberá imprimir "INCORRECTO".
	
	Definir caracterSoN Como Caracter
	
	Escribir "Ingrese un caracter"
	Leer caracterSoN
	
	caracterSoN = Minusculas(caracterSoN)
	
	si caracterSoN = "s" o caracterSoN = "n" Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
	
FinAlgoritmo
