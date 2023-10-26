/*
Crea un procedimiento EsMultiplo que reciba los dos números pasados por el usuario, 
validando que el primer número múltiplo del segundo e imprima si el primer número es 
múltiplo del segundo, sino informe que no lo son.
 */
package multiplo;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa dos números: ");
        int num1 = leer.nextInt();
        int num2 = leer.nextInt();

        System.out.println("¿Los números "+ num1 +" y "+ num2 + " son multiplos? "+ (esMultiplo(num1, num2)));
    }
    
    public static boolean esMultiplo(int num1, int num2){
        return num1 % num2 == 0;
        
    }
    
}
