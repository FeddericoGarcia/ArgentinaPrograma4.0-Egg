Algoritmo Ej6UltimaGuia
    Definir Matriz, L, A, i, j, suma Como Entero
    Escribir "ingrese el largo de la matriz, que no debe superar al 10"
    Leer A
    Escribir "ingrese el alto de la matriz, que no debe superar al 10"
    Leer L
	
	Dimension matriz(L,A)
	
    
	
	para i=0 Hasta L-1
        para j=0 hasta A-1
			Matriz(i,j)=Aleatorio(1,9)
			escribir sin saltar " [ "  matriz(i,j) " ] "
        FinPara
        escribir " "
    FinPara
	
	
    Si A=L Entonces
        suma = 0
        Para i <- 0 Hasta A-1 Hacer
            suma=0
            Para j<-0 Hasta L-1 Con Paso 1 Hacer
				suma = suma + matriz(i, j); 
            Fin Para
			
            Escribir "La suma de la fila " i+1, " es: " suma
			
        FinPara 
        Escribir " La matriz es magica"
		
		
    SiNo
		si A <> L Entonces
			Escribir "La matriz NO es magica"
		FinSi
       
    Fin Si
FinAlgoritmo