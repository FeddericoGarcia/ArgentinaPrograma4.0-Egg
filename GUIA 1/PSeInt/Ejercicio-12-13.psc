// Realizar una función que calcule la suma de los dígitos de un número.
// Ejemplo: 25 = 2 + 5 = 7
// Nota: Para obtener el último número de un digito de 2 cifras o más debemos pensar en el
// resto de una división entre 10. Recordar el uso de la función Mod y Trunc.


Algoritmo CalculadoraDeDigitos
	
	Definir num Como Entero
	
	Escribir "Ingresa un numero entero de 2 o 3 digitos: ";
	Leer num;
	
	Escribir "La suma de los digitos ", num " es: " SumaDigito(num);
	

FinAlgoritmo

Funcion return = SumaDigito(num)
	
	Definir return Como Entero
	Definir centena, decena, unidad Como Real
	
	centena = num/100;
	centena = trunc(centena);
	
	decena = (num mod 100);
	decena = trunc(decena/10);
	
	unidad = ((num%10));
	unidad = trunc(unidad);
	
	return = centena + decena + unidad;
	
FinFuncion
	