


Algoritmo EJERCICIO_INTEGRADOR_GUIA4
	escribir "BIENVENIDO AL CALCULADOR DE MATERIALES del corralon ´CASAS DE PAPEL´"	
	escribir "====================================================================="
	menu()
FinAlgoritmo

SubProceso menu()
	definir option como caracter
	
	Hacer
		escribir "Por favor, ingrese la opcion deseada:"
		escribir " "
		escribir "OPCION 1 - calcular muro de ladrillo."
		escribir "OPCION 2 - calcular viga de hormigon."
		escribir "OPCION 3 - calcular columnas de hormigon."
		escribir "OPCION 4 - calcular contrapisos."
		escribir "OPCION 5 - calcular techo."
		escribir "OPCION 6 - calcular pisos."
		escribir "OPCION 7 - calcular pintura."
		escribir "OPCION 8 - calcular iluminacion."
		escribir "OPCION 9 - Salir"
		escribir " " 
		
		leer option
		
		segun option Hacer
			"1":
				calcularMuro()
			"2":
				calcularViga()
			"3":
				calcularColumna()
			"4":
				calcularContrapisos()
			"5":
				calcularTecho()
			"6":
				calcularPisos()
			"7":
				calcularPintura()
			"8":
				calcularIluminacion()
			"9":
				escribir "Gracias por usar la calculadora de materiales! SUERTE CON SU PROYECTO!"
			De otro modo 
				
			escribir "====================================================================="		
			escribir "usted ha ingresado una opcion no valida"
			escribir "====================================================================="		
		FinSegun
	Mientras Que option<>"1" Y option<>"2" Y option<>"3" Y option<>"4" Y option<>"5" Y option<>"6" Y option<>"7" Y option<>"8" Y option<>"9"
FinSubProceso

SubProceso calcularSuperficie(base,altura,sup Por Referencia)
	sup=base*altura
FinSubProceso 

SubProceso calcularVolumen(ancho,alto,largo,vol Por Referencia)
	vol=ancho*alto*largo
FinSubProceso
///			subprograma calcularMuro
//			Nos debe pedir primero si el muro será de 20 o 30 cm de espesor. Luego el largo y el alto. A partir
//			de estos datos se debe mostrar al usuario la superficie del muro y la cantidad de materiales que
//			necesitaremos para construirlo.
//			Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 0.115 m3 de arena
//			y 120 ladrillos.
//			Si el muro es de 20cm necesitaremos por metro cuadrado: 10.9 kg de cemento, 0.09 m3 de arena
//				y 90 ladrillos.
	
SubProceso calcularMuro() 
	definir espesor,base,altura,cemento,ladrillos,arena,m2 Como real
	escribir "Por favor, ingrese el largo del muro en metros:"
	leer base
	escribir "Por favor, ingrese la altura del muro en metros:"
	leer altura
	escribir "Por favor, ingrese si el muro tiene 20 o 30 cm de espesor"
	leer espesor	
//	Hacer
		Hacer
			calcularSuperficie(base,altura,m2) 
			
			Si espesor =30 Entonces
				escribir " "
				cemento= m2 * 15.2
				arena= m2 * 0.115
				ladrillos= m2 * 120 
				escribir "La cantidad de CEMENTO necesario sera " cemento " Kg"
				escribir "La cantidad de ARENA necesaria sera " arena " m3"
				escribir "La cantidad de LADRILLOS necesarios seran " ladrillos  
			Sino 
				Si espesor=20 entonces
					
					cemento= m2 * 10.9
					arena= m2 * 0.09
					ladrillos= m2 * 90
					escribir " " 
					escribir "La cantidad de CEMENTO necesario sera " cemento " Kg"
					escribir "La cantidad de ARENA necesaria sera " arena " m3"
					escribir "La cantidad de LADRILLOS necesarios seran " ladrillos 
				FinSi	
			FinSi
		mientras que espesor=20 Y espesor=30
		si espesor<>20 Y espesor<>30 Entonces
			escribir "====================================================================="
				escribir "Usted ha ingresado un espesor erroneo.Por favor, intente nuevamente"
			FinSi
	escribir " "
	escribir "====================================================================="		
	menu()	
FinSubProceso
///				subprograma calcularViga
//			Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 9 kg de cemento, 0.02
//				m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
//				Debemos mostrar al usuario la cantidad de materiales necesaria.
SubProceso calcularViga()
	definir largo,cemento,arena,piedra,hierro8,hierro4 Como real
	
	escribir "Por favor, ingrese el largo de la viga (en Metros)"
	leer largo
	cemento = largo * 9
	arena = largo * 0.02
	piedra = largo * 0.02
	hierro8 = largo * 4
	hierro4 = largo * 3
	escribir "La cantidad de CEMENTO es de " cemento " Kg"
	escribir "La cantidad de ARENA es de " arena " m3"
	escribir "La cantidad de PIEDRA es de " piedra " m2"
	escribir "La cantidad de HIERRO DEL 8 es de " hierro8 " Metros"
	escribir "La cantidad de HIERRO DEL 4 es de  " hierro4 " Metros"
	escribir " "
	escribir "====================================================================="		
	menu()
