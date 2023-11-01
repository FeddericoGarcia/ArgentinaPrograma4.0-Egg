//Una empresa de venta de productos por correo desea realizar una estadística de las ventas
//realizadas de cada uno de sus productos a lo largo de una semana. 
//	Distribuya luego 5 productos en los 5 días hábiles de la semana. 
//	Se desea conocer:
//	a) Total de ventas por cada día de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto más vendido en cada semana.
//	d) El nombre, el día de la semana y la cantidad del producto más vendido.
//
//	El informe final tendrá un formato como el que se muestra a continuación:
//	
		//		0		/	1	/	2	/	3	/	4	/	5	/	6	/	7
//	0	//			  /	   Lunes/Martes/Miércoles/Jueves/Viernes/Total/Producto/
//	1	//	Producto 1/			/		/		/		/		/		/		/		
//	2	//	Producto 2/			/		/		/		/		/		/		/	
//	3	//	Producto 3/			/		/		/		/		/		/		/	
//	4	//	Producto 4/			/		/		/		/		/		/		/	
//	5	//	Producto 5/			/		/		/		/		/		/		/	
//	6	//	Total semana/		/		/		/		/		/		/		/									
//	7	//	Producto más/		/		/		/		/		/		/		/	
//	8	//	vendido		/		/		/		/		/		/		/		/	

Algoritmo EstadisticasDeVentas
	
	Definir matriz, vectorMayor, f, c como enteros
	Dimension matriz(7, 6), vectorMayor(5)
	
	Escribir "========================================="
	Escribir "======== ESTADISTICAS DE VENTAS ========"
	Escribir "========================================="
	Escribir "";
	Escribir "Por favor, ingrese los datos de los productos"
	Escribir "para sacar sus estadisticas semanal"
	
	//Inicializar los elementos de la matriz en 0
	Para f = 0 hasta 6 Hacer
		Para c = 0 hasta 5 Hacer
			matriz(f,c) = 0
		FinPara
	FinPara
	
	calcularMatriz(matriz, vectorMayor)
	totalSemanal(matriz)
	informe(matriz, vectorMayor)
//	mostrarMatriz(matriz)
	
//	producto1 = "Auris"
//	producto2 = "Mouse"
//	producto3 = "Teclado"
//	producto4 = "Monitor"
//	producto5 = "PC"
//	contador = 0;
//	
//	Para c = 0 hasta 4
//		Si c > 1 Entonces
//			productos = producto1
//			contador = contador + 1;
//		FinSi
//	FinPara
	
	
	
FinAlgoritmo

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

SubProceso totalSemanal(matriz)
	
	Definir f, c Como Entero
	
	Para f = 0 hasta 4
		Para c = 0 hasta 4
			matriz[5, c] = matriz[5, c] + matriz[f, c]
		FinPara
	FinPara
	
FinSubProceso

SubProceso informe(matriz, vectorMayor)
	
	Definir c, f Como Entero
	
	Para f = 0 hasta 4 Hacer
		Para c = 0 hasta 4	
			segun c
				0:
					Escribir "El producto más vendido del día LUNES es "  matriz[6, c], " con el monto total de: $" vectorMayor[c];
				1:
					Escribir "El producto más vendido del día LUNES es "  matriz[6, c], " con el monto total de: $" vectorMayor[c];
				2:
					Escribir "El producto más vendido del día LUNES es "  matriz[6, c], " con el monto total de: $" vectorMayor[c];
				3: 	
					Escribir "El producto más vendido del día LUNES es "  matriz[6, c], " con el monto total de: $" vectorMayor[c];
				4: 
					Escribir "El producto más vendido del día LUNES es "  matriz[6, c], " con el monto total de: $" vectorMayor[c];
						
			FinSegun
			Si matriz[f, c] > vectorMayor[f]
				vectorMayor[f] = matriz[f, c]
				matriz[6, c] = f + 1;
			FinSi
			matriz[f, 5] = matriz[f, 5] + matriz[f, c]
		FinPara
	FinPara
	
//		Si c = 0 Entonces
////			"El producto " PRODUCTO " fue él más vendido del día " DIA ", con el monto total de $" vectorMayor[c]
//			Escribir "El producto más vendido del día LUNES es "  matriz[6, c], " con el monto total de: $" vectorMayor[c];
//		FinSi
//		Si c = 1 Entonces
//			Escribir "El producto más vendido del día LUNES es "  matriz[6, c], " con el monto total de: $" vectorMayor[c];
//		FinSi
//		Si c = 2 Entonces
//			Escribir "El producto más vendido del día LUNES es "  matriz[6, c], " con el monto total de: $" vectorMayor[c];
//		FinSi
//		Si c = 3 Entonces
//			Escribir "El producto más vendido del día LUNES es "  matriz[6, c], " con el monto total de: $" vectorMayor[c];
//		FinSi
//		Si c = 4 Entonces
//			Escribir "El producto más vendido del día LUNES es "  matriz[6, c], " con el monto total de: $" vectorMayor[c];
//		FinSi
	
FinSubProceso
	