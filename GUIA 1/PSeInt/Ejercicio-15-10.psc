//	Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales re-
//	petidas. Al final el procedimiento mostrará la frase final.
//	Por ejemplo:
//	Entrada: "Habia una vez un barco"
//	Salida: "Habi un vez n brco"
//	Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? que-
//		dan al no estar repetidas.
//	
Algoritmo removerPalabras
	
	Definir frase Como Caracter
	
	Escribir "Ingresa una frase: ";
	Leer frase;
	frase = Minusculas(frase)
	recibirFrase(frase);
	
FinAlgoritmo

SubProceso recibirFrase(frase por referencia)
	
	Definir newFrase, letra Como Caracter
	Definir j, a, e, i, oo, u Como Entero
	
	letra = "";
	newFrase = "";
	a = 0;
	e = 0;
	i = 0;
	oo= 0;
	u = 0;
	
	Para j = 0 hasta Longitud(frase) Hacer
		
		Segun Subcadena(frase, j, j) hacer
			
			"a":
				a = a + 1;
				Si a > 1 Entonces
					letra = " ";
				SiNo
					letra = "a"
				FinSi
			"e":
				e = e + 1;
				Si e > 1 Entonces
					letra = " ";
				SiNo
					letra = "e"
				FinSi
			"i":
				i = i + 1;
				Si i > 1 Entonces
					letra = " ";
				SiNo
					letra = "i"
				FinSi
			"o":
				oo = oo + 1;
				Si oo > 1 Entonces
					letra = " ";
				SiNo
					letra = "o"
				FinSi
			"u":
				u = u + 1;
				Si u > 1 Entonces
					letra = " ";
				SiNo
					letra = "u"
				FinSi
			De Otro Modo:
				letra = Subcadena(frase, j, j);
		FinSegun
		
		newFrase = Concatenar(newFrase, letra);
	FinPara
	
	Escribir newFrase;
	
FinSubProceso

	