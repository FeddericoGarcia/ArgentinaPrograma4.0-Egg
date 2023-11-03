/*
Crea una clase "Rectángulo" que tenga atributos "lado1" y "lado2" y un método 
"calcular_area" que calcule y devuelva el área del rectángulo. Luego crea un 
objeto "rectangulo1" de la clase "Rectángulo" con lados de 4 y 6 y imprime el 
área del rectángulo.
 */

package rectangulo2;

import java.util.Scanner;

public class Main {
    public static void main(String[] arg){
        Scanner leer = new Scanner(System.in);
        Rectangulo2 rectangulo = new Rectangulo2();
        
        System.out.println("CALCULAR EL ÁREA DE UN RECTÁNGULO");
        System.out.println("Ingresa el largo : ");
        rectangulo.lado1 = leer.nextDouble();
        
        System.out.println("Ingresa el ancho : ");
        rectangulo.lado2 = leer.nextDouble();
        
        System.out.println("El área del rectángulo es de "+ rectangulo.calcular_area());
    }
}
