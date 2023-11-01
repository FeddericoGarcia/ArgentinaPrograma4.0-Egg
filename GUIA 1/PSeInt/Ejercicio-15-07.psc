// 	Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
//	letras "M" y "T". Recordar que Pseint le da un valor numérico a cada letra a través del Código
//	Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.

Algoritmo LetraASCII
	
	Definir letra Como Caracter
	
	Escribir "Ingresa una letra: ";
	Leer letra;
	
	letra = Minusculas(letra);	
	codificacion(letra)
	
FinAlgoritmo

SubProceso codificacion(letra)
	
	Definir return Como Logico

	Si letra >= "m" y letra <= "t" Entonces
		return = Verdadero;
		Escribir "¿La letra esta entre la M y T?: " return;
	SiNo
		return = Falso;
		Escribir return, ": La letra * ", letra " * no se encuentra dentro del rango de la tabla ASCII";
	FinSi
	
	
FinSubProceso
	