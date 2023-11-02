/*
Crea una clase "Mascota" con las propiedades "nombre", "edad", "raza" y "tipo" 
(perro, gato, etc.).
Crea un constructor para inicializar los valores de las propiedades y en la clase 
servicio crear un método para agregar la mascota y otro para mostrar por pantalla 
la información de la mascota.
También crea un método "cumplirAnios" que aumente en uno la edad de la mascota
 */

package mascota;

import java.util.Scanner;

public class MascotaService {
    
    Mascota mascota = new Mascota();
    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
    public void crearMascota(){
        System.out.println("¿Como se llama tu mascota?");
        mascota.setNombre(leer.next());
        
        System.out.println("¿Que edad tiene?");
        mascota.setEdad(leer.nextInt());
        
        System.out.println("¿Tiene raza?");
        mascota.setRaza(leer.next());
        
        System.out.println("¿De que tipo es?");
        mascota.setTipo(leer.next());
        
    }
    
    public void mostrar(){
        System.out.println("------------------");
        System.out.println("Datos de tu mascota");
        System.out.println("Se llama "+ mascota.getNombre() + ", es un/a "+ mascota.getTipo() +
                " de raza "+ mascota.getRaza());
    }
    
    public void cumplirAnios(){
        System.out.println("Tiene "+ mascota.getEdad() + " años y va a cumplir "+ 
                (mascota.getEdad()+1) + " dentro de poco.");      
    }
    
}
