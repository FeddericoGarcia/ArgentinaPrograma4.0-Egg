/*
Crea una aplicación que le pida dos números al usuario y este pueda elegir entre 
sumar, restar, multiplicar y dividir. La aplicación debe tener una función para cada 
operación matemática y deben devolver sus resultados para imprimirlos en el main. 
 */
package calculadorabasica;

import java.util.Scanner;

public class Main {

    public static void main(String[] arg){
        
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
                    System.out.println("La SUMA de los números "+ num1 +" y "+ num2 +" es: "+ (suma(num1, num2)));
                    cont++;
                    break;
                case 2:
                    System.out.println("La RESTA de los números "+ num1 +" y "+ num2 +" es: "+ (resta(num1, num2)));
                    cont++;
                    break;
                case 3:
                    System.out.println("La MULTIPLICACIÓN de los números "+ num1 +" y "+ num2 +" es: "+ (multiplicacion(num1, num2)));
                    cont++;
                    break;
                case 4:
                    System.out.println("La DIVISION de los números "+ num1 +" y "+ num2 +" es: "+ (division(num1, num2)));
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
    public static int suma(int num1, int num2){
        return num1 + num2;
    }
    public static int resta(int num1, int num2){
        return num1 - num2;
    }
    public static int multiplicacion(int num1, int num2){
        return num1 * num2;
    }
    public static int division(int num1, int num2){
        return num1 / num2;
    }
    
}
