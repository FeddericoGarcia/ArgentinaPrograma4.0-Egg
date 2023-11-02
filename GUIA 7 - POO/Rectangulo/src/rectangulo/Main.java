/*
Crear una clase Rectángulo que modele rectángulos por medio de un atributo privado 
base y un atributo privado altura. La clase incluirá un método para crear el rectángulo 
con los datos del Rectángulo dados por el usuario. También incluirá un método para calcular 
la superficie del rectángulo y un método para calcular el perímetro del rectángulo. Por último, 
tendremos un método que dibujará el rectángulo mediante asteriscos usando la base y la altura. 
Se deberán además definir los métodos getters, setters y constructores correspondientes.
Superficie = base * altura / Perímetro = (base + altura) * 2
 */
package rectangulo;

import java.util.Scanner;

public class Main {
    public static void main(String[] arg){
        
        Scanner leer = new Scanner(System.in);
        Rectangulo rectangulo = new Rectangulo();
        
        System.out.println("Por favor, ingresá las caracteristicas del rectángulo");
        System.out.println("Base: ");
        rectangulo.setBase(leer.nextInt());
        System.out.println("Altura: ");
        rectangulo.setAltura(leer.nextInt());
        
        System.out.println("La superficie del rectangulo es: "+ rectangulo.superficie());
        System.out.println("El perimetro del rectangulo es: "+ rectangulo.perimetrio());
        System.out.println("A continuación se dibuja el rectangulo con Asteriscos ( * )");
        System.out.println("");
        rectangulo.dibujarRectangulo();
        
    }
}
