Algoritmo importeDescuento
	
	//Una tienda ofrece para los meses de septiembre, octubre y noviembre un descuento del
	//10% sobre el total de la compra que realiza un cliente. Solicitar al usuario que ingrese un
	//mes y el importe de la compra. El programa debe calcular cuál es el monto total que se
	//debe cobrar al cliente e imprimirlo por pantalla.
	
	Definir mes Como Caracter
	Definir importe, descuento Como Real
	
	Escribir "En que mes te encontras?"
	Leer mes
	Escribir "Y cuanto es el importe del producto?"
	Leer importe
	
	mes = Minusculas(mes)
	
	Si mes = "septiembre" o mes = "octubre" o mes = "noviembre" Entonces
		descuento = importe * 0.10
		importe = importe - descuento
		Escribir "Con tu descuento del 10% te queda en: $", importe
	SiNo
		Escribir "El precio de lista es: $", importe
	FinSi
	
	
FinAlgoritmo
