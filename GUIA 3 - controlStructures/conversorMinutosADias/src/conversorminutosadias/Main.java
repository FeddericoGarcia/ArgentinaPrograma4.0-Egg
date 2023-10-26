/*
Dado un tiempo en minutos, calcular su equivalente en días y horas. Por ejemplo, 
si el usuario ingresa 1600 minutos, el sistema debe calcular su equivalente: 1 día, 2 horas.
 */
package conversorminutosadias;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("CONVERSOR MINUTOS A DIAS Y HORAS");
        System.out.println("Ingresá los minutos a calcular");
        int minutos = leer.nextInt(), dia, horas, segundos;
        
        segundos = 60 * 24;
        dia = minutos / segundos;
        horas = (minutos % segundos) / 60;
        
        System.out.println("Los "+ minutos +" minutos son "+ dia +" dias y "+ horas +" horas");
        leer.close();
    }
    
}
