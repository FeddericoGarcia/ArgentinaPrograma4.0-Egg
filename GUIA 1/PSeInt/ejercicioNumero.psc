Algoritmo numer
	
	Definir cifra, centena, decena, unidad Como Real
	
	Escribir "Por favor ingresa una cifra:"
	Leer cifra
	
	// Primero se ejectua la ecuación
	unidad = cifra mod 10
	// Y con el resultado se aplica la funcion TRUNC para obtener el numero entero
	unidad = trunc(unidad)
	
	// Se ejecuta primero lo del parentesis brindando numero decimal, luego de ese resultado se divide por 10 para obtener otro decimal
	decena = (cifra mod 100) / 10
	// Al numero decimal recibido se aplica trunc para obtener el entero
	decena = trunc(decena)
	
	// Se ejecuta la ecuación
	centena = cifra / 100
	// Separamos la centena de dicha ecuación
	centena = trunc(centena)
	
	Escribir "La cifra de ", cifra " tiene como unidad: ", unidad, ", la decena: ", decena, ", y la centena: ", centena
	

FinAlgoritmo
