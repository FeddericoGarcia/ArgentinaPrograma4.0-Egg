Algoritmo sin_titulo
	Definir cant Como Entero
	Definir iguales Como Logico
	
	Escribir "Ingrese la cantidad de elementos que tendra su vector:"
	Leer cant
	
	Definir vector1, vector2, i Como Entero
	Dimension vector1[cant], vector2[cant]
	
	rellenarVectores(vector1, vector2, cant)
	
	iguales=igualdadVectores(vector1, vector2, cant)
	Si iguales Entonces
		Escribir "Los vectores generados son iguales"
	SiNo
		Escribir "Los vectores generados no son iguales"
	FinSi
	
	Para i=0 Hasta cant-1 Hacer
		Escribir vector1[i], " ", vector2[i]
	FinPara
FinAlgoritmo

SubProceso rellenarVectores(vector1 Por Referencia, vector2 Por Referencia, cant Por Valor)
	Definir i Como Entero
	
	Para i=0 Hasta cant-1 Hacer
		vector1[i]=Aleatorio(0,100)
		vector2[i]=Aleatorio(0,100)
	FinPara
FinSubProceso

Funcion iguales=igualdadVectores(vector1 Por Referencia, vector2 Por Referencia, cant Por Valor)
	Definir iguales Como Logico
	Definir i, conta Como Entero
	conta=0
	
	Para i=0 Hasta cant-1 Hacer
		Si vector1[i]=vector2[i] Entonces
			conta=conta+1
		FinSi
	FinPara
	
	Si conta=cant Entonces
		iguales=Verdadero
	SiNo
		iguales=Falso
	FinSi
FinFuncion