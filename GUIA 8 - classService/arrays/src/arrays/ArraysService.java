/*
Crear en el Main dos arreglos. El arreglo A de 50 números reales y el arreglo B de 20 
números reales. Crear la clase ArregloService, en el paquete servicio, con los siguientes métodos:
-Método inicializarA recibe un arreglo por parámetro y lo inicializa con números aleatorios.
-Método mostrar recibe un arreglo por parámetro y lo muestra por pantalla.
-Método ordenar recibe un arreglo por parámetro y lo ordena de mayor a menor.
-Método inicializarB copia los primeros 10 números del arreglo A en el arreglo B. 
Luego llenar las últimas 10 posiciones del arreglo B con 0.5.
En el Main nuevamente: inicializar A, mostrar A, ordenar A, inicializar B, mostrar A y B
 */

package arrays;

import java.util.Arrays;

public class ArraysService {

    public void inicializarA(double[] A){
        System.out.println("Array A: ");
        for (int i = 0; i < A.length; i++) {
            A[i] = Math.floor(Math.random()*100);
        }
    }
    
    public void inicializarB(double[] A, double[] B){
       
        for (int i = 0; i < 10; i++) {
            Arrays.fill(B, i, i+1, A[i]);
        }
        
        for (int i = 9; i < B.length; i++) {
            Arrays.fill(B, i, i+1, 0.5);
        }
        
        mostrarA(A,B);
        
        mostrarB(B);

    }
    
    public void mostrar(double[] A){
        
        for (int i = 0; i < 49; i++) {
            System.out.println("["+A[i]+"]");
        }
        
        System.out.println("");
    }
    
    public void ordenar(double[] A){
        Arrays.sort(A);
    }

    private void mostrarA(double[] A, double[] B) {
        System.out.println("Mostrar array A: ");
        
        for (int i = 0; i < B.length; i++) {
            System.out.println("["+ A[i]+ "]");
        }
        System.out.println("");
    }

    private void mostrarB(double[] B) {
        System.out.println("Mostrar array B: ");
        
        for (int i = 0; i < B.length; i++) {
            System.out.println("["+ B[i]+ "]");
        }
        System.out.println("");
    }
    
}
