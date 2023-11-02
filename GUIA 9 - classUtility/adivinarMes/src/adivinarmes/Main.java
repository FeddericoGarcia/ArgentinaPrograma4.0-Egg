/*
Crea una clase en Java donde declares una variable de tipo array de Strings que 
contenga los doce meses del año, en minúsculas. A continuación, declara una 
variable mesSecreto de tipo String, y hazla igual a un elemento del array 
(por ejemplo, mesSecreto = mes[9]. El programa debe pedir al usuario que adivine 
el mes secreto. Si el usuario acierta mostrar un mensaje, y si no lo hace, 
pedir que vuelva a intentar adivinar el mes secreto.  
Un ejemplo de ejecución del programa podría ser este:
Adivine el mes secreto. Introduzca el nombre del mes en minúsculas: febrero
No ha acertado. Intente adivinarlo introduciendo otro mes: agosto
¡Ha acertado!
 */

package adivinarmes;

import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        String meses[] = {"enero", "febrero", "marzo", "abril", "mayo", "junio",
            "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"};
        
        int num2 = (int) Math.floor(Math.random()*10);
        
        String mesSecreto = meses[num2];
        
        System.out.println("--- Adivina el mes secreto ---");
        System.out.println("Introduzca el nombre del mes: ");
        System.out.println("pista ("+ num2 + ")");
        String mesInput = leer.nextLine().toLowerCase();
         
        do{
            if (!mesInput.equals(mesSecreto)){
                System.out.println("No ha acertado. Intente nuevamente: ");
                mesInput = leer.nextLine().toLowerCase();
            }
        } while (!mesInput.equals(mesSecreto));
        
        System.out.println("¡Ha acertado!");
        
    }
    
    
}
