////Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
////que ingrese la opción Salir:
////	A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
////	usando la función Aleatorio(valorMin, valorMax) de PseInt.
////	B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
////	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
////	a elemento. Ejemplo: C = A + B
////	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
////	elemento. Ejemplo: C = B - A
////	E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
////	A, B, o C.
////	F. Salir.
////NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud 
///para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una
////vez.




Algoritmo Ejercicio_4_g5_E18_21
	
	menu()
	
FinAlgoritmo


SubProceso menu()
	
	Definir letra Como Caracter
	Definir opc Como Entero
	Definir vectores Como Logico
	
	vectores = Verdadero
	
	Hacer
		Escribir "*****************************"
		Escribir "Bienvenido a Vectores"
		Escribir "Seleccione una de las opciones listada: "
		Escribir "A. Llenar Vector A."
		Escribir "B. Llenar Vector B."
		Escribir "C. LLenar Vector C con la suma de los vectores A y B"
		Escribir "D. LLenar Vector C con la resta de los vectores B y A."
		Escribir "E. Mostrar Vector: A, B, o C"
		Escribir "F. Salir"
		Escribir "*****************************"
		Leer letra
		letra=Minusculas(letra)
		
		
		Segun letra Hacer
			"a": 
				Escribir "Llenar vector A"
				vectorA
				Escribir " "
				Escribir "Si desea volver al menu principal presione Y"
				Leer letra
				Si letra = "y"
					
					menu()
					
				FinSi
			"b":
				Escribir "Llenar vector B"
				vectorB
				Escribir " "
				Escribir "Si desea volver al menu principal presione Y"
				Leer letra
				Si letra = "y"
					
					menu()
					
				FinSi
			"c":
				Escribir "Llenar C con la suma de A y B"
				vectorC()
				Escribir " "
				Escribir "Si desea volver al menu principal presione Y"
				Leer letra
				Si letra = "y"
					
					menu()
					
				FinSi
			"d":
				Escribir "LLenar D con la resta de B y A"
				vectorD()
				Escribir " "
				Escribir "Si desea volver al menu principal presione Y"
				Leer letra
				Si letra = "y"
					
					menu()
					
				FinSi
			"e":
				Escribir "Indique la opción a mostra: A, B, C "
				Leer letra
				letra=Minusculas(letra)
				Si letra = "a"
					vectorA
					
				SiNo
					
					si letra = "b"
						vectorB
					SiNo
						
						si letra = "c"
							vectorC()
						FinSi
						
					FinSi
				FinSi
				Escribir " "
				Escribir "Si desea volver al menu principal presione Y"
				Leer letra
				Si letra = "y"
					
					menu()
					
				FinSi
				
			De Otro Modo:
				
			"f":
				vectores = Falso
			
		FinSegun
		
		Escribir "Gracias por su consulta. Saliendo del algoritmo"
		
	Mientras Que vectores = Falso
	

FinSubProceso


SubProceso vectorA()
//	Este vector es de tamaño N y se debe llenar de manera aleatoria
//	usando la función Aleatorio(valorMin, valorMax) de PseInt.
	Definir Avector, i Como Entero
	Dimension Avector(100)
	
	Para i <- 0 Hasta 99 Con Paso 1 Hacer
		Avector(i) = Aleatorio(-100,100)
	FinPara
	Para i <- 0 Hasta 99 Con Paso 1 Hacer
		Escribir "En el Vector A la posición ", i, " contiene el valor ", "[" Avector(i) "]"
	FinPara
	
	
FinSubProceso


SubProceso vectorB()
//	Este vector también es de tamaño N y se llena de manera aleatoria.
	Definir Bvector, i Como Entero
	Dimension Bvector(100)
	
	Para i <- 0 Hasta 99  Con Paso 1 Hacer
		Bvector(i) = Aleatorio(-100,100)
	FinPara
	Para i <- 0 Hasta 99 Con Paso 1 Hacer
		Escribir "En el Vector B la posición ", i, " contiene el valor ", "[" Bvector(i) "]"
	FinPara
	
	
FinSubProceso

SubProceso vectorC()
	//	Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
	//	a elemento. Ejemplo: C = A + B
	Definir Cvector, Bvector, Avector, i Como Entero
	
	
	Dimension Bvector(100)
	Dimension Avector(100)
	Dimension Cvector(100) 
	
	
	Para i <- 0 Hasta 99 Con Paso 1 Hacer
		Avector(i) = Aleatorio(-100,100)
		Bvector(i) = Aleatorio(-100,100)
	FinPara
	
	Para i = 0 Hasta 99 Con Paso 1 Hacer
		Cvector(i) = Avector(i) + Bvector(i)
	FinPara
	
	Para i <- 0 Hasta 99 Con Paso 1 Hacer
		Escribir Sin Saltar" En el Vector C: dentro del indice " "[" i "]" " se encuentra ", "[" Cvector(i) "]"
		Escribir " que es la suma de " Avector(i) " + " Bvector(i)
	FinPara
FinSubProceso


SubProceso vectorD()
	Definir Dvector, Bvector, Avector, i Como Entero
	
	
	Dimension Bvector(100)
	Dimension Avector(100)
	Dimension Dvector(100) 
	
	
	Para i <- 0 Hasta 99 Con Paso 1 Hacer
		Avector(i) = Aleatorio(-100,100)
		Bvector(i) = Aleatorio(-100,100)
	FinPara
	
	Para i = 0 Hasta 99 Con Paso 1 Hacer
		Dvector(i) = Bvector(i) - Avector(i)
	FinPara
	
	Para i <- 0 Hasta 99 Con Paso 1 Hacer
		Escribir Sin Saltar"En el Vector D: dentro del indice " "[" i "]" " se encuentra ", "[" Dvector(i) "]"
		Escribir " que es la resta de " Bvector(i) " - " Avector(i)
	FinPara
FinSubProceso



