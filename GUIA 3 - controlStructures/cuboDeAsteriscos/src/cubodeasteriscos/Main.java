/*
Dibujar un cuadrado de N elementos por lado utilizando el carácter “*”. 
Por ejemplo, si el cuadrado tiene 4 elementos por lado se deberá dibujar 
lo siguiente:

* * * *
*     *
*     *
* * * *

 */
package cubodeasteriscos;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        System.out.println("Ingresa un número: ");
        Scanner leer = new Scanner(System.in);
        int numAster = leer.nextInt();
        
        for (int i = 0; i < numAster; i++){
            System.out.print("* ");
        }
        System.out.println();
        
        for (int i = 0; i < numAster-2; i++){
            System.out.print("*");
            for (int j = 0; j < numAster-2; j++){
                System.out.print("  ");
            }
            System.out.println(" *");
        }
        
        for (int i = 0; i < numAster; i++){
            System.out.print("* ");
        }
    }
    
}
