Algoritmo UsuarioLogin
	
	// Realizar un programa que solicite al usuario su código de usuario (un número entero
	//mayor que cero) y su contraseña numérica (otro número entero positivo). El programa no le
	//debe permitir continuar hasta que introduzca como código 1024 y como contraseña 4567.
	//El programa finaliza cuando ingresa los datos correctos.
	
	Definir usuario, password Como Entero
	
	Hacer
		Escribir "Por favor, ingresa tu numero de usuario: ";
		Leer usuario;
		
		Escribir "Por favor, ingresa tu password: ";
		Leer password;
		
		Si usuario < 0 Entonces
			Escribir "El numero de usuario debe ser mayor a 0 (cero)";
		FinSi
		
		Si password < 0 Entonces
			Escribir "La contraseña debe ser un numero entero positivo";
		FinSi
	Mientras Que usuario <> 1024 o password <> 4567
	
	Escribir "Ingresando al sistema, por favor, espere..."
	
	
FinAlgoritmo