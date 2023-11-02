/*
Crea una clase "Cuenta" que tenga atributos como "saldo" y "titular". 
Luego, crea un método "retirar_dinero" que permita retirar una cantidad de dinero 
del saldo de la cuenta. Asegúrate de que el saldo nunca sea negativo después de 
realizar una transacción de retiro.
 */
package cuenta;
import java.util.Scanner;

public class Cuenta {
    public int saldo;
    public String titular;
    Scanner leer = new Scanner(System.in);
    
    public Cuenta(){ 
    }

    public void setSaldo(int saldo) {
        this.saldo = saldo;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }
    
    
    public void retirar_dinero(){
        
        int retiro = leer.nextInt();
        
        if (retiro > saldo){
            System.out.println("FONDOS INSUFICIENTES");
            System.out.println("Tu saldo de la cuenta "+ titular + " es de $"+ saldo);
        } else {
            System.out.println("Se retiró el monto de $"+ retiro + " de la cuenta "+ titular);
            System.out.println("Te quedan $"+ (saldo-retiro));
        }
        
    }
    
}
