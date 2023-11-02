/*
Juego Ahorcado: Crear una clase Ahorcado (como el juego), la cual deberá contener 
como atributos, un vector con la palabra a buscar, la cantidad de letras encontradas 
y la cantidad jugadas máximas que puede realizar el usuario. Definir los siguientes 
métodos en AhorcadoService:
-Metodo crearJuego(): le pide la palabra al usuario y cantidad de jugadas máxima. 
Con la palabra del usuario, pone la longitud de la palabra, como la longitud del vector.
Después ingresa la palabra en el vector, letra por letra, quedando cada letra de 
la palabra en un índice del vector. Y también, guarda la cantidad de jugadas máximas
y el valor que ingresó el usuario.
-Método longitud(): muestra la longitud de la palabra que se debe encontrar. 
Nota: buscar como se usa el vector.length.
-Método buscar(letra):  este método recibe una letra dada por el usuario y busca 
si la letra ingresada es parte de la palabra o no. También informará si la letra 
estaba o no.
-Método encontradas(letra):  que reciba una letra ingresada por el usuario y
muestre cuantas letras han sido encontradas y cuántas le faltan. Este método 
además deberá devolver true si la letra estaba y false si la letra no estaba, 
ya que, cada vez que se busque una letra que no esté, se le restará uno a 
sus oportunidades.
-Método intentos(): para mostrar cuántas oportunidades le queda al jugador.
-Método juego(): el método juego se encargará de llamar todos los métodos 
previamente mencionados e informará cuando el usuario descubra toda la 
palabra o se quede sin intentos. Este método se llamará en el main.
 */

package juegoahorcado;

import java.util.Scanner;

public class AhorcadoService {
    
    Ahorcado ahorcado = new Ahorcado();
    Scanner leer = new Scanner(System.in);
    
    int encontradas = 0, faltantes = ahorcado.getCantidadJugadas();
    boolean encontrada = false;
    char[] separarFrase;
    
    public void crearJuego(){
        
        System.out.println("# Ingresa la palabra: ");
        String frase = leer.next();
        System.out.println("# Ingresa la cantidad de jugadas: ");
        ahorcado.setCantidadJugadas(leer.nextInt());
        ahorcado.setCantidadLetras(frase.length());
        
        separarFrase = frase.toCharArray();
        ahorcado.setFrase(separarFrase);
        
        System.out.println(ahorcado.toString());
   
    }
    
    public void longitud(){
        
        System.out.println("-Longitud de la palabra: "+ ahorcado.getFrase().length);        
        
    }
    
    public void buscar(char letra, Ahorcado ahorcado){
        
        for (int i = 0; i < ahorcado.getCantidadLetras() ; i++) {
            if (letra == ahorcado.getFrase()[i]){
                System.out.println("-La letra pertenece a la frase ");
                break;
            } else {
                System.out.println("-La letra NO pertenece a la frase ");
                break;
            }
        }
        
    }
    
    public void encontradas(char letra, Ahorcado ahorcado){
        
        for (int i = 0; i < ahorcado.getFrase().length; i++) {
            if (letra == ahorcado.getFrase()[i]){
                encontradas++;
                encontrada = true;
                faltantes--;
            } else {
                faltantes=1;
            }
            
        }
        if (encontrada == true){
            System.out.println("-Número de letras (encontradas, faltantes): "+
                    encontradas +","+ faltantes);
        } else {
            System.out.println("-Número de letras (encontradas, faltantes): "+
                    encontradas +","+ faltantes--);
        }

    }
        
    public void intentos(){
        System.out.println("-Te quedan "+ faltantes-- + " intentos");
    }    
    
    public void juego(){
        char letra;
        crearJuego();
        
        do {
            System.out.println("Ingresa una letra: ");
            letra = leer.next().charAt(0);
            buscar(letra, ahorcado);
            longitud();
            encontradas(letra, ahorcado);
            intentos();
            
        } while (faltantes != 0 || encontradas != ahorcado.getCantidadLetras());
        
        System.out.println("- Game Over -");
    }

}
