////Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina ofre-
////ciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas: Norte,
////Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas estadísticas
////sobre el comportamiento de sus representantes en cada zona. Se desea hacer un programa
////que lea el monto de las ventas de los representantes en cada zona y calcule luego:
////	a) el total de ventas de una zona introducida por teclado
////	b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
////	c) el total de ventas de todos los representantes.

Algoritmo sin_titulo
	Definir matriz, totalPorRepresentante, totalPorZona, f, c, zona, representante Como Entero
	Dimension matriz[4,5], totalPorRepresentante[4], totalPorZona[5]
	
	Para f=0 Hasta 3 Hacer
		totalPorRepresentante[f]=0
		Escribir "Ventas de la zona ", f+1, ":"
		Para c=0 Hasta 4 Hacer
			Escribir "Ventas del representante ", c+1, ":"
			Leer matriz[f,c]
			totalPorRepresentante[f]=totalPorRepresentante[f]+matriz[f,c]
		FinPara
	FinPara
	Esperar Tecla
	Limpiar Pantalla
	
	Escribir "Representante/Zona: Z.N    Z.S    Z.E    Z.O    Z.C"
	Para f=0 Hasta 3 Hacer
		Escribir Sin Saltar "representante ", f+1, " "
		Para c=0 Hasta 4 Hacer
			Escribir Sin Saltar "    [", matriz[f,c], "]"
		FinPara
		Escribir ""
	FinPara
	
	Para C=0 Hasta 4 Hacer
		totalPorZona[c]=0
		Para f=0 Hasta 3 Hacer
			totalPorZona[c]=totalPorZona[c]+matriz[f,c]
		FinPara
	FinPara
	
	Hacer 
		Escribir "Ingrese la zona que desea ver el total de ventas que tuvo:"
		Leer zona
	Mientras Que zona<1 O zona>5
	Segun zona Hacer
		1:
			Escribir "La zona Norte tuvo un total de ", totalPorZona[zona-1], " ventas"
			Escribir ""
		2:
			Escribir "La zona Sur tuvo un total de ", totalPorZona[zona-1], " ventas"
			Escribir ""
		3:
			Escribir "La zona Este tuvo un total de ", totalPorZona[zona-1], " ventas"
			Escribir ""
		4:
			Escribir "La zona Oeste tuvo un total de ", totalPorZona[zona-1], " ventas"
			Escribir ""
		5:
			Escribir "La zona Centro tuvo un total de ", totalPorZona[zona-1], " ventas"
			Escribir ""
	FinSegun
	
	Hacer 
		Escribir "Ingrese el representante que desea ver el total de ventas que tuvo en cada zona:"
		Leer representante
	Mientras Que representante<1 O representante>4
	Segun representante Hacer
		1:
			Escribir "Ventas que tuvo el representante ", representante, " en cada zona:"
			Escribir "   Z.N    Z.S    Z.E    Z.O    Z.C"
			Para f=representante-1 Hasta representante-1 Hacer
				Para c=0 Hasta 4 Hacer
					Escribir Sin Saltar "   [", matriz[f,c], "] "
				FinPara
				Escribir ""
			FinPara
		2:
			Para f=representante-1 Hasta representante-1 Hacer
				
				Para c=0 Hasta 4 Hacer
					Escribir Sin Saltar "[", matriz[f,c], "]"
				FinPara
				Escribir ""
			FinPara
		3:
			Para f=representante-1 Hasta representante-1 Hacer
				Para c=0 Hasta 4 Hacer
					Escribir Sin Saltar "[", matriz[f,c], "]"
				FinPara
				Escribir ""
			FinPara
		4:
			Para f=representante-1 Hasta representante-1 Hacer
				Para c=0 Hasta 4 Hacer
					Escribir Sin Saltar "[", matriz[f,c], "]"
				FinPara
				Escribir ""
			FinPara
	FinSegun
	
	Escribir ""
	Escribir "Ventas total de cada representante:"
	Para f=0 Hasta 3 Hacer
		Escribir Sin Saltar "representante ", f+1, ": "
		Escribir Sin Saltar "[", totalPorRepresentante[f], "]"
		Escribir ""
	FinPara
	
//	Escribir "Matriz:"
//	Para f=0 Hasta 3 Hacer
//		Para c=0 Hasta 4 Hacer
//			Escribir Sin Saltar "[", matriz[f,c], "]"
//		FinPara
//		Escribir ""
//	FinPara
//	
//	Escribir ""
//	Escribir "Ventas total de cada representante:"
//	Para f=0 Hasta 3 Hacer
//		Escribir Sin Saltar "[", totalPorRepresentante[f], "]"
//		Escribir ""
//	FinPara
//	
//	Escribir ""
//	Escribir "Ventas total de cada zona:"
//	Para f=0 Hasta 4 Hacer
//		Escribir Sin Saltar "[", totalPorZona[f], "]"
//	FinPara
FinAlgoritmo

	