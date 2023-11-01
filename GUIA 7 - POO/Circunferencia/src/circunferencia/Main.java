/*
Declarar una clase llamada Circunferencia que tenga como atributo privado el radio de tipo real. 
A continuación, se deben crear los siguientes métodos:
Método constructor que inicialice el radio pasado como parámetro.
Métodos get y set para el atributo radio de la clase Circunferencia.
Método para crearCircunferencia(): que le pide el radio y lo guarda  en el atributo del objeto.
Método area(): para calcular el área de la circunferencia (Area=〖π*radio〗^2).
Método perimetro(): para calcular el perímetro (Perimetro=2*π*radio).
 */
package circunferencia;

import java.util.Scanner;

public class Main {
    public static void main(String[] arg){
        Scanner leer = new Scanner(System.in);
        Circunferencia Circunf = new Circunferencia();
        
        System.out.println("Ingresa el tamaño del circulo para calcular su area y perimetro:");
        Circunf.crearCircunferencia(leer.nextDouble());
        
        System.out.println("El radio es de: "+ Circunf.getRadio());
        System.out.println("El area es: "+ Circunf.area());
        System.out.println("El perimetro es: "+ Circunf.perimetro());
    }
}
