Algoritmo ActividadExtra_4

	Definir Matriz,Tabla Como Entero					// DIMENSIONES:		 3			3			  2
	//																Vertical 	Horizontal 		Capa
	Dimension Matriz(3,3,3)
	Definir VoF Como Logico
	VoF = Falso
	LLenador(Matriz)
	Imprimidor(Matriz,VoF)
	Multiplicador(Matriz,VoF)
	Escribir "A continuacion se mostrara la matriz con la ultima capa que sera la capa multiplicada: "
	Escribir "Presione una tecla para continuar."
	Esperar Tecla
	Imprimidor(Matriz,VoF)
FinAlgoritmo

SubProceso LLenador(Matriz)
	Definir i,j,c Como Entero
	para c = 0 hasta 1
		Para i = 0 hasta 2
			Para j = 0 hasta 2
				Matriz(i,j,c) = Aleatorio(1,9)
			FinPara
		FinPara
	FinPara

FinSubProceso

SubProceso Imprimidor(Matriz,VoF)
	Definir i,j,c Como Entero
	Definir Freno Como Entero
	Freno = 1
	Si VoF = Verdadero
		Freno = 2
	FinSi
	Para c = 0 hasta Freno
		Para i = 0 hasta 2
			Para j = 0 hasta 2
				Escribir Sin Saltar Matriz(i,j,c)
				Si j <= 1
					Escribir Sin Saltar "  / "
				FinSi
			FinPara
			Escribir ""
		FinPara
		Escribir "/////////////"
	FinPara
	

FinSubProceso

SubProceso Multiplicador(Matriz,VoF Por Referencia)
	Definir i,j,c Como Entero
	c = 0
	Para i = 0 hasta 2
		Para j = 0 hasta 2
			Matriz(i,j,c+2) = Matriz(i,j,c)*Matriz(i,j,c+1)
		FinPara
	FinPara
	VoF = Verdadero
	
FinSubProceso

	