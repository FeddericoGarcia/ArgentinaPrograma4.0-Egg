Algoritmo sin_titulo
	Definir num, div Como Entero
	
		Escribir "ingrese un numero:"
		Leer num
		div=sumadiv(num)
		Escribir  "la suma de sus divisores es ",div
FinAlgoritmo
Funcion div<-sumadiv(num Por Referencia)
	Definir cont,div,i Como Entero
	cont=0
	div=0
	Para i<-1 Hasta num-1 Hacer
		si num mod i =0 
			cont=cont+1
			div=div+i
		FinSi
	FinPara
FinFuncion
