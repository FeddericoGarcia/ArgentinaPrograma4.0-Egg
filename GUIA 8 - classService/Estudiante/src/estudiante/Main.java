/*
Crea una clase "Estudiante" con las propiedades "nombre", "edad" y "nota media".
Crea un método en la clase de servicios para crear al estudiante, uno para mostrarlo 
y otro para mostrar por pantalla si el estudiante aprobó o no.
 */

package estudiante;

public class Main {
    public static void main(String[] args){
        EstudianteService ES = new EstudianteService();
        
        ES.crearEstudiante();
        ES.mostrar();
        ES.nota();  
    }
}
