// Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a y que
// devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es "asdasd". Ade-
// m�s, la funci�n calculara el n�mero de intentos que se ha usado para loguearse, tenemos solo
// 3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso.

Algoritmo LoginDeUsuario
	
	Definir user, pass, return2 Como Caracter
	
	Escribir "Ingresa tu usuario:";
	Leer user;
	Escribir "Ingresa la contrase�a:";
	Leer pass;
	
	return2 = Login(user, pass);

FinAlgoritmo

Funcion return = Login(user, pass)
	
	Definir return Como Logico
	Definir i Como Entero
	
	Para i = 1 hasta 3 Hacer
		Si (user = "usuario1") y (pass = "asdasd") Entonces
			return = Verdadero;
			Escribir return;
			Escribir "*** Ingresando al sistema ***"
			i = 4;
		SiNo
			return = Falso;
			Escribir return;
			Escribir "Vas ", i " intentos de 3 permitidos";
			Escribir "Por favor, reingresa los datos";
			Escribir "Ingresa tu usuario:";
			Leer user;
			Escribir "Ingresa la contrase�a:";
			Leer pass;
		FinSi
		Si i = 3 Entonces
			Escribir "*** USUARIO BLOQUEADO ***";
		FinSi
	FinPara
	
FinFuncion
	