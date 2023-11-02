/*
Vamos a usar la clase Date que ya existe en Java. Crearemos la clase FechaService, 
en paquete Servicios, que tenga los siguientes métodos:
Método fechaNacimiento que pregunte al usuario día, mes y año de su nacimiento. 
Luego los pase por parámetro a un nuevo objeto Date. El método debe retornar el objeto Date. 
Ejemplo fecha: Date fecha = new Date(anio, mes, dia);
Método fechaActual que cree un objeto fecha con el día actual. Para esto usaremos 
el constructor vacío de la clase Date. Ejemplo: Date fechaActual = new  Date();
El método debe retornar el objeto Date.
Método diferencia que reciba las dos fechas por parámetro y retorna la diferencia
de años entre una y otra (edad del usuario).
Si necesiten acá tienen más información en clase Date: Documentacion Oracle

 */

package fecha;

import java.util.Date;
import java.util.Scanner;

public class FechaService {
    
    Scanner leer = new Scanner(System.in);
    
    public Fecha fechaNacimiento(){
        System.out.println("Ingresa tu fecha de nacimiento: dd/mm/aaaa");
        
        int day = leer.nextInt();
        int month = leer.nextInt();
        int year = leer.nextInt();
        
        Fecha obDate = new Fecha(year, month, day);
        return obDate;
    }
    
    public Date fechaActual(){
        Date fechaActual = new Date();
        return fechaActual; 
    }
    
    public void diferencia(Fecha obDate, Date fechaActual){
        int edadUsuario;
        edadUsuario = (fechaActual.getYear() + 1900) - obDate.getYear();
        System.out.println("Fecha de nacimiento: "+ obDate.getDay()+ 
                "/"+ obDate.getMonth()+ "/"+ obDate.getYear());
        System.out.println("Edad: "+ edadUsuario);
    }
  
}
