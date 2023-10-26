/*
 Escribir un programa que pida una frase y la muestre toda en mayúsculas 
 y después toda en minúsculas. 
 Nota: investigar la función toUpperCase() y toLowerCase() en Java.
 * 
 */
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa una frase para ser modificada:");
        String stg = leer.nextLine();
        System.out.println("Tu frase en MAYUSCULA es: " + stg.toUpperCase());
        System.out.println("Tu frase en minusculas es: " + stg.toLowerCase());
    }
    
}
