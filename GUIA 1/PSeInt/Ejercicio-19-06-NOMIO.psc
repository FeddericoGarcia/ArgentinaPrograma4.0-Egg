Algoritmo EjercicioExtra06
	definir array01, variable Como Entero
	dimension array01(20)
	variable = valores(array01)
FinAlgoritmo
Funcion variable <- valores ( array01 Por Referencia )
	definir variable, x, z, i Como Entero
	x = 0; z = 0
	para i = 0 hasta 19 Hacer
		array01(i) = aleatorio (1, 100)
		si array01(i) > x Entonces
			x = array01(i)
		SiNo;si array01(i) < x Entonces
				z= array01(i)
			FinSi;FinSi;FinPara
			escribir "El valor mas alto es: " x
			escribir "El valor mas chico es: " z
			escribir "La diferencia entre estos valores es: " x-z
		Fin Funcion
		/// Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
		/// su valor más grande