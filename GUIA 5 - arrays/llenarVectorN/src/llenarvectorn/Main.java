/*
Realizar un algoritmo que llene un vector de tamaño N con valores aleatorios 
y le pida al usuario un número a buscar en el vector. El programa mostrará 
dónde se encuentra el numero y si se encuentra repetido
 */
package llenarvectorn;

import java.util.Scanner;

public class Main {
    
    public static void main(String[] arg){
        Scanner leer = new Scanner(System.in);
        int buscador = 0, cont = 0;
        int vector[] = llenarVector();

        ingresarNumero(vector, cont, buscador);
        
        leer.close();
    }
    
    public static int[] llenarVector(){
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa el tamaño del vector: ");
        int[] newVector = new int[leer.nextInt()];
        
        for (int i = 0; i < newVector.length; i++){
            newVector[i] = (int)(Math.random()*10);
            System.out.print("[ "+ newVector[i] +" ]");
        }
        return newVector;
    }
    
    public static void buscarNumero(int poss, int cont, int buscador){
        if (cont != 0){
            System.out.println("El número se encuentra en la posicion "+ poss);
            if (cont > 1){
                System.out.println("Y aparece "+ cont +" de veces");
            }
        } else {
        System.out.println("El número "+ buscador +" no se encuentra en el vector");
        }
        
    }

    private static void ingresarNumero(int vector[], int cont, int buscador) {
        Scanner leer = new Scanner(System.in);
        System.out.println("");
        System.out.println("Ingresa el número a buscar: ");
        buscador = leer.nextInt();
        int poss = 0;
        
        for (int i = 0; i < vector.length; i++) {
            if (vector[i] == buscador){
                cont++;
                if (cont > 0){
                    if(poss < 1){
                        poss = i;
                    }
                }
            }
        }
        buscarNumero(poss, cont, buscador);
    }
    
}
