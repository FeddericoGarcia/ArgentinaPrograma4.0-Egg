/*
Crea una clase "Estudiante" con las propiedades "nombre", "edad" y "nota media".
Crea un método en la clase de servicios para crear al estudiante, uno para mostrarlo 
y otro para mostrar por pantalla si el estudiante aprobó o no.
 */

package estudiante;

public class Estudiante {
    private String nombre;
    private int edad, notaMedia;

    public Estudiante() {
    }

    public String getNombre() {
        return nombre;
    }

    public int getEdad() {
        return edad;
    }

    public int getNotaMedia() {
        return notaMedia;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public void setNotaMedia(int notaMedia) {
        this.notaMedia = notaMedia;
    }

}
