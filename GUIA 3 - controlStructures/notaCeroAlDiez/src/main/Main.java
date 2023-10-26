/*
 Escriba un programa que valide si una nota esta entre 0 y 10, 
 sino está entre 0 y 10 la nota se pedirá de nuevo hasta que la nota sea correcta.
 */
package main;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
               Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa la nota de la evaluación: ");
        int nota = leer.nextInt();
        while (nota > 10 || nota < 0){
            System.out.println("Ingresa la nota dentro del rango 0 a 10: ");
            nota = leer.nextInt();
        }
    }
    
}
