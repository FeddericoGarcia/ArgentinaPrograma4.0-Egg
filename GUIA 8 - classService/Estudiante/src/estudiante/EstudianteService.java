/*
Crea una clase "Estudiante" con las propiedades "nombre", "edad" y "nota media".
Crea un método en la clase de servicios para crear al estudiante, uno para mostrarlo 
y otro para mostrar por pantalla si el estudiante aprobó o no.
 */

package estudiante;

import java.util.Scanner;

public class EstudianteService {
    
    Estudiante estudiante = new Estudiante();
    Scanner leer = new Scanner(System.in);
    
    public void crearEstudiante(){
        
        System.out.println("Ingresa el nombre del estudiante: ");
        estudiante.setNombre(leer.nextLine());
        
        System.out.println("Ingresa la edad");
        estudiante.setEdad(leer.nextInt());
        
        System.out.println("Ingresa la nota de la materia");
        estudiante.setNotaMedia(leer.nextInt());
    }
    
    public void mostrar(){
        
        System.out.println("Datos del estudiante");
        System.out.println("Nombre: "+ estudiante.getNombre());
        System.out.println("Edad: "+ estudiante.getEdad()); 
    }
    
    public void nota(){
        
        if (estudiante.getNotaMedia() > 7){
            System.out.println("Nota: "+ estudiante.getNotaMedia());
            System.out.println("Estudiante Aprobado");
        } else {
            System.out.println("Nota: "+ estudiante.getNotaMedia());
            System.out.println("Estudiante NO Aprobado");
        }
    }
    
}
