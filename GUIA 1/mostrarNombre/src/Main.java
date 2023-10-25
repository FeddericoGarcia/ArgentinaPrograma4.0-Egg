/*
 Escribir un programa que pida tu nombre, lo guarde en una variable 
 y lo muestre por pantalla.
 */
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Hola, ¿como te llamas?");
        String name = leer.next();
        System.out.println("¡¡ Espero que te encuentres bien " + name + " !!");
    }
    
}
