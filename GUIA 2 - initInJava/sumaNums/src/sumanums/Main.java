/*
 Escribir un programa que pida dos números enteros por teclado y calcule la suma
 de los dos. El programa deberá después mostrar el resultado de la suma
 */
package sumanums;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa el primer número:");
        int num1 = leer.nextInt();
        System.out.println("Ingresa el segundo número:");
        int num2 = leer.nextInt();
        //int resultado = num1 + num2;
        System.out.println("El resultado de los números ingresdo es: " + (num1 + num2));
    }
    
}
