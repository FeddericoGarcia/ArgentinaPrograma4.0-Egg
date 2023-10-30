/*
Realice un programa que compruebe si una matriz dada es antisimétrica. Se dice que 
una matriz A es antisimétrica cuando ésta es igual a su propia traspuesta, pero 
cambiada de signo. Es decir, A es antisimétrica si A = -AT. La matriz traspuesta de 
una matriz A se denota por AT y se obtiene cambiando sus filas por columnas (o viceversa).
 */
package matrizantisimetrica;

public class Main {

    public static void main(String[] arg){
        
        int[][] matrizA = new int[3][3], matrizB = new int[3][3];
        boolean matrizAntisim = false;
        System.out.println("============");
        System.out.println("Mostrando Matriz A");
        
        mostrarMatriz(matrizA);
        
        System.out.println("============");
        System.out.println("Mostrando traspuesta de Matriz A ");
        System.out.println("============");
        
        mostrarMatrizTraspuesta(matrizA, matrizB);
        
        System.out.println("============");
        System.out.println("¿Las matrices son antisimetricas?: ");
        
        verificarMatrices(matrizA, matrizB, matrizAntisim);
        
        System.out.println("============");
    }

    private static boolean verificarMatrices(int[][] matrizA, int[][] matrizB, boolean matrizAntisim) {
        if (matrizA == matrizB){
            System.out.println(matrizAntisim);
        } else {
            matrizAntisim = true;
            System.out.println(matrizAntisim);
        }
        return matrizAntisim;
    }

    private static void mostrarMatrizTraspuesta(int[][] matrizA, int[][] matrizB) {
        for (int i = 0; i < matrizA.length; i++) {
            for (int j = 0; j < matrizA.length; j++) {
                matrizB[i][j] = -matrizA[j][i];
                System.out.print("[ "+ matrizB[i][j] +" ]");
            }
            System.out.println("");
        }
    }

    private static void mostrarMatriz(int[][] matrizA) {
        for (int i = 0; i < matrizA.length; i++) {
                for (int j = 0; j < matrizA.length; j++) {
                    matrizA[i][j] = (int)(Math.random()*10);
                    System.out.print("[ "+ matrizA[i][j] +" ]");
                }
                System.out.println("");
            }
    }
    
}
