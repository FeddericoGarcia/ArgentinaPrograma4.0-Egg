Algoritmo Desayuno
	
	Definir infusion Como Caracter
	Escribir "�Que infusion queres?"
	Escribir "A - CAFE"
	Escribir "B - T�"
	Leer infusion
	
	infusion = Mayusculas( infusion )
	
	Si infusion = "A" Entonces
		Escribir "Elegiste CAFE, lo queres como..."
		Escribir "C - CORTADO"
		Escribir "D - SOLO"
		
		Si infusion = "B" Entonces
			Escribir "Elegiste t�, ya se lo traemos a la mesa"
		FinSi
		
	FinSi

FinAlgoritmo
