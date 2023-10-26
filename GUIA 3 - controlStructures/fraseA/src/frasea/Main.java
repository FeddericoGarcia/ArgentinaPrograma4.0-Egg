/*
Escriba un programa que pida una frase o palabra y valide si la primera letra 
de esa frase es una ‘A’. Si la primera letra es una ‘A’, se deberá de imprimir
un mensaje por pantalla que diga “CORRECTO”, en caso contrario, se deberá 
imprimir “INCORRECTO”. Nota: investigar la función Substring y equals() 
de Java.
 */
package frasea;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        System.out.println("Ingresá una frase: ");
        Scanner leer = new Scanner(System.in);
        String frase = leer.nextLine(), fraseLen = frase.substring(0,1);
        if (fraseLen.equals("a")){
            System.out.println("La frase '"+ frase +"' tiene 'A' en su inicial, es CORRECTO!");
        } else {
            System.out.println("La frase '"+ frase +"' NO tiene 'A' en su inicial, es INCORRECTA!");
        }
    }
    
}
