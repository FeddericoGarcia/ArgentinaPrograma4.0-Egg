Algoritmo ejecutiva
	definir emails, sol_ejecutivos, sol_emergencia Como Entero
	
	Escribir "Ingresa la cantidad de e-mails"
	leer emails
	Escribir "ingresa la cantidad de solicitudes de ejecutivos"
	leer sol_ejecutivos
	Escribir "Ingresa la cantidad de solicitudes de emergencia"
	leer sol_emergencia
	
	//imprime la tareas que dan inicio a la lista
	escribir "-Iniciar sesion como usuario administrador"
	escribir "-Completar hoja de calculo de ingresos mensuales"
	escribir "-revisar correo electronico"
	
	//valida que cantidad de mails tiene que revisar 
	si (emails < 10) Entonces
		//si son menos de diez revisa el correo de voz
		escribir "-revisar correo de voz"
		si(sol_emergencia>0) Entonces
			escribir"-resolver solicitud de emergencia"
			escribir "-resolver solicitud de los ejecutivos"
		sino 
			escribir "-resolver solicitud de los ejecutivos"
		FinSi
		
	FinSi
	
	//si tiene solicitudes de emergencia las revisa 1ero si no las ejecutivas 

	escribir "-Enviar correo de actualización"
	escribir "-apagar la computadora"
	escribir "-regar la planta"
	
	
	
FinAlgoritmo
