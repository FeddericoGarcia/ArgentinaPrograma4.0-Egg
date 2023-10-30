/*
Realizar un algoritmo que llene un vector con los 100 primeros números enteros y
los muestre por pantalla en orden descendente.
 */
package llenarvector;

public class Main {

    public static void main(String[] arg){
  
        int[] vector = new int[100];
        
        llenarVector(vector);
        
        mostrarVectorDescendente(vector);
        
    }
    
    public static void llenarVector(int vector[]){
        for (int i = 0; i < vector.length; i++){
            vector[i] += i; 
        }
    }
    
    public static void mostrarVectorDescendente(int vector[]){
        for (int i = vector.length-1; i > -1; i--){
            System.out.println("[ "+ vector[i] +" ]");
        }
    }
    
}
