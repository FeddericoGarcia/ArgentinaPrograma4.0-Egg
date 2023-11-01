/*
Crear una clase llamada Libro que contenga los siguientes atributos: ISBN, Título, 
Autor, Número de páginas, y un constructor con todos los atributos pasados por parámetro 
y un constructor vacío. Crear un método para cargar un libro pidiendo los datos al usuario 
y luego informar mediante otro método el número de ISBN, el título, el autor del libro y el número de páginas.
 */
package libro;

import java.util.Scanner;

public class Libro {
    public int ISBN;
    public String Autor;
    public String Titulo;
    public int numPaginas;

    public Libro() {
        this.setInfo();
        
    }
    public Libro(int ISBN, String Autor, String Titulo, int numPaginas) {
        this.Autor = Autor;
        this.ISBN = ISBN;
        this.Titulo = Titulo;
        this.numPaginas = numPaginas;
    }
    
    public void setInfo(){
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        System.out.println("Ingresa el titulo del libro:");
        this.Titulo = leer.nextLine();
        System.out.println("Ingresa el autor del mismo");
        this.Autor = leer.nextLine();
        System.out.println("Escribí el codigo de barra");
        this.ISBN = leer.nextInt();
        System.out.println("Y la cantidad de paginas que dispone");
        this.numPaginas = leer.nextInt();
    }
        
    public String getTitulo(){
        return Titulo;
    }
    
    public String getAutor(){
        return Autor;
    }
    
    public int getISBN(){
        return ISBN;
    }
    
    public int getNumPag(){
        return numPaginas;
    }
    
     
}
