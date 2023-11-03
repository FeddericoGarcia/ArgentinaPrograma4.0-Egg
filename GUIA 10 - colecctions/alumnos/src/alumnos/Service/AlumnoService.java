/*
Crear una clase llamada Alumno que mantenga información sobre las notas de distintos
alumnos. La clase Alumno tendrá como atributos, su nombre y una lista de tipo Integer
con sus 3 notas.
En el servicio de Alumno deberemos tener un bucle que crea un objeto Alumno. Se pide
toda la información al usuario y ese Alumno se guarda en una lista de tipo Alumno y se le
pregunta al usuario si quiere crear otro Alumno o no.
Después de ese bucle tendremos el siguiente método en el servicio de Alumno:
Método notaFinal(): El usuario ingresa el nombre del alumno que quiere calcular su nota
final y se lo busca en la lista de Alumnos. Si está en la lista, se llama al método. Dentro
del método se usará la lista notas para calcular el promedio final de alumno. Siendo este
promedio final, devuelto por el método y mostrado en el main.
 */

package alumnos.Service;

import alumnos.Entity.Alumno;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class AlumnoService {
    
    ArrayList<Alumno> listaAlumno;
   
    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public AlumnoService() {
        listaAlumno = new ArrayList();
    }
      
    public void crearAlumno(){
        String resp = "";
        
        do{
            ArrayList<Integer> notas = new ArrayList<>();
            
            System.out.println("Ingresa el nombre del Alumno: ");
            String nombre = leer.next();            
            
            System.out.println("Ingresa las tres notas de la materia: ");
            
            for (int i = 0; i < 3; i++) {
                notas.add(leer.nextInt());
            }
            
            Alumno alumn = new Alumno(nombre, notas);
            
            listaAlumno.add(alumn);
            
            System.out.println("¿Desea crear otro alumno? 1- Si / 2- No");
            resp = leer.next();
            
        } while (resp.equalsIgnoreCase("si") || resp.equals("1"));      
    }
    
    public void notaFinal(){

        System.out.println("Ingresa el nombre del alumno a buscar: ");
        String nombre = leer.next();
                
        double suma = 0;
        
        for (Alumno aux : listaAlumno) {
            
            if(aux.getNombre().equalsIgnoreCase(nombre)){
                System.out.println("El promedio del alumno "+ nombre.toUpperCase() +" es: ");
                for (Integer m : aux.getNotasArray()){
                    suma += m;
                }
                double promedio = suma / 3;
                System.out.println(promedio);
            } 
        }   
    }
    
    public void mostrarLista(){
        Iterator<Alumno> it = listaAlumno.iterator();
        
        while (it.hasNext()){
            System.out.println(it.next().toString());
        }
        
    }
  
}
