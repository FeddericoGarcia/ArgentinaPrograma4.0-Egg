/*
Escriba un programa en el cual se ingrese un valor limite positivo, y a 
continuacion solicite numeros al usuario hasta que la suma de los numeros 
introducidos supere el limite inicial.
 */
package buscarvalorlimitepositivo;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa un número limite: ");
        int numLimite, i, num, suma = 0;
        numLimite = leer.nextInt();
        do{
            System.out.println("Ingresa un número: ");
            num = leer.nextInt();
            suma += num;
            System.out.println("La suma de los números es "+ suma);
        } while (numLimite >= suma);
        System.out.println("¡Estas fuera del bucle!");
    }
    
}
