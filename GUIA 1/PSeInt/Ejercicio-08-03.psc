Algoritmo PalabraClave
	
	//Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
	//una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá
	//mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la
	//clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema
	//correctamente.
	
	Definir paClave Como Caracter
	Definir contador, i Como Entero
	
	contador = 0
	i = 3
	
	Hacer
		Escribir "Ingresa la clave secreta:"
		Escribir "Solo tienes ", i, " de intentos"
		Leer paClave;
		contador = contador + 1;
		i = i - 1;
	Mientras Que (paClave <> "eureka") y (contador < 3 )
	
	Si paClave = "eureka" Entonces
		Escribir "... Ingresando al sistema ...";
	SiNo 
		Si contador = 3 Entonces
				Escribir "Agoto la cantidad de intentos";
			FinSi
	FinSi
	
FinAlgoritmo