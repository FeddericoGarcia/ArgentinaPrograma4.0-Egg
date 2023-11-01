//	El algoritmo principal sólo debe llamar al subPrograma menu()
//	Cada subPrograma puede descomponerse, si hiciera falta, en otros subProgramas a creatividad
//		del programador
//	El menú debe quedar de la siguiente manera:
//		1. Calcular muro de ladrillo / calcularMuro
//		2. Calcular viga de hormigón / calcularViga
//		3. Calcular columnas de hormigón / calcularColumna
//		4. Calcular contrapisos / calcularContrapisos
//		5. Calcular techo / calcularTecho
//		6. Calcular pisos / calcularPisos
//		7. Calcular pintura / calcularPintura
//		8. Calcular iluminación / calcularIluminacion
//		9. Salir


Algoritmo CalculadoraDeMateriales
	
	Escribir "---------------------------------------";
	Escribir "------ CALCULADORA DE MATERIALES ------";
	
	menu()
	
FinAlgoritmo

SubProceso menu()
	
	Definir option como entero
	
	option = 0;
	
	Escribir "---------------------------------------";
	Escribir "----------- MENU DE OPCIONES ----------";
	Escribir "---------------------------------------";
	
	Hacer
		
		Escribir "Ingresa el número de opción: ";
		Escribir "";
		Escribir "1 - Calcular muro de ladrillo";
		Escribir "2 - Calcular viga de hormigón";
		Escribir "3 - Calcular columnas de hormigón";
		Escribir "4 - Calcular contrapisos";
		Escribir "5 - Calcular techo";
		Escribir "6 - Calcular pisos";
		Escribir "7 - Calcular pintura";
		Escribir "8 - Calcular iluminación";
		Escribir "9 - Salir";
		Escribir "";
		Escribir "---------------------------------------";
		
		Leer option;
		
		Segun option hacer
			1:
				calcularMuro();
			2:
				calcularViga();
			3:
				calcularColumna();
			4:
				calcularContrapisos();
			5:
				calcularTecho();
			6:
				calcularPisos();
			7:
				calcularPintura();
			8:
				calcularIluminacion()
			9:
				Escribir "---------------------------------------"
				Escribir "------- ¡GRACIAS POR TU VISITA! -------";
				Escribir "---------------------------------------"
			De Otro Modo:
				Escribir "---------------------------------------"
				Escribir "---------- OPCIÓN INCORRECTA ----------";
				Escribir "---------------------------------------"
		FinSegun 
	Mientras Que option <> 1 y option <> 2 y option <> 3 y option <> 4 y option <> 5 y option <> 6 y option <> 7 y option <> 8 y option <> 9
FinSubProceso

SubProceso calcularSuperficie(base, altura, superficie por Referencia)
	
	superficie = base * altura;	
	
FinSubProceso
SubProceso calcularVolumen(ancho, alto, largo, volumen Por Referencia)
	
	volumen = ancho * alto * largo;
	
FinSubProceso

SubProceso calcularMuro()
//	Nos debe pedir primero si el muro será de 20 o 30 cm de espesor. 
//	Luego el largo y el alto. 
//	A partir de estos datos se debe mostrar al usuario la superficie del muro y la cantidad de materiales que
//	necesitaremos para construirlo.
//	Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 0.115 m3 de arena
//	y 120 ladrillos.
//	Si el muro es de 20cm necesitaremos por metro cuadrado: 10.9 kg de cemento, 0.09 m3 de arena
//	y 90 ladrillos.
	
	Definir cemento, arena, ladrillos, largo, alto, espesor, superficie como real
	
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "Ingresa el ESPESOR del muro: (20 o 30 cm)";
	Leer espesor;
	Escribir "Ingresa el LARGO del muro: ";
	Leer largo;
	Escribir "Ingresa el ALTO del muro: ";
	Leer alto;
	Escribir "";
	
	calcularSuperficie(largo, alto, superficie)
	
	//		Si el muro es de 20cm necesitaremos por metro cuadrado: 10.9 kg de cemento, 0.09 m3 de arena
	//		y 90 ladrillos.
	Si espesor = 20 Entonces
		cemento = superficie * 10.9;
		arena = superficie * 0.09;
		ladrillos = superficie * 90;
	FinSi
	//		Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 0.115 m3 de arena
	//		y 120 ladrillos.
	Si espesor = 30 Entonces
		cemento = superficie * 15.2;
		arena = superficie * 0.115;
		ladrillos = superficie * 120;
	FinSi
	
	Escribir "---------------------------------------"
	Escribir "La superficie del muro es de: " superficie " mts";
	Escribir "Los materiales requeridos para el Muro son: "; 
	Escribir "";
	Escribir "- De Cemento: " cemento " kg";
	Escribir "- De Arena: " arena " m3";
	Escribir "- De Ladrillos: " ladrillos;
	Escribir "";
	
	volverMenu()
	
