/*
 Realizar un programa que solo permita introducir solo frases o palabras de 8 de largo. 
 Si el usuario ingresa una frase o palabra de 8 de largo se deberá de imprimir un mensaje 
 por pantalla que diga “CORRECTO”, en caso contrario, se deberá imprimir “INCORRECTO”. 
 Nota: investigar la función Lenght() en Java.
 */
package fraselong8;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        System.out.println("Ingresa una frase de hasta 8 caracteres: ");
        Scanner leer = new Scanner(System.in);
        String frase = leer.nextLine();
        int fraseLength;
        fraseLength = frase.length();
        if (fraseLength <= 8){
            System.out.println("La palabra tiene "+ fraseLength +" caracteres de largo, es ¡CORRECTO!");
        } else {
            System.out.println("xx INCORRECTO xx. La frase tiene "+ fraseLength +" caracteres");
        }
    }
    
}
