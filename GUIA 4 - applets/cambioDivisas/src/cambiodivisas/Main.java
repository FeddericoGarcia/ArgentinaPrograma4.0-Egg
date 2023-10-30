/*
Crea una aplicación que a través de una función nos convierta una cantidad de euros 
introducida por teclado a otra moneda, estas pueden ser a dólares, yenes o libras. 

La función tendrá como parámetros, la cantidad de euros y la moneda a convertir que 
será una cadena, este no devolverá ningún valor y mostrará un mensaje indicando el cambio (void).

El cambio de divisas es:
* 0.86 libras es un 1 €
* 1.28611 $ es un 1 €
* 129.852 yenes es un 1 €

 */
package cambiodivisas;

import java.util.Scanner;

public class Main {

    public static void main(String[] arg){
        Scanner leer = new Scanner(System.in);
        float money;
        String type;
        System.out.println("CONVERTIDOR DE DIVISAS");
        System.out.println("Ingresá el tipo de cambio (1- dolar / 2- yenes / 3- libras)");
        type = leer.nextLine();
        System.out.println("Ingresá el importe:");
        money = leer.nextFloat();
        
        cambioDivisas(money, type);
    }
    public static void cambioDivisas(float money, String type){
        
        switch (type){
            case "dolar" : dolar(money);break;
            case "1" : dolar(money);break;
            case "yenes": yenes(money);break;
            case "2": yenes(money);break;
            case "libras": libras(money);break;
            case "3": libras(money);break;
            default:
                System.out.println("El dato ingresado es incorrecto");
        }
        
    }
    
    public static void dolar(float money){
        System.out.println("El cambio de Euro ("+ money +") a Dolar es de: U$D "+ (money * 1.28611));
    }
    
    public static void yenes(float money){
        System.out.println("El cambio de Euro ("+ money +") a Yenes es de: ¥ "+ (money * 129.852));
    }
    public static void libras(float money){
        System.out.println("El cambio de Euro ("+ money +") a Libras es de: ₤ "+ (money * 0.86));
    }
}
