/*
Diseñe una función que pida el nombre y la edad de N personas e imprima los datos de 
las personas ingresadas por teclado e indique si son mayores o menores de edad. 
Después de cada persona, el programa debe preguntarle al usuario si quiere seguir 
mostrando personas y frenar cuando el usuario ingrese la palabra “No”.
 */
package nombreyedad;

import java.util.Scanner;

public class Main {

    public static void main(String[] arg){
        String name, opcion;
        int edad;
        Scanner leer = new Scanner(System.in);
        
        do{
            System.out.println("Ingresá un nombre: ");
            name = leer.next();
            System.out.println("Ingresá la edad: ");
            edad = leer.nextInt();
            
            verificar(name, edad);
            
            System.out.println("¿Desea continuar? (Si/No)");
            opcion = leer.next();
        }while (!opcion.equalsIgnoreCase("no"));
        
        System.out.println("¡Adios!");
        leer.close();
    }
    
    public static void verificar(String name, int edad){
        if (esMayorEdad(edad)){
                System.out.println(name.toUpperCase() +" es mayor de edad.");
            } else {
                System.out.println(name.toUpperCase() +" no es mayor de edad");
            }
    }
    
    public static boolean esMayorEdad(int edad) {
        return edad >= 18;
    }
    
}
