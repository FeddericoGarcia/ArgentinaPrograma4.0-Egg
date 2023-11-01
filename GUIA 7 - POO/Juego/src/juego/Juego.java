/*
Crea una clase "Juego" que tenga un método "iniciar_juego" que permita a dos jugadores 
jugar un juego de adivinanza de números. 
El primer jugador elige un número y el segundo jugador intenta adivinarlo. 
El segundo jugador tiene un número limitado de intentos y recibe una pista de "más alto" o "más bajo" 
después de cada intento. 
El juego termina cuando el segundo jugador adivina el número o se queda sin intentos. 
Registra el número de intentos necesarios para adivinar el número y el número de veces que cada jugador ha ganado.
 */
package juego;
import java.util.Scanner;

public class Juego {
    int player1, player2, intentos = 1;

    public Juego() {
    }
    
    public void iniciar_juego(){
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresá el número secreto: ");
        player1 = leer.nextInt();
        
        do{
            System.out.println("Ingresa el número a adivinar"); 
            player2 = leer.nextInt();
            
            if (player1 == player2){
                System.out.println("-------------------");
                System.out.println("¡¡¡ ADIVINASTE !!!");
                intentos = 4;
                
            } else {
                System.out.println("XX INCORRECTO XX");
                System.out.println("Vas "+ intentos++ + " intentos de 3");
                
                if (player2 > player1){
                    System.out.println("* Pista: Es número más BAJO *");

                } else {
                    System.out.println("* Pista: Es número más ALTO *");
                }
            }
            
            System.out.println("-------------------");
            
        } while(intentos != 4);
        
        System.out.println("El número es "+ player1);
        System.out.println("### GAME OVER ###");
        
        
    }
    

}