FinSubProceso

SubProceso calcularViga()
//	Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 9 kg de cemento, 0.02
//	m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
//	Debemos mostrar al usuario la cantidad de materiales necesaria.
	
	Definir largo, cemento, arena, piedra, H4, H8 como real
	
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "Ingresa el largo de la Viga: ";
	Leer largo;
	Escribir "";
	
	cemento = largo * 9;
	arena = largo * 0.02;
	piedra = largo * 0.02;
	H4 = largo * 3;
	H8 = largo * 4;
	
	Escribir "---------------------------------------"
	Escribir "Los materiales requeridos para la Viga son: ";
	Escribir "";
	Escribir "- De Cemento: " cemento " kg";
	Escribir "- De Arena: " arena " m3";
	Escribir "- De Piedra: " piedra " m2";
	Escribir "- De Hierro del 4: " H4 " mts";
	Escribir "- De Hierro del 8: " H8 " mts";	
	Escribir "";
	
	volverMenu()
	
FinSubProceso

SubProceso calcularColumna()
//	Nos debe pedir el largo de la columna. Por metro lineal de columna se necesitarán: 7.5 kg de
//	cemento, 0.016 m3 de arena, 0.016 m2 de piedra, 6 m de hierro del 10 y 3 m de hierro del 4.
//	Debemos mostrar al usuario la cantidad de materiales necesaria.
	
	Definir largo, cemento, arena, piedra, H10, H4 Como Real
	
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "Ingresa el largo de la Columna: ";
	Leer largo;
	Escribir "";
	
	cemento = largo * 7.5;
	arena = largo * 0.016;
	piedra = largo * 0.016;
	H4 = largo * 3;
	H10 = largo * 6;
	
	Escribir "---------------------------------------"
	Escribir "Los materiales requeridos para la Columna son: ";
	Escribir "";
	Escribir "- De Cemento: " cemento " kg";
	Escribir "- De Arena: " arena " m3";
	Escribir "- De Piedra: " piedra " m2";
	Escribir "- De Hierro del 4: " H4 " mts";
	Escribir "- De Hierro del 10: " H10 " mts";	
	Escribir "";
	
	volverMenu()
	
FinSubProceso

SubProceso calcularContrapisos()
//	Nos debe pedir espesor, ancho y largo del contrapiso a calcular.
//	Por metro cúbico de contrapiso se necesita: 105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de
//	piedra.
//	Debemos mostrar al usuario la cantidad de materiales necesaria.
	
	Definir espesor, ancho, largo, cemento, arena, piedra, m3, superficie como real
	
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "Ingresa el ESPESOR del contrapiso: ";
	Leer espesor;
	Escribir "Ingresa el ANCHO del contrapiso: ";
	Leer ancho;
	Escribir "Ingresa el LARGO del contrapiso: ";
	Leer largo
	Escribir "";
	
	CalcularVolumen(ancho, espesor, largo, superficie)
	cemento = superficie * 105;
	arena = superficie * 0.45;
	piedra = superficie * 0.9;
	
	Escribir "---------------------------------------"
	Escribir "Los materiales requeridos para el Contrapiso son: ";
	Escribir "";
	Escribir "- De Cemento: " cemento " kg";
	Escribir "- De Arena: " arena " m3";
	Escribir "- De Piedra: " piedra " m3";
	Escribir "";
	
	volverMenu()
	
FinSubProceso

SubProceso calcularTecho()
	
