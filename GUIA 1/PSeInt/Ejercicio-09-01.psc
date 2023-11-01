Algoritmo buclePARA
	
	//Escribir una estructura PARA que le solicite al usuario varios números y al finalizar muestre el
	//mayor número ingresado.
	
	Definir num, i, numMayor Como Entero
	
	Escribir "Ingresa un numero: ";
	Leer num;
	
	numMayor = 0;
	
	Para i <- 1 hasta num Con paso 1 hacer 
		Escribir "Ingresa otro numero: ";
		Leer numMayor;
		
		Si numMayor > num Entonces
			
			num = numMayor 
			
		FinSi
		
	FinPara
	
	Escribir "El numero mayor ingresado es el ", num;
	
	
FinAlgoritmo
