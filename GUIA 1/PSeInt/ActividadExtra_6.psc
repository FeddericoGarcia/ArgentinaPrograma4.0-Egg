Algoritmo ActividadExtra_6
	
	Definir Matriz,Vector,MatrizAux,i,j,contVector Como Entero
	contVector = 0
	i=0
	j=0
	Dimension Matriz(3,3), Vector(3), MatrizAux(3,3)
	Inicializador(Matriz,Vector,i,j)
	Para i = 0 hasta 2
		Para j = 0 hasta 2
			Escribir Sin Saltar "(",Matriz(i,j),") "
			Si j = 2
				Escribir Sin Saltar " * "
				Escribir Sin Saltar Vector(contVector)
				contVector=contVector + 1
			FinSi
		FinPara
		Escribir ""
	FinPara
	
	Para i = 0 hasta 2		// I es vertical J es Horizontal
		Para j = 0 hasta 2
			MatrizAux(i,j) = Matriz(j,i) * Vector(i)	/// Atenti aca
		FinPara
	FinPara
	Escribir "El resultado de las multiplicaciones son:"
	
	Para i = 0 hasta 2
		Para j = 0 hasta 2
			Escribir Sin Saltar "(",MatrizAux(i,j),") "
		FinPara
		Escribir ""
	FinPara
	
	Para i = 0 hasta 2
		Escribir "El resultado de la multiplicacion ",i+1," es: ",MatrizAux(i,0) + MatrizAux(i,1) + MatrizAux(i,2)
	FinPara
	

	
	
	
	
FinAlgoritmo

SubProceso Inicializador(Matriz,Vector,i,j)
	Definir Contador como entero
	Contador = 1
	Para i = 0 hasta 2
		Para j = 0 hasta 2
			Matriz(i,j) = Contador
			Contador = Contador + 1
		FinPara
	FinPara
	Para i = 0 hasta 2
		Vector(i) = (i+1)*2			// la idea es obtener 2/4/6
	FinPara
FinSubProceso




	