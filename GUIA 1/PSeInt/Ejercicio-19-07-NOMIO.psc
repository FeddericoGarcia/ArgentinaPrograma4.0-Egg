Algoritmo EjercicioExtra07
Definir array01, variable Como Entero
dimension array01(4)
variable = producto(array01)
FinAlgoritmo

Funcion variable <- Producto ( array01 Por Referencia )
	definir i, p Como Entero
	p=1
	para i = 0 hasta 3 Hacer
		array01(i) = i+1
		imprimir array01(i)
		p = p * array01(i)
	FinPara
	escribir "El producto del arreglo es: " p
Fin Funcion



/// Programe una funci�n que calcule el producto de un arreglo de n�meros enteros. Para esto

/// imagine, por ejemplo, que para un vector V de tama�o 4, el producto de todos los valores es

///	igual a (V[1]*V[2]*V[3]*V[4])