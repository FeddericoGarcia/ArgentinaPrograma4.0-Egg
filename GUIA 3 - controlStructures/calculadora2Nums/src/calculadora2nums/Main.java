/*
Realizar un programa que pida dos números enteros positivos por teclado y 
muestre por pantalla el siguiente menú:El usuario deberá elegir una opción y 
el programa deberá mostrar el resultado por pantalla y luego volver al menú. 
El programa deberá ejecutarse hasta que se elija la opción 5. Tener en cuenta que, 
si el usuario selecciona la opción 5, en vez de salir del programa directamente, 
se debe mostrar el siguiente mensaje de confirmación: 
¿Está seguro que desea salir del programa (S/N)? Si el usuario selecciona el carácter ‘S’ 
se sale del programa, caso contrario se vuelve a mostrar el menú

MENU
1- SUMAR
2- RESTAR
3- MULTIPLICAR
4- DIVIDIR
5- SALIR
ELIJA OPCION:

 */
package calculadora2nums;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int num1=0, num2=0, opcion, cont = 0;
        System.out.println("*** Bienvenido a la CALCULADORA ***");
        
        do {
            System.out.println("************ MENU ************");
            System.out.println("1- SUMAR");
            System.out.println("2- RESTAR");
            System.out.println("3- MULTIPLICAR");
            System.out.println("4- DIVIDIR");
            System.out.println("5- SALIR");
            System.out.println("ELIJA UNA OPCIÓN:");
            opcion = leer.nextInt();
            
            if (opcion < 5){
            System.out.println("Ingresa el primer número");
            num1 = leer.nextInt();
            System.out.println("Ingresa el segundo número");
            num2 = leer.nextInt();
            System.out.println("****************************");
            }
            
            switch (opcion){
                case 1:
                    System.out.println("La SUMA de los números "+ num1 +" y "+ num2 +" es: "+ (num1+num2));
                    cont++;
                    break;
                case 2:
                    System.out.println("La RESTA de los números "+ num1 +" y "+ num2 +" es: "+ (num1-num2));
                    cont++;
                    break;
                case 3:
                    System.out.println("La MULTIPLICACIÓN de los números "+ num1 +" y "+ num2 +" es: "+ (num1*num2));
                    cont++;
                    break;
                case 4:
                    System.out.println("La DIVISION de los números "+ num1 +" y "+ num2 +" es: "+ (num1/num2));
                    cont++;
                    break;
            }
            
            if (opcion == 5){
                System.out.println("¿Está seguro que desea salir del programa (s/n)?");
                String opcionOut = leer.next();
                if (opcionOut.equals("n")){
                    cont = 2;
                } else if (opcionOut.equals("s")){
                    cont = 0;
                }
            } else if (opcion > 5){
                System.out.println("Número invalido");
            }
            
        } while (cont >= 1);
            System.out.println("¡Adios!");
    }
    
}
