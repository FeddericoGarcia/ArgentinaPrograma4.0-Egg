Algoritmo Concesionaria
	
	// Una compa��a de seguros tiene contratados a n vendedores. Cada vendedor realiza
	// m�ltiples ventas a la semana. La pol�tica de pagos de la compa��a es que cada vendedor
	// recibe un sueldo base m�s un 10% extra por comisiones de sus ventas. El gerente de la
	// compa��a desea saber, por un lado, cu�nto dinero deber� pagar en la semana a cada
	// vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cu�nto
	// deber� pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
	// vendedor ingresar cuanto es su sueldo base, cuantas ventas realiz� y cuanto cobr� por
	// cada venta.
	
	Definir vendedor, sueldoBase, ventas, ventasImporte, i, j Como Entero
	Definir comision, sueldoTotal Como Real
	
	Escribir "Cuantos vendedores tiene la compa�ia?";
	Leer vendedor;
	
	
	Para i <- 1 hasta vendedor con paso 1 Hacer
		Escribir "�El sueldo base cuanto es?: ";
		Leer sueldoBase;
		Escribir "Ingresa la cantidad de ventas realizadas: ";
		Leer ventas;
		Escribir "Y el importe total de las ventas: ";
		Leer ventasImporte;
		
		comision = ventasImporte * 0.1 ;
		
		Para j <- 1 hasta 1 con paso 1 Hacer			
			Escribir "El vendedor ", i, " ha realizado " ventas, " ventas, con un total de $", ventasImporte, ", teniendo una comision del 10% de $", comision;
			Escribir "El sueldo base es de $", sueldoBase " m�s la comision seria un total de: $" sueldoBase + comision; 
		FinPara
	FinPara
	
	
	
	
	
	
FinAlgoritmo