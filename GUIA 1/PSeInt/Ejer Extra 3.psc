////Crear dos vectores que tengan el mismo tama�o (el tama�o se pedir� por teclado) y
////almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
////debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la funci�n
////Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.

Algoritmo sin_titulo
	Definir cant, i Como Entero

	Escribir "Ingrese el tama�o de su vector:"
	Leer cant
	
	Definir v2 Como Entero
	Definir v1 Como Cadena
	Dimension v1[cant], v2[cant]
	
	Para i=0 Hasta cant-1 Hacer
		Escribir "Ingrese el nombre de la persona ", i
		Leer v1[i]
		v2[i]=Longitud(v1[i])
	FinPara
	
	Escribir "Nombre: Longitud:"
	Para i=0 Hasta cant-1 Hacer
		Escribir v1[i], "         ", v2[i]
	FinPara
FinAlgoritmo
