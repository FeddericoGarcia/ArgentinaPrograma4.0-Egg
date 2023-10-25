/*
Escribir un programa que lea un número entero por teclado y muestre por pantalla 
el doble, el triple y la raíz cuadrada de ese número. 
Nota: investigar la función Math.sqrt().
 */
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int doble, triple, num;
        double raiz;
        System.out.println("Por favor, ingresa un número:");
        num = leer.nextInt();
        System.out.println("El número "+ num +" es conformado de la siguiente manera:");
        System.out.println("Su doble es: "+ num*2);
        System.out.println("Su tiple es: "+ num*3);
        System.out.println("Y su raiz cuadrada es: "+ Math.sqrt(num));
    }
    
}
