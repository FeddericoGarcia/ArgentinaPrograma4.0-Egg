/*
Realizar un programa que rellene un matriz de 4 x 4 de valores aleatorios y muestre 
la traspuesta de la matriz. La matriz traspuesta de una matriz A se denota por B y 
se obtiene cambiando sus filas por columnas (o viceversa).
 */
package matriztraspuesta;

public class Main {

    public static void main(String[] arg){
        
        int[][] matrizA = new int[4][4];
        
        System.out.println("Mostrando Matriz A de 4x4");
        
        mostrarMatriz(matrizA);
        
        System.out.println("================");
        System.out.println("Traspuesta de Matriz A ");
        System.out.println("================");
        
        mostrarTranspuesta(matrizA);
        
    }
    
    public static void mostrarMatriz(int[][] matrizA){
        for (int i = 0; i < matrizA.length; i++){
            for (int j = 0; j < matrizA.length; j++) {
                matrizA[i][j] = (int)(Math.random()*10);
                System.out.print("[ "+ matrizA[i][j] +" ]");
            }
            System.out.println(" ");
        }
    }
    
    public static void mostrarTranspuesta(int[][] matrizA){
        for (int i = 0; i < matrizA.length; i++){
            for (int j = 0; j < matrizA.length; j++) {
                System.out.print("[ "+ matrizA[j][i] +" ]");
            }
            System.out.println(" ");
        }
    }
    
}
