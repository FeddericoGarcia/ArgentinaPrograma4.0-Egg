/*
Implemente la clase Persona en el paquete entidades. Una persona tiene un nombre y 
una fecha de nacimiento (Tipo Date), constructor vacío, constructor parametrizado, 
get y set. Crear una clase PersonaService, en el paquete servicio, con los siguientes 
métodos:
Método crearPersona que pida al usuario Nombre y fecha de nacimiento de la persona 
a crear. Retornar el objeto Persona creado.
Método calcularEdad que calcule la edad del usuario utilizando el atributo de fecha 
de nacimiento y la fecha actual.
Método menorQue recibe como parámetro una Persona y una edad. Retorna true si 
la persona es menor que la edad consultada o false en caso contrario.
Método mostrarPersona que muestra la información de la persona deseada.
 */

package persona2;
import java.util.Date;
import java.util.Scanner;

public class PersonaService {
    
    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    Persona p = new Persona();
    
    public Persona crearPersona(){
        Persona p;
        
        System.out.println("Ingresa tu nombre: ");
        String name = leer.next();
        
        System.out.println("Ingresa tu año de nacimiento: dd/mm/aaaa");
        int day = leer.nextInt();
        int month = leer.nextInt();
        int year = leer.nextInt();
        
        return p = new Persona(name, new Date(year, month, day));
    }
    
    public Date fechaActual(){
        return new Date();
    }
    
    public int calcularEdad(Date fechaActual, Persona p){
        System.out.println(p.getFechaNacimiento());
        return fechaActual.getYear() ;//- p.getFechaNacimiento().getYear();
    }
    
    public boolean menorQue(Persona p, int num){
        System.out.println("¿Es menor a la edad ingresada?");
       return p.getFechaNacimiento().getYear() > num;
    }
    
    public void mostrarPersona(Persona p){
        
        System.out.println("Datos de la persona: ");
        System.out.println("Nombre: "+ p.getNombre());
        System.out.println("Fecha de Nacimiento: "+ p.getFechaNacimiento().getDay() +"/"+
        p.getFechaNacimiento().getMonth() +"/"+ p.getFechaNacimiento().getYear());
    }

}