FinSubProceso
///				subprograma calcularColumna
//			Nos debe pedir el largo de la columna. Por metro lineal de columna se necesitarán: 7.5 kg de
//				cemento, 0.016 m3 de arena, 0.016 m2 de piedra, 6 m de hierro del 10 y 3 m de hierro del 4.
//				Debemos mostrar al usuario la cantidad de materiales necesaria.
SubProceso calcularColumna()
	definir largoColumna,cemento,arena,piedra,hierro10,hierro4 Como Real
	escribir "Por favor, ingrese el largo de la columna (en metros):"
	leer largoColumna
	cemento = largoColumna * 7.5
	arena = largoColumna * 0.016
	piedra = largoColumna * 0.016
	hierro10 = largoColumna * 6
	hierro4 = largoColumna * 3
	escribir "La cantidad de CEMENTO es de " cemento " Kg"
	escribir "La cantidad de ARENA es de " arena " m3"
	escribir "La cantidad de PIEDRA es de " piedra " m3"
	escribir "La cantidad de HIERRO DEL 10 es de " hierro10 " Metros"
	escribir "La cantidad de HIERRO DEL 4 es de " hierro4 " Metros" 
	escribir " "
	escribir "====================================================================="		
	menu()
FinSubProceso
///				subprograma calcularContrapisos
//				Nos debe pedir espesor, ancho y largo del contrapiso a calcular.
//			Por metro cúbico de contrapiso se necesita: 105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de
//				piedra.
//				Debemos mostrar al usuario la cantidad de materiales necesaria.
SubProceso calcularContrapisos()
	definir espesor,ancho,largo,cemento,arena,piedra,m3 Como Real
	escribir "Por favor, ingrese el ancho del contrapiso:"
	leer ancho
	escribir "Por favor, ingrese el espesor del contrapiso:"
	leer espesor
	escribir "Por favor, ingrese el largo del contrapiso:"
	leer largo
	CalcularVolumen(ancho,espesor,largo,m3)
	cemento = m3 * 105
	arena = m3 * 0.45
	piedra = m3 * 0.9
	escribir "La cantidad de CEMENTO necesaria es de: " cemento " Kg"
	escribir "La cantidad necesaria de ARENA es de :" arena " m3"
	escribir "La cantidad de PIEDRA necesaria es de: " piedra " m3"
	escribir " "
	escribir "====================================================================="		
	menu()
FinSubProceso
///				subprograma calcularTecho
//				Nos debe pedir espesor, ancho y largo del techo a calcular.
//			Por metro cubico de techo se necesita: 33 kg de cemento, 0.072 m3 de arena, 0.072 m3 de
//				piedra, 7 m de hierro del 8 y 4 m de hierro del 6
//				Debemos mostrar al usuario la cantidad de materiales necesaria.
SubProceso calcularTecho()
	definir espesor,ancho,largo,metro3,cemento,arena,piedra,hierro8,hierro6 Como Real
	escribir "Por favor, ingrese el espesor del techo:"
	leer espesor
	escribir "Por favor, ingrese el ancho del techo:"
	leer ancho
	escribir "Por favor, ingrese el largo del techo:"
	leer largo
	CalcularVolumen(ancho,espesor,largo,metro3)
	cemento = metro3 * 33
	arena = metro3 * 0.072
	piedra =  metro3 * 0.072
	hierro8 = metro3 * 7
	hierro6 = metro3 * 4
	escribir "La cantidad de CEMENTO necesaria es de: " cemento " Kg"
	escribir "La cantidad de ARENA necesaria es de : " arena " m3"
	escribir "La cantidad de piedra es de :" piedra " m3"
	escribir "La cantidad de HIERRO DEL 8 necesaria es de: " hierro8 " Metros"
	escribir "La cantidad de HIERRO DEL 6 necesaria es de: " hierro6 " Metros"	
	escribir " "
	escribir "====================================================================="		
	menu()
FinSubProceso
///				subprograma calcularPisos
//				Nos debe pedir ancho y largo del piso a colocar. Teniendo esos datos se debe calcular la
//				superficie y añadirle un 10% extra por recortes
//				Mostrar el resultado en m2

SubProceso calcularPisos()
	definir ancho,largo,supm2,superm2 como real
	escribir "Por favor,ingrese el ancho del piso (en Metros): "
	leer ancho
	escribir "Por favor, ingrese el largo del piso (en Metros): "
	leer largo
	
	calcularSuperficie(ancho,largo,supm2)
	superm2=supm2+(supm2*0.1)
	escribir "la SUPERFICIE a comprar es de :" superm2 " m2"	
	escribir " "
	escribir "====================================================================="		
	menu()
FinSubProceso

///				subprograma calcularPintura
//				Nos debe pedir la superficie del muro y mostrar cuánta pintura necesitamos teniendo en cuenta
//				que rinde 6 m2 por litro de pintura.
SubProceso calcularPintura()
	definir superf2,cuanto Como Real
	escribir "Por favor, ingrese la superficie del muro.(la superficie se calcula como alto x ancho en m2)"
	leer superf2
	
	cuanto= superf2/6 
	escribir "La cantidad de PINTURA necesaria es de " cuanto " litros"
	escribir " "
	escribir "====================================================================="		
	menu()
FinSubProceso
///				subprograma calcularIluminacion
//			Nos debe pedir la superficie de la habitación. La iluminación la calculamos de la siguiente forma:
//				superficie * 0.20. Eso nos da la cantidad mínima de superficie de iluminación natural (ventanas y
//				puertas de vidrio). Mostrar resultado
//
SubProceso calcularIluminacion()
	definir superficie, ilum Como Real
	
	escribir "Por favor, ingrese la superficie de la habitacion a iluminar:"
	leer superficie
	
	ilum=superficie*0.2
	
	escribir "La iluminacion necesaria para la superficie indicada es de " ilum " m2"
	escribir " "
	escribir "====================================================================="		
	menu()	
FinSubProceso

	