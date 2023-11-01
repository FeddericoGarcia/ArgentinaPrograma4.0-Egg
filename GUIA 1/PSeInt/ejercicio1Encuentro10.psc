Algoritmo ejercicio1Encuentro10
	
	//Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
	//múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
	//recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la
	//compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
	//vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
	//deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
	//vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por
	//cada venta.
	definir vendedores, sueldo_base, ventas, i, j como entero 
	definir comision, monto_de_ventas Como Real
	
	escribir "Ingrese la cantidad de vendedores"
	leer vendedores 
	i=1
	j=1
	
	Para i<-1 Hasta vendedores Con Paso 1 Hacer
		escribir "Ingrese el sueldo base "
		leer sueldo_base
		escribir "Cuantas ventas realizó en la semana"
		leer ventas 
		Escribir "Ingrese el monto total de las ventas"
		leer monto_de_ventas
		comision= monto_de_ventas * 0.10
		Para j<-1 Hasta 1 Con Paso 1 Hacer
			escribir "pagar por comision al vendedor ", i, " $ ", comision
			escribir "Pagar como sueldo total al vendedor ", i, " $ ", comision + sueldo_base
			escribir " "
		Fin Para
		
		
	Fin Para
FinAlgoritmo
