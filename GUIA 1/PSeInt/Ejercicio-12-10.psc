// Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
// entero. 
// El programa podrá recibir números de hasta 3 dígitos. 
// Nota: no poner números con decimales ni letras. Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).
Algoritmo Conversion
	
	Definir num Como Caracter
	Definir return, long Como Entero
	
	Escribir 'Ingresa un numero: '
	Leer num;
	
	long = Longitud(num);
	return = Convertir(num)
	
	Si (long > 0) Y (long <= 3) Entonces
		Escribir 'El número entero ingresado es: ', return;
	SiNo
		Escribir 'El número ingresado tiene más de 3 digitos.';
	FinSi
	
FinAlgoritmo

Funcion return = Convertir(num)
	
	Definir return Como Entero
	return = ConvertirANumero(num);

FinFuncion
