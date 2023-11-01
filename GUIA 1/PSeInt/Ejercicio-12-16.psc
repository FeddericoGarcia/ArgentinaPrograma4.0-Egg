// Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
// capicúa o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
// transformar el numero a cadena para realizar el ejercicio.

Algoritmo Capicua2
	
	Definir num Como Entero
	
	Escribir "Ingresá un número de 1 hasta 5 cifras: "
	Leer num;
	Escribir "¿El número * " num " * es Capicua?: " Capicua(num);

FinAlgoritmo

Funcion return = Capicua(num)
	
	Definir unidad, decena, centena, mil, miles Como Real
	Definir i, num2 Como Entero
	Definir return Como Logico
	
	num2 = num;
	i = 0;
	
	Hacer 
		num2 = trunc(num2/10);
		i = i + 1;
	Mientras que num2 > 0;
	
	miles = num/100;
	miles = trunc(miles/100);
	
	mil = num MOD 10000;
	mil = trunc(mil/1000);
	
	centena = num MOD 1000;
	centena = trunc(centena/100);
	
	decena = num MOD 100;
	decena = trunc(decena/10);
	
	unidad = num MOD 10;
	unidad = trunc(unidad);
	
	Si i = 2 Entonces
		Si (unidad = decena) Entonces
			return = verdadero;
		SiNo
			return = falso;
		FinSi
	FinSi
	
	Si i = 3 Entonces
		Si (unidad = centena) Entonces
			return = verdadero;
		SiNo
			return = falso;
		FinSi
	FinSi
	
	Si i = 4 Entonces
		Si (unidad = mil) y (decena = centena) Entonces
			return = verdadero;
		SiNo
			return = falso;
		FinSi
	FinSi
	
	Si i = 5 Entonces
		Si (unidad = miles) y (decena = mil) Entonces
			return = verdadero;
		SiNo
			return = falso;
		FinSi
	FinSi

FinFuncion
	