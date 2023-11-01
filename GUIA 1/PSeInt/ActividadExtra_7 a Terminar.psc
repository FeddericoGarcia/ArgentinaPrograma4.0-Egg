Algoritmo ActividadExtra_7
	
	Definir Matriz,f Como Entero
	Definir VectorCaracter Como Caracter
	Dimension Matriz(6,6), VectorCaracter(6)
	
	LLenadorProductos(Matriz)
	Imprimidor(Matriz)
	Comparador(matriz,VectorCaracter)
	
	Para f = 0 hasta 5
		Escribir Sin Saltar VectorCaracter(f)," "
	FinPara
	
	
FinAlgoritmo

SubProceso LLenadorProductos (Matriz)
	Definir i,j Como Entero
	Para i = 0 hasta 4
		Para j = 0 hasta 4
			Matriz(i,j) = Aleatorio(1,10)
		FinPara
		Matriz(i,j) = Matriz(i,0) +  Matriz(i,1) +  Matriz(i,2) +  Matriz(i,3) +  Matriz(i,4)
	FinPara
	Para j = 0 hasta 5
		Matriz(5,j) = Matriz(0,j) + Matriz(1,j) + Matriz(2,j) + Matriz(3,j) + Matriz(4,j)
	FinPara
FinSubProceso

SubProceso Imprimidor (Matriz)
	Definir i,j Como Entero
	Para i = 0 hasta 5
		Para j = 0 hasta 5
			Escribir Sin Saltar ,Matriz(i,j)," "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso Comparador (Matriz,VectorCaracter)
	Definir i,j,Mayor Como Entero
	Mayor = 0
	Para j = 0 hasta 4
		Para i = 0 hasta 5
			Si matriz[i, j] > Mayor
				Mayor = matriz[i, j]
				Segun i
					0:
						VectorCaracter(i) = "Lunes"
					1: 
						VectorCaracter(i) = "Martes"
					2:
						VectorCaracter(i) = "Miercoles"
					3: 
						VectorCaracter(i) = "Jueves"
					4:
						VectorCaracter(i) = "Viernes"
				FinSegun
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso calcularMatriz(matriz, vectorMayor)
	Definir f, c como entero
	Para f = 0 hasta 4 
		vectorMayor[f] = 0
	FinPara
	Para f = 0 hasta 4 
		Para c = 0 hasta 4
			Escribir sin saltar "Ingresar importe del PRODUCTO #" f+1 " el dia ";
			segun c
				0:
					Escribir "LUNES"
				1: 
					Escribir "MARTES"
				2:
					Escribir "MIERCOLES"
				3: 
					Escribir "JUEVES"
				4:
					Escribir "VIERNES"
			FinSegun
			Leer matriz[f, c];
			Si matriz[f, c] > vectorMayor[f]
				vectorMayor[f] = matriz[f, c]
				matriz[6, c] = f + 1;
			FinSi
			matriz[f, 5] = matriz[f, 5] + matriz[f, c]
		FinPara
	FinPara
	
FinSubProceso
