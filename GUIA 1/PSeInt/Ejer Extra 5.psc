////Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserción del carácter, facilitando
////un potencial reordenamiento del vector. Digamos que se pide ingresar el carácter en la
////posición X y la misma está ocupada, entonces de existir un espacio en cualquier posición X-n
////o X+n, desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar el carácter
////en cuestión en el lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio
////más cercano.

Algoritmo sin_titulo
	Definir vector, carac Como Caracter
	Dimension vector[20]
	Definir frase Como Cadena
	Definir i, pos Como Entero
	
	//parteA
	Escribir "Ingrese una frase de hasta 20 caracteres:"
	Leer frase
	pasarVector(frase,vector)
	
	//parteB
	Escribir "Ingrese un caracter que desee sumar a su frase:"
	Leer carac
	Escribir "Ingrese la posicion en la que desea insertar ese caracter:"
	Leer pos
	reemplazo(vector,carac,pos,frase)
FinAlgoritmo

SubProceso pasarVector(frase Por Valor, vector Por Referencia)
	Definir i, j Como Entero
	
	Para i=0 Hasta 19 Hacer
		vector[i]=Subcadena(frase,i,i)
	FinPara
	
	Para j=0 Hasta 19 Hacer
		Escribir Sin Saltar vector[j]
	FinPara
	Escribir ""
FinSubProceso

SubProceso reemplazo(vector Por Referencia, carac Por Valor, pos Por Valor, frase Por Valor)
	Definir i Como Entero
	Definir aux Como Caracter

	Si vector[pos]=" " O vector[pos]="" Entonces
		vector[pos]=carac
		Para i=0 Hasta 19 Hacer
			Escribir Sin Saltar vector[i]
		FinPara
		Escribir ""
	SiNo
		//ParteC
		Para i=0 Hasta Longitud(frase) Hacer
			vector(Longitud(frase)+1-i)=vector(Longitud(frase)-i)
		FinPara
			
		Para i=0 Hasta pos Hacer
			vector(i)=vector(i+1)
		FinPara
			
		vector(pos)=carac
			
		Para i=0 Hasta Longitud(frase)+1 hacer
			Escribir Sin Saltar vector(i)
		FinPara
	FinSi
FinSubProceso

