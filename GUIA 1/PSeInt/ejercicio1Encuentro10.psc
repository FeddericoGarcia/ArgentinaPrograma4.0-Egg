Algoritmo ejercicio1Encuentro10
	
	//Una compa��a de seguros tiene contratados a n vendedores. Cada vendedor realiza
	//m�ltiples ventas a la semana. La pol�tica de pagos de la compa��a es que cada vendedor
	//recibe un sueldo base m�s un 10% extra por comisiones de sus ventas. El gerente de la
	//compa��a desea saber, por un lado, cu�nto dinero deber� pagar en la semana a cada
	//vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cu�nto
	//deber� pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
	//vendedor ingresar cuanto es su sueldo base, cuantas ventas realiz� y cuanto cobr� por
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
		escribir "Cuantas ventas realiz� en la semana"
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
