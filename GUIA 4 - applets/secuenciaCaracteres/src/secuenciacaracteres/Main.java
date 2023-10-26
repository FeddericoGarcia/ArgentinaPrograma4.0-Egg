/*
Escribir un programa que procese una secuencia de caracteres ingresada por teclado y 
terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: 
cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres 
(incluyendo a las vocales acentuadas) se mantienen sin cambios.
a e i o u
@ # $ % *

Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación correspondiente. 
Utilice la estructura “según” para la transformación. 
Por ejemplo, si el usuario ingresa:     Ayer, lunes, salimos a las once y 10.
La salida del programa debería ser:  @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10

 */
package secuenciacaracteres;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        String text;
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa una frase terminada en punto ´.´ :");
        text = leer.nextLine();
        System.out.println(conversor(text));
        
    }
    public static String conversor(String text){
        String newText = "";
        
        for (int i = 0; i < text.length(); i++){
            String letra = text.substring(i, i + 1);
            
            if (text.endsWith(".")){
                switch (letra){
                    case "a":
                        newText += "@";
                        break;
                    case "e":
                        newText += "#";
                        break;
                    case "i":
                        newText += "$";
                        break;
                    case "o":
                        newText += "%";
                        break;
                    case "u":
                        newText += "*";
                        break;
                    default:
                        newText += letra;
                }
            } else {
                System.out.println("Tu frase debe terminar en punto '.'");
                break;
            }
        }   
        return newText;
    }
    
}
