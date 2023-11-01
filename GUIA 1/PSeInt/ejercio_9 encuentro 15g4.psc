Algoritmo dia15_ejercicio9
	Definir frase Como Caracter
	
	Escribir "Ingrese una frase, al finalizar el programa quitará las vocales repetidas"
	Leer frase
	
	repetidas(frase)
	
FinAlgoritmo

SubProceso repetidas(frase)
	Definir frase_final, letra Como Caracter
	Definir largo, i, cont_a, cont_e, cont_i, cont_o, cont_u como entero
	
	largo = Longitud(frase)-1 // con esta variable tenes el lugar final de la frase, por eso restamos 1
	frase_final = ""
	
	cont_a = 0
	cont_e = 0
	cont_i = 0
	cont_o = 0
	cont_u = 0
	
	Para i = 0 Hasta largo Con Paso 1 Hacer
		Segun Subcadena(frase,i,i) Hacer
			"a":
				cont_a = cont_a + 1
				Si cont_a > 1 Entonces
					letra = " "	
				SiNo
					letra = "a"
				FinSi				
			"e":
				cont_e = cont_e + 1
				Si cont_e > 1 Entonces
					letra = " "	
				SiNo
					letra = "e"
				FinSi	
			"i":
				cont_i = cont_i + 1
				Si cont_i > 1 Entonces
					letra = " "	
				SiNo
					letra = "i"
				FinSi	
			"o":
				cont_o = cont_o + 1
				Si cont_o > 1 Entonces
					letra = " "	
				SiNo
					letra = "o"
				FinSi	
			"u":
				cont_u = cont_u + 1
				Si cont_u > 1 Entonces
					letra = " "	
				SiNo
					letra = "u"
				FinSi	
			De Otro Modo:
				letra = Subcadena(frase,i,i)
		Fin Segun
		frase_final = concatenar(frase_final, letra)
		
	Fin Para
	
	Escribir "La frase modificada es: " frase_final
	
FinSubProceso