// Dise�ar una funci�n que reciba un numero en forma de cadena y lo devuelva como numero
// entero. 
// El programa podr� recibir n�meros de hasta 3 d�gitos. 
// Nota: no poner n�meros con decimales ni letras. Ejemplo: ingresando "100"(car�cter) debe convertirse en 100(entero).
Algoritmo Conversion
	
	Definir num Como Caracter
	Definir return, long Como Entero
	
	Escribir 'Ingresa un numero: '
	Leer num;
	
	long = Longitud(num);
	return = Convertir(num)
	
	Si (long > 0) Y (long <= 3) Entonces
		Escribir 'El n�mero entero ingresado es: ', return;
	SiNo
		Escribir 'El n�mero ingresado tiene m�s de 3 digitos.';
	FinSi
	
FinAlgoritmo

Funcion return = Convertir(num)
	
	Definir return Como Entero
	return = ConvertirANumero(num);

FinFuncion
