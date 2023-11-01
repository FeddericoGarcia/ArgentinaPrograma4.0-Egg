Algoritmo Concesionaria
	
	// Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
	// múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
	// recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la
	// compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
	// vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
	// deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
	// vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por
	// cada venta.
	
	Definir vendedor, sueldoBase, ventas, ventasImporte, i, j Como Entero
	Definir comision, sueldoTotal Como Real
	
	Escribir "Cuantos vendedores tiene la compañia?";
	Leer vendedor;
	
	
	Para i <- 1 hasta vendedor con paso 1 Hacer
		Escribir "¿El sueldo base cuanto es?: ";
		Leer sueldoBase;
		Escribir "Ingresa la cantidad de ventas realizadas: ";
		Leer ventas;
		Escribir "Y el importe total de las ventas: ";
		Leer ventasImporte;
		
		comision = ventasImporte * 0.1 ;
		
		Para j <- 1 hasta 1 con paso 1 Hacer			
			Escribir "El vendedor ", i, " ha realizado " ventas, " ventas, con un total de $", ventasImporte, ", teniendo una comision del 10% de $", comision;
			Escribir "El sueldo base es de $", sueldoBase " más la comision seria un total de: $" sueldoBase + comision; 
		FinPara
	FinPara
	
	
	
	
	
	
FinAlgoritmo