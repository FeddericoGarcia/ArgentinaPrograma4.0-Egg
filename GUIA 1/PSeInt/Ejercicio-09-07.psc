Algoritmo Actividad_Dos
	
	Definir Frase, Letra Como Caracter
	Definir Longi, Contador, ContadorLetra Como Entero
	
	ContadorLetra = 0
	
	Escribir "Ingrese una frase: "
	leer Frase
	Longi = Longitud(Frase)
	
	Escribir "A continuacion, la frase con espacios entre letras: "
	// debug
	// Escribir Longi
	
	Para Contador = 1 Hasta Longi
		Letra = Subcadena(Frase,ContadorLetra,ContadorLetra)
		Escribir Sin Saltar Letra," "
		ContadorLetra = ContadorLetra+1
	FinPara
	
	
	
FinAlgoritmo
