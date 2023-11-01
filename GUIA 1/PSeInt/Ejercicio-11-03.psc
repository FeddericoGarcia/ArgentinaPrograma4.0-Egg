Algoritmo LoginBotellas
	
	// Necesitamos crear un sistema para una m�quina de reciclaje de botellas autom�tica. Dicha
	// m�quina nos pagar� dinero por la cantidad de pl�stico reciclado. Tenemos que ingresar
	// nuestro usuario y contrase�a para que se nos cargue el saldo por sistema a nuestra
	//	cuenta.
	// ? Condici�n simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
	// 	verdadero, validaremos si la contrase�a es "caramelosDeLimon". Si la contrase�a es
	//	correcta haremos que una variable llamada Login sea verdadera.
	//	? Bucle Mientras: Este bloque de validaci�n de la contrase�a lo encerraremos en un
	//	bucle Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.
	//	? Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al
	//	men� de opciones:
	//	o Ingresar botellas
	//	o Consultar saldo
	//	o Salir
	//				
	//	2
	//	? Ingresar Botellas: Primero preguntaremos cu�ntas botellas se va a ingresar al sistema.
	//	Una vez que tenemos el n�mero vamos a usar un bucle para, a fin de ir ingresando
	// 	cada botella. En cada ciclo del bucle se debe generar un n�mero aleatorio entre 100 y
	//	3000 gr, que va a ser el peso de las botellas a reciclar (simulando que el usuario est�
	//	ingresando botellas en la m�quina). Una vez generado, seg�n el peso del material,
	//	usaremos un condicional m�ltiple para asignarle un valor monetario:
	//	o Si es menos de 500 gr, corresponden $50
	//	o Si es entre 501 gr y 1500 gr, corresponden $125
	// 	o Si es m�s de 1501 gr, corresponden $200
	//
	//	Hecho esto, el programa debe informar al usuario por pantalla el valor que se le
	//	ofrece. Si el usuario acepta, lo acreditamos a su saldo, sino se debe devolver el
	//	material (s�lo mostrar en pantalla "Devolviendo material"). Para esto usaremos un
	//	condicional doble.
	//	 Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".
	//? Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al men�
	// principal.
	
	Definir user, password, acreditarSaldo Como Caracter
	Definir i, j, menuOpc, cantBotellas, pesoBotellas, saldo  Como Entero
	Definir menu, loggin, Loggin2 Como Logico
	
	i = 0;
	password = "";
	cantBotellas = 0;
	pesoBotellas = 0;
	saldo = 0;
	acreditarSaldo = "";
	menu = Falso;
	Loggin = Falso;
	Loggin2 = Falso;
	
	Escribir "Ingresa tu ususario: "
	Leer user;	
	
	Si 	User = "Albus_D" Entonces
		Loggin = Verdadero	;
	SiNo
		Loggin = Falso;
		Escribir "Usuario incorrecto, te queda un solo intento: ";
		Leer user;
		Si User <> "Albus_D" Entonces
			Escribir "Usuario bloqueado, ponte en contacto con tu administrador";
		SiNo
			Loggin = Verdadero;
		FinSi
	FinSi

	Si Loggin = Verdadero Entonces
		Escribir "Ingresa tu contrase�a: ";
		Leer password;
		
		Mientras (i < 4) hacer
			Si password <> "caramelosDeLimon" Entonces
				i = i + 1;
				Escribir "XXXXXX Contrase�a Incorrecta XXXXXX"
				Escribir "Vas ", i " intentos de 3. Reingresa tu contrase�a: ";
				Leer password;
			SiNo
				Loggin2 = Verdadero;
				Escribir "-------------------------------";
				Escribir "... Ingresando al sistema ..."
				Escribir "-------------------------------";
				i = 5;
			FinSi
		FinMientras
		Si i = 4 Entonces
			Escribir "Usuario bloqueado, ponte en contacto con tu administrador";
		FinSi
	FinSi
	
	
	Si Loggin2 = Verdadero Entonces	
		menu = Verdadero 
		Hacer
			Si menu = Verdadero Entonces
			Escribir " - MENU PRINCIPAL : Seleccion� una opci�n:"
			Escribir " 1 - Ingresar Botellas | 2 - Consultar Saldo | 3 - Salir";
			Leer menuOpc;
				Segun menuOpc Hacer
					1:
						Escribir "Ingresar el numero de botellas: "
						Leer cantBotellas;
						Para j = 1 hasta cantBotellas Hacer
							pesoBotellas = Aleatorio(100,3000);
							//	o Si es menos de 500 gr, corresponden $50
							//	o Si es entre 501 gr y 1500 gr, corresponden $125
							// 	o Si es m�s de 1501 gr, corresponden $200
							Si pesoBotellas <= 500 Entonces
								saldo = saldo + 50;
							FinSi
							Si pesoBotellas >= 501 y pesoBotellas <= 1500 Entonces
								saldo = saldo + 125;
							FinSi
							Si pesoBotellas >= 1501 Entonces
								saldo = saldo + 200;
							FinSi
						FinPara
						
						Escribir "Su saldo actual es: ", saldo;
						Escribir  "�Deseas acreditar el saldo a tu cuenta? (SI / NO)";
						Leer acreditarSaldo;
						
						acreditarSaldo = Minusculas(acreditarSaldo);
						
						Si acreditarSaldo = "si" Entonces
							Escribir "-------------------------------";
							Escribir "El saldo de $" saldo " se acredito en tu cuenta";
							Escribir "-------------------------------";
						SiNo
							Escribir "-------------------------------";
							Escribir "Devolviendo material";
							Escribir "-------------------------------";
							saldo = 0;
						FinSi
						menu = Verdadero;
					2:
						Escribir "-------------------------------";
						Escribir "Su saldo actual es: $", saldo;
						Escribir "-------------------------------";
						Escribir "Volviendo al menu principal...";
						menu = Verdadero;
					3:
						Escribir "-------------------------------";
						Escribir "Saliendo del sistema...";
						menu = Falso;
				FinSegun
			FinSi
		Mientras Que menu <> Falso
		Escribir  "*** Su sesi�n se ha cerrado exitosamente ***";
		Escribir "-------------------------------";
	FinSi
	
	
FinAlgoritmo
