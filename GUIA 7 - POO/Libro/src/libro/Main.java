/*
Crear una clase llamada Libro que contenga los siguientes atributos: ISBN, Título, 
Autor, Número de páginas, y un constructor con todos los atributos pasados por parámetro 
y un constructor vacío. Crear un método para cargar un libro pidiendo los datos al usuario 
y luego informar mediante otro método el número de ISBN, el título, el autor del libro y el número de páginas.
 */
package libro;

public class Main {

    public static void main(String[] arg){

        Libro libro = new Libro();
        
        System.out.println("Codigo de barra "+ libro.getISBN());
        System.out.println("Titulo del libro: "+ libro.getTitulo());
        System.out.println("El autor del libro es: "+ libro.getAutor());
        System.out.println("La cantidad de pagina es de "+ libro.getNumPag());
        
    }
    
}
