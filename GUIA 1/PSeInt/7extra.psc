////Una empresa de venta de productos por correo desea realizar una estadística de las ventas
////realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5 produc-
////tos en los 5 días hábiles de la semana. Se desea conocer:
////	a) Total de ventas por cada día de la semana.
////	b) Total de ventas de cada producto a lo largo de la semana.
////	c) El producto más vendido en cada semana.
////	d) El nombre, el día de la semana y la cantidad del producto más vendido.

Algoritmo sin_titulo
	Definir matriz, totalProducto, totalDia, productoMasVendido, max, f, c, dia, maxDia, productoDelDia Como Entero
	Dimension matriz[5,5], totalProducto[5], totalDia[5]
	max=0
	maxDia=0
	
	Para f=0 Hasta 4 Hacer
		totalProducto[f]=0
		Escribir "Ventas del producto ", f+1, ":"
		Para c=0 Hasta 4 Hacer
			Escribir "Ventas del dia ", c+1, ":"
			Leer matriz[f,c]
			totalProducto[f]=totalProducto[f]+matriz[f,c]
		FinPara
	FinPara
	Limpiar Pantalla
	
	Para C=0 Hasta 4 Hacer
		totalDia[c]=0
		Para f=0 Hasta 4 Hacer
			totalDia[c]=totalDia[c]+matriz[f,c]
		FinPara
	FinPara
	
	Escribir "Matriz:"
	Para f=0 Hasta 4 Hacer
		Para c=0 Hasta 4 Hacer
			Escribir Sin Saltar "[", matriz[f,c], "]"
		FinPara
		Escribir ""
	FinPara
	
	Escribir "Ventas total de cada producto:"
	Para f=0 Hasta 4 Hacer
		Escribir Sin Saltar "[", totalProducto[f], "]"
		Escribir ""
	FinPara
	
	Escribir "Ventas total de cada dia:"
	Para f=0 Hasta 4 Hacer
		Escribir Sin Saltar "[", totalDia[f], "]  "
	FinPara
	
	Escribir "Producto mas vendido:"
	Para f=0 Hasta 4 Hacer
		Si totalProducto[f]>max Entonces
			max=totalProducto[f]
			productoMasVendido=f+1
		FinSi
	FinPara
	Escribir "El producto mas vendido es: ", productoMasVendido, " con un total de ", max
	
	Escribir "Producto mas vendido de la semana:"
	Para f=0 Hasta 4 Hacer
		Si totalDia[f]>maxDia Entonces
			maxDia=totalDia[f]
			productoDelDia=f+1
			dia=f+1
		FinSi
	FinPara
	Escribir "El producto mas vendido de la semana es: ", productoDelDia, " con un total de ", maxDia, " el dia ", dia
FinAlgoritmo
