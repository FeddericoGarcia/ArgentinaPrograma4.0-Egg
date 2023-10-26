/*
 Implementar un programa que le pida dos números enteros al usuario 
 y determine si ambos o alguno de ellos es mayor a 25.
*/
package numenteros;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int num1, num2;
        System.out.println("Ingresa el primer número: ");
        num1 = leer.nextInt();
        System.out.println("Ingresa el segundo número: ");
        num2 = leer.nextInt();
        
        if (num1 >= 25 && num2 >= 25){
            System.out.println("Ambos números son mayores/igual a 25");
        } else if (num1 >= 25){
            System.out.println("El número "+ num1 +" es mayor!");
        } else if (num2 >= 25){
            System.out.println("El número "+ num2 +" es mayor!");
        } else {
            System.out.println("Los números "+ num1 + " y "+ num2 +" son menores a 25");
        }
    }
    
}
