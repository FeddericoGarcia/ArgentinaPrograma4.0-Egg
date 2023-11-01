// Realiza una función llamada Cooperar que reciba dos variables de tipo carácter, una variable debe
// contener el mensaje "Cooperando" y la otra "trabajamos mejor". La función debe concatenar am-
// bos textos.

Algoritmo concatenarMsjs
	
	Definir msj1, msj2, i Como Caracter
	
	msj1 = "Cooperando ";
	msj2 = "trabajamos mejor";
	i = Cooperar(msj1, msj2);
	
	Escribir i;
	
FinAlgoritmo

Funcion retorno <- Cooperar(msj1, msj2)
	
	Definir retorno Como Caracter;
	retorno = Concatenar(msj1, msj2);
	
FinFuncion