//	Nos debe pedir espesor, ancho y largo del techo a calcular.
//	Por metro cuadrado de techo se necesita: 33 kg de cemento, 0.072 m3 de arena, 0.072 m3 de
//	piedra, 7 m de hierro del 8 y 4 m de hierro del 6
//	Debemos mostrar al usuario la cantidad de materiales necesaria.
	
	Definir espesor, largo, ancho, m3, cemento, arena, piedra, H8, H6 Como Real
	
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "Ingresa el ESPESOR del techo: ";
	Leer espesor;
	Escribir "Ingresa el ANCHO del techo: ";
	Leer ancho;
	Escribir "Ingresa el LARGO del techo: ";
	Leer largo;
	Escribir "";
	
	calcularVolumen(ancho, espesor, largo, m3)
	cemento = m3 * 33;
	arena = m3 * 0.072;
	piedra = m3 * 0.072;
	H8 = m3 * 7;
	H6 = m3 * 4;
	
	Escribir "---------------------------------------";
	Escribir "Se necesitan los siguientes materiales: ";
	Escribir "";
	Escribir "- De Cemento: ", cemento " Kg."
	Escribir "- De Arena: ", arena " x m3";
	Escribir "- De Piedra: ", piedra " x m3";
	Escribir "- De Hierro 6: ", H6 " Mts";
	Escribir "- De Hieroo 8: ", H8 " Mts";
	Escribir "";
	
	volverMenu()
	
FinSubProceso

SubProceso calcularPisos()
//	Nos debe pedir ancho y largo del paño de piso a colocar. 
//	Teniendo esos datos se debe calcular la superficie y añadirle un 10% extra por recortes
//	Mostrar el resultado en m2
	
	Definir ancho, largo, superficie como real
	
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "Ingresa el ANCHO del piso a cubrir: ";
	Leer ancho;
	Escribir "Ingresa el LARGO del piso a cubrir: ";
	Leer largo;
	Escribir "";
	
	calcularSuperficie(ancho, largo, superficie)
	
	// instancio la variable superficie con el resultado de su proceso y sumo 
	// a ese mismo resultado el %10
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "La superficie a cubrir del piso es de: ", superficie + (superficie * 0.1) " m2";
	Escribir "";
	
	volverMenu()
	
FinSubProceso

SubProceso calcularPintura()
//	Nos debe pedir la superficie del muro y mostrar cuánta pintura necesitamos teniendo en cuenta
//	que rinde 6 m2 por litro de pintura.
	
	Definir pintura, alto, ancho, m2 como real
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "Ingresa el ALTO de la superficie del muro";
	Leer alto;
	Escribir "Ingresa el ANCHO de la superficie del muro";
	Leer ancho;
	Escribir "";
	
	m2 = alto * ancho;
	pintura = m2 / 6;
	
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "La pintura necesaria es de " pintura " litros";
	Escribir "";
	
	volverMenu()
	
FinSubProceso

SubProceso calcularIluminacion()
//	Nos debe pedir la superficie de la habitación. La iluminación la calculamos de la siguiente forma:
//	superficie * 0.20. Eso nos da la cantidad mínima de superficie de iluminación natural (ventanas y
//	puertas de vidrio). Mostrar resultado
	
	Definir superficie, iluminacion, alto, ancho Como Real
	
	Escribir "---------------------------------------";
	Escribir "";
	escribir "Ingresa el ALTO de la superficie de la habitación";
	leer alto;
	escribir "Ingresa el ANCHO de la superficie de la habitación";
	leer ancho;
	Escribir "";
	
	iluminacion = (alto * ancho) * 0.20;
	
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "La cantidad mínima a cubrir de superficie de ", (alto * ancho) " es: ", iluminacion " m2";
	Escribir "";
	
	volverMenu()
	
FinSubProceso

SubProceso volverMenu()
//	Añado procedimiento extra para consultar si desea volver al menu principal cuando se finaliza
//	algun subproceso
	
	Definir return Como caracter
	
	Escribir "---------------------------------------";
	Escribir "";
	Escribir "¿Desea volver al menu principal?: (SI / NO)";
	Leer return;
	Escribir "";
	return = Minusculas(return)
	
	Segun return Hacer
		"si": 
			menu()
		"no":
			Escribir "---------------------------------------"
			Escribir "------- ¡GRACIAS POR TU VISITA! -------";
			Escribir "---------------------------------------"
		De Otro Modo:		
			Escribir "---------------------------------------"
			Escribir "---------- OPCIÓN INCORRECTA ----------"
			volverMenu()
	FinSegun

FinSubProceso

