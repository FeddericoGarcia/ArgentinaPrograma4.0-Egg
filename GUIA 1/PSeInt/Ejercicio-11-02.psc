Algoritmo contador
	
	//	2. Escribir un programa que lea un número entero y devuelva el número de dígitos que
	//	componen ese número. Por ejemplo, si introducimos el número 12345, el programa
	//	deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el operador
	//	de división. Nota: recordar que las variables de tipo entero truncan los números o
	//	resultados.
	
	Definir num como entero
	Definir i Como Real
	
	Escribir "Por favor, ingresa un numero entero: "
	Leer num;
	i = 0;
	
	Hacer
		
		num = trunc(num / 10);
		i = i + 1;
		
	Mientras Que num > 0
	
	Escribir "El numero tiene ", i " digitos"
	
	
FinAlgoritmo
