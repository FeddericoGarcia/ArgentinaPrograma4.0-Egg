/*
Crea una clase "Mascota" con las propiedades "nombre", "edad", "raza" y "tipo" 
(perro, gato, etc.).
Crea un constructor para inicializar los valores de las propiedades y en la clase 
servicio crear un método para agregar la mascota y otro para mostrar por pantalla 
la información de la mascota.
También crea un método "cumplirAnios" que aumente en uno la edad de la mascota
 */

package mascota;

public class Mascota {
    private String nombre, tipo, raza;
    private int edad;

    public Mascota() {
    }

    public String getNombre() {
        return nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public String getRaza() {
        return raza;
    }

    public int getEdad() {
        return edad;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

}
