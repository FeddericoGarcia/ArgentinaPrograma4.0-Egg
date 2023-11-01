// Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
// jornal diario de acuerdo con las siguientes reglas:
// a) La tarifa de las horas diurnas es de $ 90
// b) La tarifa de las horas nocturnas es de $ 125
// c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
// un 15% si el turno es nocturno.
// El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día
// de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Además, debe-
// mos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era festivo o
// no, para poder calcular el jornal diario. Utilice una función para realizar el cálculo.

Algoritmo Fabrica1
	
	Definir empleado, diaSemanal, turno, diaFestivo Como Caracter
	Definir horasTrabajadas, jornalDiario Como Entero
	
//	empleado = "";
//	diaSemanal = "";
//	turno = "";
//	diaFestivo = "";
//	horasTrabajadas = 0;
	
	Escribir "Ingresa el nombre del empleado: "
	leer empleado;
	
//	Escribir "¿En que DÍA trabajo?:";
//	Leer diaSemanal;
//	diaSemanal = Minusculas(diaSemanal);
//	Escribir "¿Fue día festivo?: (SI / NO)";
//	Leer diaFestivo;
//	diaFestivo = Minusculas(diaFestivo)
//	Escribir "¿En que TURNO trabajo?: (DIURNO / NOCTURNO)";
//	Leer turno;
//	turno = Minusculas(turno)
//	Escribir "¿Y cúantas horas trabajo?:";
//	Leer horasTrabajadas;
	
	jornalDiario = CalcularFabrica(empleado)
	
//	Escribir "El empleado ", empleado " trabajó el día ", diaSemanal ", el cual ", diaFestivo " fue festivo";
//	Escribir "Realizó el turno ", turno ", con una carga horaria de ", horasTrabajadas;
	Escribir "Se debe abonar una suma de: $" jornalDiario;

FinAlgoritmo

Funcion  return = CalcularFabrica(empleado)
	
	Definir i Como Entero 
	Definir horasTrabajadas Como Real
	Definir diaSemanal, diaFestivo, turno Como Caracter
	
	i = 0;
	horasTrabajadas = 0;
	diaSemanal = "";
	turno = "";
	diaFestivo = "";
	
	Para i = 1 hasta i Hacer
		Escribir "¿En que DÍA trabajo?:";
		Leer diaSemanal;
		diaSemanal = Minusculas(diaSemanal);
		Si diaSemanal = "lunes" o diaSemanal = "martes" o diaSemanal = "miercoles" o diaSemanal = "jueves" o diaSemanal = "viernes" Entonces
			Escribir "¿Fue día festivo?: (SI / NO)";
			Leer diaFestivo;
			diaFestivo = Minusculas(diaFestivo)
			Si diaFestivo = "si" Entonces
				// c) 
				Escribir "¿En que TURNO trabajo?: (DIURNO / NOCTURNO)";
				Leer turno;
				turno = Minusculas(turno)
				Escribir "¿Y cúantas horas trabajo?:";
				Leer horasTrabajadas;
				Si turno = "diurno" Entonces
					horasTrabajadas = (horasTrabajadas * 90) * 0.10;
				SiNo
					Si turno = "nocturno" Entonces
						horasTrabajadas = (horasTrabajadas * 125) * 0.15;
					FinSi
				FinSi
			SiNo
				// a), b) 
				Si diaFestivo = "no" Entonces
					Escribir "¿En que TURNO trabajo?: (DIURNO / NOCTURNO)";
					Leer turno;
					turno = Minusculas(turno)
					Escribir "¿Y cúantas horas trabajo?:";
					Leer horasTrabajadas;
					Si turno = "diurno" Entonces
						horasTrabajadas = horasTrabajadas * 0.10;
					SiNo
						turno = "nocturno"
						horasTrabajadas = horasTrabajadas * 0.10;
					FinSi
				FinSi
			FinSi
		SiNo 
			Escribir "No es día laboral"			
		FinSi
		
	FinPara
	
FinFuncion
	