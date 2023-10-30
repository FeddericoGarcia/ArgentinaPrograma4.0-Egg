/*
Crea una aplicación que nos pida un número por teclado y con una función se lo pasamos 
por parámetro para que nos indique si es o no un número primo, debe devolver true si es primo, sino false.
Un número primo es aquel que solo puede dividirse entre 1 y sí mismo. 
Por ejemplo: 25 no es primo, ya que 25 es divisible entre 5, sin embargo, 17 si es primo.

 */
package numprimo;

import java.util.Scanner;

public class Main {

    public static void main(String[] arg){
        Scanner leer = new Scanner(System.in);
        int num;
        System.out.println("Ingresá un número: ");
        num = leer.nextInt();
        
        verificar(num);
        
        leer.close();
    }
    
    public static boolean numPrimo(int num){

        boolean primo = true;

        for (int i = 2; i < num; i++){
            if (num % i == 0){
                primo = false;
            }
        }
        return primo;
    }
    
    public static void verificar(int num){
        if (numPrimo(num)){
            System.out.println("El número "+ num +" es primo");
        } else {
            System.out.println("El número "+ num +" NO es primo");
        }
    }
    
}
