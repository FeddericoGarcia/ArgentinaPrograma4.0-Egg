/*
 Realizar un programa que lea 4 números (comprendidos entre 1 y 20)
 e imprima el número ingresado seguido de tantos asteriscos como indique su valor. 
 Por ejemplo:
 5 *****
 3 ***
 11 ***********
 2 **
*/
package leer4nums;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa un número");
        int num = 1;
        for (int i = 0; i < 4; i++) {
            if(num >= 1 && num <= 20){
                num = leer.nextInt();
                System.out.print(num);
                for (int j = 0; j < num; j++){
                    System.out.print(" *");
                }
                System.out.println("");
            }
        }
    }
    
}
