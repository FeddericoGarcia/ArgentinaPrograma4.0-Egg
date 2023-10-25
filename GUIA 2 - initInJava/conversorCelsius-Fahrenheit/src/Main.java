/*
 Dada una cantidad de grados centígrados 
se debe mostrar su equivalente en grados Fahrenheit. 
La fórmula correspondiente es: F = 32 + (9 * C / 5).
 */
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Conversor de grados Celsius a Fahrenheit");
        System.out.println("Por favor, ingresa el grado C°:");
        int grados = leer.nextInt();
        int fahren = 32 + (9 * grados / 5);
        System.out.println("-----------------");
        System.out.println("La temperatura de " + grados + " C° en Fahrenheit es: " + fahren + " F°");
        System.out.println("-----------------");
    }
    
}
