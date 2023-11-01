Algoritmo matrizEjercEtx7planilla
	
	definir matriz,mayor,vectortotalproducto,vectortotalsemana,vectorproductomasvend Como Entero
	
	dimension matriz(6,6),vectortotalsemana(6),vectortotalproducto(6),vectorproductomasvend(6)
	
	llenarmatriz(matriz,6,6,vectortotalproducto,6,vectortotalsemana,6,vectorproductomasvend,6)
	totalsemana(matriz,6,6)
	//productomasvend(matriz,6,6,vectorproductomasvend,6)
	//produtomasvendidosemana(vectortotalproducto,6)
FinAlgoritmo
subproceso llenarmatriz(matriz,6,6,vectortotalproducto,6,vectortotalsemana,6,vectorproductomasvend,6)
	definir f,c,vtas como entero
	para f<-0 hasta 5
		para c<-0 hasta 5
			matriz(f,c)=0
			vectortotalproducto(f)=0
			vectortotalsemana(c)=0
			vectorproductomasvend(c)=0
			escribir "(" matriz(f,c) ")" sin saltar
		FinPara
		escribir ""
	FinPara
	escribir""
	para f<-0 hasta 4
		segun f
			0:escribir"producto 1"
			1:escribir"producto 2"
			2:escribir "producto 3"
			3:escribir "producto 4"
			4: escribir "producto 5"
				
		FinSegun
		para c<-0 hasta 4
			escribir "ingrese las ventas de cada producto por dia"
			leer vtas
			segun c
				0: escribir "lunes"
				1:escribir "martes"
				2:escribir "miercoles"
				3:escribir"jueves"
				4:escribir"viernes"
			fin segun
			matriz(f,c)=vtas
			
		FinPara
	FinPara
	
	para f<-0 hasta 4 Hacer
		para c<-0 hasta 4 Hacer
			escribir "(" matriz(f,c) ")" sin saltar
		FinPara
		escribir ""
	FinPara
	escribir ""
FinSubProceso

SubProceso totalsemana(matriz,6,6)
	definir f,c como entero
	
	para f<-0 hasta 5
		para c<-0 hasta 5
			si c=5
				matriz(f,c)=matriz(f,c-1) + matriz(f,c-2)
				
			FinSi
			si f=5
				matriz(c,f) = matriz (c,f-1) + matriz(c,f-2)
			FinSi
			
		FinPara
	FinPara
	
	
	
	
	
	
	escribir ""
FinSubProceso
