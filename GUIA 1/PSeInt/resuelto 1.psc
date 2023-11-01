Algoritmo sin_titulo
	definir sueldo2, comision Como Real
    Definir vendedor, ventas,sueldo1, dtra, precio Como Entero
    Definir nombre,producto Como Cadena
    Escribir Sin Saltar"ingrese la cantidad de vendedores: "
    leer vendedor
    Para vendedor<- 1 Hasta vendedor Con Paso 1 Hacer
        escribir Sin Saltar"ingrese el nombre del vendedor: "
        leer nombre
        escribir "ingrese el sueldo basico: "
        leer sueldo1
        escribir "ingrese el numero de ventas: "
        leer ventas
        Escribir "ingrese la cantidad de dias de la semana que trabajo: "
        leer dtra
        sueldo2 = (sueldo1) + (sueldo1* 0.1) + ventas
        comision = dtra + (ventas * 0.1) 
        Para ventas<-2 Hasta ventas Con Paso 1 Hacer
            Escribir Sin Saltar "ingrese el producto: "
            leer producto
            Escribir Sin Saltar "ingrese el precio: "
            leer precio
        Fin Para
        mostrar "la cantidad de ventas totales es: ", ventas
        mostrar "la cantidad de comisiones es: ", comision
        mostrar "la cantidad de dias trabajados es: ", dtra
        mostrar "el sueldo total es: ", sueldo2
    Fin Para
FinAlgoritmo
