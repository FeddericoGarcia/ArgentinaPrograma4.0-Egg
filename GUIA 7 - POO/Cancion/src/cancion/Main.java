/*
Desarrollar una clase Cancion con los siguientes atributos: título y autor. 
Se deberá definir además dos constructores: uno vacío que inicializa el título y 
el autor a cadenas vacías y otro que reciba como parámetros el título y el autor 
de la canción. 
Se deberán además definir los métodos getters y setters correspondientes.
 */
package cancion;
import java.util.Scanner;

public class Main {
    public static void main(String[] arg){
        Scanner leer = new Scanner(System.in);
        Cancion cancion = new Cancion();
        
        System.out.println("La cancion es "+ cancion.getAutor() + " y su autor es "+ cancion.getTitulo());
        System.out.println("A continuación, escribí el autor de la cancion: ");
        cancion.setAutor(leer.nextLine());
        System.out.println("Y el titulo de la cancion");
        cancion.setTitulo(leer.nextLine());
        
        System.out.println("La cancion es "+ cancion.getTitulo() + " de "+ cancion.getAutor());
    }
}
