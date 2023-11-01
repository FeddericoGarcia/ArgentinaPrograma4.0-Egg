Algoritmo sin_titulo
//	Necesitamos crear un sistema para una m�quina de reciclaje de botellas autom�tica. Dicha
//	m�quina nos pagar� dinero por la cantidad de pl�stico reciclado. Tenemos que ingresar
//	nuestro usuario y contrase�a para que se nos cargue el saldo por sistema a nuestra
//	cuenta.
//	? Condici�n simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
//	verdadero, validaremos si la contrase�a es "caramelosDeLimon". Si la contrase�a es
//	correcta haremos que una variable llamada Login sea verdadera.
	
//	? Bucle Mientras: Este bloque de validaci�n de la contrase�a lo encerraremos en un
//	 bucle Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.
	
//	? Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al
//	men� de opciones:
//		o Ingresar botellas
//		o Consultar saldo
//		o Salir
//	2
//	Ingresar Botellas: Primero preguntaremos cu�ntas botellas se va a ingresar al sistema.
//	Una vez que tenemos el n�mero vamos a usar un bucle para, a fin de ir ingresando
//	cada botella. En cada ciclo del bucle se debe generar un n�mero aleatorio entre 100 y
//	3000 gr, que va a ser el peso de las botellas a reciclar (simulando que el usuario est�
//	ingresando botellas en la m�quina). Una vez generado, seg�n el peso del material,
//	usaremos un condicional m�ltiple para asignarle un valor monetario:
//	o Si es menos de 500 gr, corresponden $50
//	o Si es entre 501 gr y 1500 gr, corresponden $125
//	o Si es m�s de 1501 gr, corresponden $200
//	Hecho esto, el programa debe informar al usuario por pantalla el valor que se le
//	ofrece. Si el usuario acepta, lo acreditamos a su saldo, sino se debe devolver el
//	material (s�lo mostrar en pantalla "Devolviendo material"). Para esto usaremos un
//	condicional doble.
//	? Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".
//	? Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al men�
//	principal.
//	
	
Definir usuario, pass, acreditar_saldo Como Caracter	
Definir contador_pass, menu_opciones, cant_botellas, i, peso_botella, saldo Como Entero
Definir login, usuario2, menu Como Logico


contador_pass = 0
usuario2 = Falso
login = Falso
menu_opciones = 0
cant_botellas = 0
peso_botella = 0
saldo = 0
menu = Verdadero

// Tenemos que ingresar
//	nuestro usuario y contrase�a para que se nos cargue el saldo por sistema a nuestra
//	cuenta.

	Escribir "Ingrese el usuario"
	Leer usuario
	
	Escribir usuario2
		
	si usuario = "Albus_D" Entonces
		usuario2 = Verdadero
	SiNo
		Escribir "Reingresar usuario"
		Leer usuario
		si usuario <> "Albus_D" Entonces
			Escribir "Supero el maximo de intentos"
			usuario2 = Falso
		SiNo
			usuario2 = Verdadero
		FinSi
		
	FinSi

	Escribir usuario2
	
	// luego si esto es
	//	verdadero, validaremos si la contrase�a es "caramelosDeLimon". Si la contrase�a es
	//	correcta haremos que una variable llamada Login sea verdadera.
	
	
	si usuario2 = Verdadero Entonces
		Escribir "Ingresar contrase�a"
		Leer pass
	//	 bucle Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.
		Mientras contador_pass < 2 Hacer
			si pass <> "caramelosDeLimon" Entonces
				Escribir "Reingresar contrase�a"
				Leer pass 
				contador_pass = contador_pass +1
				Escribir contador_pass
			SiNo
				login = Verdadero
				contador_pass = 3
			FinSi
		FinMientras
		si contador_pass = 2 Entonces
			Escribir "Supero el maximo de intentos de contrase�a"
		FinSi
	FinSi
	
	
	//	? Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al
	//	men� de opciones:
	//		o Ingresar botellas
	//		o Consultar saldo
	//		o Salir
	
	si login = Verdadero Entonces
		Hacer
			si menu = Verdadero Entonces
			Escribir "Seleccione una opcion"
			Escribir "1_Ingresar botellas | 2_Consultar saldo | 3_Salir "
			Leer menu_opciones
				Segun menu_opciones Hacer
					1:
						Escribir "Indicar la cantidad de botellas para ingresar al sistema"
						leer cant_botellas
						
						// Ingresar Botellas: Primero preguntaremos cu�ntas botellas se va a ingresar al sistema.
						//	Una vez que tenemos el n�mero vamos a usar un bucle para, a fin de ir ingresando
						//	cada botella. En cada ciclo del bucle se debe generar un n�mero aleatorio entre 100 y
						//	3000 gr, que va a ser el peso de las botellas a reciclar
						
						para i = 1 Hasta cant_botellas Hacer
							peso_botella = Aleatorio(100,3000)
							//	o Si es menos de 500 gr, corresponden $50
							//	o Si es entre 501 gr y 1500 gr, corresponden $125
							//	o Si es m�s de 1501 gr, corresponden $200
							
							si peso_botella <= 500 Entonces
								saldo = saldo + 50
							FinSi
							
							si peso_botella >= 501 y peso_botella <= 1500 Entonces
								saldo = saldo + 125
							FinSi
							
							si peso_botella >= 1501 Entonces
								saldo = saldo + 200
							FinSi
							
						FinPara
						
						//	Hecho esto, el programa debe informar al usuario por pantalla el valor que se le
						//	ofrece. Si el usuario acepta, lo acreditamos a su saldo, sino se debe devolver el
						//	material (s�lo mostrar en pantalla "Devolviendo material"). Para esto usaremos un
						//	condicional doble.
						
						Escribir "Su saldo actual es: $" saldo
						Escribir "�Desea acreditar su saldo? SI / NO"
						Leer acreditar_saldo
						acreditar_saldo = Minusculas(acreditar_saldo)
						
						si acreditar_saldo = "si" Entonces
							Escribir "Saldo acreditado"
						SiNo
							Escribir "Devolviendo material"
							Saldo = 0
						FinSi
						menu = Verdadero
					2:
						Escribir "Su saldo actual es: $" saldo
						menu = Verdadero
					3: 
						menu = Falso
				Fin Segun
			FinSi
		Mientras Que menu <> Falso
	FinSi
	
FinAlgoritmo
