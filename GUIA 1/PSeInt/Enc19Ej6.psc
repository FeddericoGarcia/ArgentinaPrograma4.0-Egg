Algoritmo Enc19Ej6
	Definir frase,auxi,letra Como Caracter
	Definir i,j Como Entero
	Dimension frase(20)
	Escribir "ingrese una frase: "
	leer auxi
	Para i = 0 Hasta 19 Hacer
		si i > Longitud(auxi) Entonces
			frase(i) = " "
		SiNo			
			frase(i) = Subcadena(auxi,i,i)	
		FinSi			
	FinPara
	Escribir "Ingrese un caracter: "
	leer letra
	Escribir "Ingrese que posición tomará: "
	Leer j
	si frase(j) = " " Entonces
		frase(j) = letra
		Para i = 0 Hasta 19 Hacer
			Escribir Sin Saltar frase(i)
		FinPara
		Escribir ""
	SiNo
		Escribir "La posición está ocupada por el caracter: ",frase(j)
	FinSi
FinAlgoritmo