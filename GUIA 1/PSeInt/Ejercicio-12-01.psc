// Realiza una funci�n llamada Cooperar que reciba dos variables de tipo car�cter, una variable debe
// contener el mensaje "Cooperando" y la otra "trabajamos mejor". La funci�n debe concatenar am-
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

