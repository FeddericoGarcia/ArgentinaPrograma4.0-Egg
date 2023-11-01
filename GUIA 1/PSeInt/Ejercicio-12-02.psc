Algoritmo CorreccionErrores
	
	Definir num, i Como Entero
	
	Leer num
	i = Paridad(num)
	Escribir i
	
FinAlgoritmo

Funcion retorno <- Paridad ( num )
	
	Definir retorno Como Logico;
	retorno = (num MOD 2) == 0;
	
Fin Funcion

