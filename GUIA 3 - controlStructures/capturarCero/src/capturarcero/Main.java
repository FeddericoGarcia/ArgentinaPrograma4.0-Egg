/*
Escriba un programa que lea 20 números. Si el número leído es igual a cero se 
debe salir del bucle y mostrar el mensaje "Se capturó el numero cero".  
El programa deberá calcular y mostrar el resultado de la suma de los números leídos, 
pero si el número es negativo no debe sumarse. Nota: recordar el uso de la sentencia break.
 */
package capturarcero;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int num1, suma = 0, cont = 0;
        do{
            System.out.println("Ingresa un número: ");
            num1 = leer.nextInt();
            suma += num1;
            cont += 1;
            System.out.println("El número ingresado es el "+ num1 + " , la suma de los números es: "+ suma +" (vas por el intento "+ cont + ")");
            if (cont >= 20){
                break;               
            }                    
            if (num1 < 0){
                suma += suma;
            }
        } while (num1 != 0);
        if (num1 != 0){
            System.out.print("¡No es posible superar los 20 números!");
        } else {
        System.out.print("¡Se capturó el numero CERO!");
    }
        System.out.print(" ");
    }
    
}
