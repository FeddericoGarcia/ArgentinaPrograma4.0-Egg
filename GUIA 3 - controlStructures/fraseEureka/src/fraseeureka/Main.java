/*
Crear un programa que pida una frase y si esa frase es igual a “eureka” 
el programa pondrá un mensaje de Correcto, sino mostrará un mensaje de Incorrecto. 
Nota: investigar la función equals() en Java.
 */
package fraseeureka;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        System.out.println("Ingresa una frase: ");
        Scanner leer = new Scanner(System.in);
        String frase = leer.nextLine();
        if (frase.equals("eureka")){
            System.out.println("La frase es CORRECTA");
        } else {
            System.out.println("¡La frase es INCORRECTA!");
        }
    }
    
}
