/*
Programa Nespresso. Desarrolle una clase Cafetera en el paquete Entidades con los atributos 
capacidadMáxima (la cantidad máxima de café que puede contener la cafetera) y cantidadActual 
(la cantidad actual de café que hay en la cafetera). Agregar constructor vacío y con parámetros 
así como setters y getters. Crear clase CafeteraServicio en el paquete Servicios con los siguiente:
Método llenarCafetera(): hace que la cantidad actual sea igual a la capacidad máxima. 
Método servirTaza(int): se pide el tamaño de una taza vacía, el método recibe el tamaño de la taza y 
simula la acción de servir la taza con la capacidad indicada. Si la cantidad actual de café “no alcanza” 
para llenar la taza, se sirve lo que quede. El método le informará al usuario si se llenó o no la taza, 
y de no haberse llenado en cuanto quedó la taza.
Método vaciarCafetera(): pone la cantidad de café actual en cero. 
Método agregarCafe(int): se le pide al usuario una cantidad de café, el método lo recibe y se añade 
a la cafetera la cantidad de café indicada.

 */
package nespresso;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        
        System.out.println("---- COFFEE-BAR ----");
        System.out.println("(Ingresar los datos en cm3)");
        
        System.out.println("Ingrese la capacidad de su cafetera:");
        CafeteraServicio cs = new CafeteraServicio(sc.nextInt());
        
        System.out.println("Ingrese la cantidad actual de cafe que contiene la cafetera:");
        cs.agregarCafe(sc.nextInt());
        
        System.out.println("¿Cual es la capacidad de tu taza?");
        cs.capaTaza = sc.nextInt();
        
        System.out.println("¿Cuanto cafe desea en su taza?");
        cs.servirTaza(sc.nextInt());
        
        System.out.println("--------------------");
        System.out.println("¿Desea vaciar la cafetera? (1 - si / 2 - no)");
        if (sc.nextInt() == 1){
            cs.vaciarCafetera();
        } else {
         System.out.println("Ingrese la cantidad de cafe que le agregará a la cafetera:");
         cs.agregarCafe(sc.nextInt());
        }
        System.out.println("Su cafetera quedo con "+ cs.c.getCantidadActual() +" cm3");
        System.out.println("--------------------");


    }
}
