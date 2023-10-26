/*
Realizar un programa que simule el funcionamiento de un dispositivo RS232, 
este tipo de dispositivo lee cadenas enviadas por el usuario. Las cadenas deben 
llegar con un formato fijo: tienen que ser de un máximo de 5 caracteres de largo, 
el primer carácter tiene que ser X y el último tiene que ser una O.

Las secuencias leídas que respeten el formato se consideran correctas, la secuencia 
especial “&&&&&” marca el final de los envíos (llamémosla FDE), y toda secuencia 
distinta de FDE, que no respete el formato se considera incorrecta.

Al finalizar el proceso, se imprime un informe indicando la cantidad de lecturas 
correctas e incorrectas recibidas. Para resolver el ejercicio deberá investigar 
cómo se utilizan las siguientes funciones de Java Substring(), Length(), equals().
 */
package dispositivors232;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        String cadena = "", FDE = "&&&&&";
        int contOk = 0, contNOk = 0;
        System.out.println("Dispositivo RS232");
        
        do{
            
            System.out.println("Ingresa el codigo de emparejamiento: ");
            Scanner leer = new Scanner(System.in);
            cadena = leer.nextLine();
            
            if (cadena.length() == 5 && cadena.substring(0,1).equals("x") && cadena.endsWith("o")){
                    contOk++;
                } else {
                    contNOk++;
                } 
            
        }while (!cadena.equals(FDE));
        
        System.out.println("El informe de lecturas");
        System.out.println("- Correctas: "+ contOk);
        System.out.println("- Incorrectas: "+ (contNOk-1));
    }
    
}
