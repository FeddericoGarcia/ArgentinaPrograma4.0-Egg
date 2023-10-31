/*
Recorrer un vector de N enteros contabilizando cuántos números 
son de 1 dígito, cuántos de 2 dígitos, etcétera (hasta 5 dígitos).
 */
package contabilizardigitosnums;

import java.util.Scanner;

public class Main {

    public static void main(String[] arg){
        
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresá el tamaño del vector: ");
        int[] vector = new int[leer.nextInt()];
        
        llenarVector(vector);
        contarYMostrar(vector);
        
    }
    
    public static void llenarVector(int[] vector){
        for (int i = 0; i < vector.length; i++) {
            vector[i] = (int)(Math.random()*100000);
            System.out.println(" [ "+ vector[i] +" ] ");
        }
    }
    
    public static void contarYMostrar(int[] vector){
        int digito1 = 0, digito2 = 0, digito3 = 0, digito4 = 0, digito5 = 0;
        
        for (int i = 0; i < vector.length; i++) {
            if (vector[i] > 0 && vector[i] < 10){
                digito1++;
            }
            if (vector[i] > 9 && vector[i] < 100){
                digito2++;
            }
            if (vector[i] > 99 && vector[i] < 1000) {
                digito3++;
            }
            if (vector[i] > 999 && vector[i] < 10000) {
                digito4++;
            } 
            if (vector[i] > 9999 && vector[i] < 100000) {
                digito5++;
            }
        }
        System.out.println("Cantidad de números con 1 digito: "+ digito1);
        System.out.println("Cantidad de números con 2 digito: "+ digito2);
        System.out.println("Cantidad de números con 3 digito: "+ digito3);
        System.out.println("Cantidad de números con 4 digito: "+ digito4);
        System.out.println("Cantidad de números con 5 digito: "+ digito5);
    }
    
}
