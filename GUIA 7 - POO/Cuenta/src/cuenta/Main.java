/*
Crea una clase "Cuenta" que tenga atributos como "saldo" y "titular". 
Luego, crea un método "retirar_dinero" que permita retirar una cantidad de dinero 
del saldo de la cuenta. Asegúrate de que el saldo nunca sea negativo después de 
realizar una transacción de retiro.
 */
package cuenta;
import java.util.Scanner;

public class Main {
    public static void main(String[] arg){
        Scanner leer = new Scanner(System.in);
        Cuenta cuenta = new Cuenta();
        
        System.out.println("Ingresa el nombre del titular: ");
        cuenta.setTitular(leer.nextLine());
        
        System.out.println("Ingresa el saldo de la cuenta: ");
        cuenta.setSaldo(leer.nextInt());
        
        System.out.println("¿Cuanto monto deseas retirar?");
        cuenta.retirar_dinero();
        
    }
    
}
