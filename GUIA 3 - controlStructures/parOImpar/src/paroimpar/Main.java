/*
 Crear un programa que dado un número determine si es par o impar.
 */
package paroimpar;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int num;
        System.out.println("Ingresa un numero: ");
        num = leer.nextInt();
        if (num % 2 == 0){
            System.out.println("El número es PAR");
        } else {
            System.out.println("El número es IMPAR");
        }
    }
    
}
