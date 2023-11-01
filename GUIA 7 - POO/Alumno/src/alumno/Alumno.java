package alumno;

import java.util.Scanner;

public class Alumno {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        //Instanciar objeto Alumno por el metodo con argumentos
        Persona alumno = new Persona("Ezequiel", 27, "Mexico");
        
        //Instanciar otro objeto sin argumentos
        Persona alumno2 = new Persona();
        alumno2.name = "Federico";
        alumno2.edad = 27;
        alumno2.nacionalidad = "Argentina";
        
        
        Persona alumno3 = new Persona();
        System.out.println("Escribir el nombre del alumno n° 3");
        alumno3.name = leer.nextLine();
        System.out.println("Escribir la edad del alumno n° 3");
        alumno3.edad = leer.nextInt();
        System.out.println("Escribir donde vive el alumno n° 3");
        alumno3.nacionalidad = leer.next();
        
        System.out.println("El alumno "+ alumno.name + " vive en "+ alumno.nacionalidad + " y tiene "+ alumno.edad + " años");
        
        System.out.println("El alumno "+ alumno2.name + " tiene "+ alumno2.edad + " años y reside en "+ alumno2.nacionalidad);
        
        System.out.println("El alumno "+ alumno3.name + " tiene "+ alumno3.edad + " años y reside en "+ alumno3.nacionalidad);
    
    }
    
}
