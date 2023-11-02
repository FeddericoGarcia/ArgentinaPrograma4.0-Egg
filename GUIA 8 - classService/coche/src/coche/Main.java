/*
Crea una clase "Coche" con las propiedades "marca", "modelo" y "precio".
Crea clase de servicio con los métodos "ingresarCoche" y "mostrarCoche".
 */

package coche;

public class Main {

    public static void main(String[] args){
        CocheService vehiculo = new CocheService();
        
        System.out.println("BIENVENIDO A LA CONSECIONARIA");
        
        vehiculo.ingresarCoche();
        vehiculo.mostrarCoche();
    }
    
}
