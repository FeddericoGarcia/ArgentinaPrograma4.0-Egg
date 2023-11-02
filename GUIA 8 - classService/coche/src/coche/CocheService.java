/*
Crea una clase "Coche" con las propiedades "marca", "modelo" y "precio".
Crea clase de servicio con los métodos "ingresarCoche" y "mostrarCoche".
 */

package coche;

import java.util.Scanner;

public class CocheService {
    
    Coche coche = new Coche();
    Scanner leer = new Scanner(System.in);
    
    public void ingresarCoche(){
        
        System.out.println("Ingresa la marca del vehículo: ");
        coche.setMarca(leer.nextLine());
        
        System.out.println("Ingresa el modelo: ");
        coche.setModelo(leer.nextLine());
        
        System.out.println("Y por ultimo su precio: ");
        coche.setPrecio(leer.nextInt());
    }
    
    public void mostrarCoche(){
        
        System.out.println("Vehículo: "+ coche.getMarca() + " " + coche.getModelo());
        System.out.println("Precio: $"+ coche.getPrecio());
    }
 
}
