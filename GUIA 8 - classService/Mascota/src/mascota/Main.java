/*
Crea una clase "Mascota" con las propiedades "nombre", "edad", "raza" y "tipo" 
(perro, gato, etc.).
Crea un constructor para inicializar los valores de las propiedades y en la clase 
servicio crear un método para agregar la mascota y otro para mostrar por pantalla 
la información de la mascota.
También crea un método "cumplirAnios" que aumente en uno la edad de la mascota
 */

package mascota;

public class Main {
    public static void main(String[] args){
        MascotaService MS = new MascotaService();
        
        System.out.println("*** MASCOTAS ***");
        MS.crearMascota();
        MS.mostrar();
        MS.cumplirAnios();        
    }
}
