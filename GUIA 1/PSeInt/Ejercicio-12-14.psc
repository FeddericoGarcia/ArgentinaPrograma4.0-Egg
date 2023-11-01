// Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
// tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
// numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
// Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
// realizar el ejercicio.


Algoritmo CalculadoraDeDigitos
	
	Definir num Como Entero
	
	Escribir "Ingresa un numero: ";
	Leer num;
	
	Escribir sumaImpar(num);
	

FinAlgoritmo

Funcion return = sumaImpar(num)
	
	Definir return , comparar Como logico
	Definir centena, decena, unidad Como Real
	Definir contador, i Como Entero
	
	centena = num/100;
	centena = trunc(centena);
	
	decena = (num mod 100);
	decena = trunc(decena/10);
	
	unidad = ((num%10));
	unidad = trunc(unidad);
	
	i = 0;
	contador = 0 ;
	
	Hacer
		
		num = trunc(num / 10);
		contador = contador + 1;
		
	Mientras Que num > 0;
	
	Si (centena MOD 2 <> 0) Entonces
		i = i + 1;
	FinSi
	
	Si (decena MOD 2 <> 0) Entonces
		i = i + 1;
	FinSi
	
	Si (unidad MOD 2 <> 0) Entonces
		i = i + 1;	
	FinSi
	
	Si contador = i Entonces
		return = Verdadero;
	SiNo
		return = Falso;
	FinSi
	
FinFuncion
