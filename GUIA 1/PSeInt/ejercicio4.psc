Algoritmo LlenarVector
	
	definir vectorA, vectorB, vectorC, vectorD, num, totalA, totalB, i como entero
	definir op, opc Como Caracter
	
	escribir "INGRESE EL TAMAÑO DEL VECTOR (NUMERO ENTERO) "
	
	leer num
	
	dimension vectorA[num], vectorB[num], vectorC[num] , vectorD[num]
	hacer
	escribir "seleccione una opcion" 
	escribir "A. llenar vector A de manera aleatoria"
	escribir "B. llenar vector B de manera aleatoria"
	escribir "C. llenar vector C con la suma de los vectores A y B"
	escribir "D. llenar vector C con la resta de los vectores B y A"
	escribir "E. elegir que vector mostrar A, B o C "
	escribir "F. salir "
	leer op
	
	para i<-0 hasta num-1 hacer
	vectorA[i]=Aleatorio(-100,100)
	vectorB[i]=Aleatorio(-100,100)
	finpara
	
	
	segun op Hacer
		"A","a":
			para i<-0 hasta num -1 hacer
				
				escribir vectorA(i)
			FinPara
		"B","b":
			para i<-0 hasta num -1 hacer
				
				escribir vectorB(i)
			FinPara
		"C","c":
			para i<-0 hasta num -1 hacer
				
				vectorC[i]= vectorA[i] + vectorB[i]
				escribir vectorC[i]
			FinPara
		"D","d":
			para i<-0 hasta num -1 hacer
				
				vectorD[i]= vectorB[i] - vectorA[i]
				escribir vectorD[i]
			FinPara
			
			"E","e":
				escribir " elija que vector mostrar "
				leer opc
				segun opc Hacer
					"A","a":
						para i<-0 hasta num -1 Hacer
							escribir vectorA[i]
							
						FinPara
					"B","b":
						para i<-0 hasta num -1 Hacer
							escribir vectorB[i]
							
						FinPara
					"C","c":
						para i<-0 hasta num -1 Hacer
							escribir vectorC[i]
							
						FinPara
						
				FinSegun
			"F", "f":
				escribir "SALIDA"
		FinSegun
		
hasta que op = "F" o op ="f"

	
	
FinAlgoritmo
