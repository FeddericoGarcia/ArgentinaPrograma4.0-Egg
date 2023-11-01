//Escribir un programa que procese una secuencia de caracteres ingresada por teclado y terminada
//en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: cada vocal
//	se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres (incluyendo
//	a las vocales acentuadas) se mantienen sin cambios.
//	a e i o u
//	@ # $ % *
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación correspondiente.
//	Utilice la estructura "según" para la transformación.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//		La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//		NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.

Algoritmo vocalesporsimbolos
	definir frase, traduccion, caracter_ Como Caracter
	definir Qcaracteres como entero
	
	caracter_=""
	
	escribir "Ingrese una frase para encriptar, terminándola en un punto:"
	leer frase
	
	Qcaracteres=longitud(frase)
	
	encriptar(frase, traduccion, caracter_,Qcaracteres)
	
	escribir "Su frase encriptada, es: " traduccion
	
FinAlgoritmo



SubProceso encriptar(frase por referencia, traduccion por referencia, caracter_ por referencia, QCaracteres por referencia)
	
	definir contador Como Entero
	
	traduccion=""
	
	mientras subcadena(frase,Qcaracteres-1,Qcaracteres-1)<>"."
		escribir "No terminó la frase con un punto. Inténtelo de nuevo:"
		leer frase
		Qcaracteres=longitud(frase)
	finmientras
	
	Para contador=0 Hasta QCaracteres Con Paso 1 Hacer
		
		caracter_=subcadena(frase,contador,contador)
		caracter_= mayusculas(caracter_)
		
//		si caracter_= "a" o caracter_= "e" o caracter_= "i" o  caracter_= "o" o  caracter_= "u" entonces
//			caracter_= mayusculas(caracter_)
//		FinSi
		
		
		segun caracter_ hacer
			
			"A": traduccion=concatenar(traduccion,"@")
			"E": traduccion=concatenar(traduccion,"#")
			"I": traduccion=concatenar(traduccion,"$")
			"O": traduccion=concatenar(traduccion,"%")
			"U": traduccion=concatenar(traduccion,"*")
				
			de otro modo: traduccion=concatenar(traduccion,caracter_)
				
		FinSegun
		
	Fin Para
	
FinSubProceso
