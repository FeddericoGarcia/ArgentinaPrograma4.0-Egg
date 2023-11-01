Algoritmo Validacion
	
	Definir validation Como Logico
	Definir nota1, nota2, nota3 Como Entero
	Escribir "Ingresar tu primer nota"
	Leer nota1
	
	Escribir "Ingresa la segunda nota"
	Leer nota2
	
	Escribir "Ingresar la tercera nota"
	Leer nota3
	
	Si nota1 >= 1 y nota1 <= 10 y nota2 >= 1 y nota2 <= 10 y nota3 >= 1 y nota3 <= 10 Entonces
		validation = Verdadero
	SiNo
		validation = Falso
	FinSi
	
	Escribir validation
	
FinAlgoritmo
