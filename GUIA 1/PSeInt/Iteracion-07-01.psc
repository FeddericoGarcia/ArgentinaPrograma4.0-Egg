Algoritmo Iteracion0701
	
	//Diseña un programa que guarde una vocal secreta en una variable, debemos pedirle al usuario
	//que intente adivinar la vocal secreta, e intentará tantas veces como sea necesario hasta que la
	//adivine.
	
	Definir letra Como Caracter
	
	Escribir "Adivina, adivinador... ¿Cual sera la vocal secreta?:"
	Leer letra
	
	Mientras letra <> "e" Hacer
		Escribir "No has tenido suerte, intente nuevamente: "
		Leer letra
	FinMientras
	
	Escribir "¡ Es una VOCAL !"
	
	
FinAlgoritmo
