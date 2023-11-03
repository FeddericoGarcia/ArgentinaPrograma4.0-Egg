/*
Crea una clase "Empleado" que tenga atributos como "nombre", "edad" y "salario".
Luego, crea un método "calcular_aumento" que calcule el aumento salarial de un 
empleado en función de su edad y salario actual. El aumento salarial debe ser 
del 10% si el empleado tiene más de 30 años o del 5% si tiene menos de 30 años.
 */

package empleado;

import java.util.Scanner;

public class Main {
    public static void main(String[] arg){
        Scanner leer = new Scanner(System.in);
        Empleado empleado1 = new Empleado();
        
        System.out.println("---------------------");
        System.out.println("CALCULADORA DE SALARIO");
        System.out.println("---------------------");
        System.out.println("- Ingresa el nombre del empleado:");
        empleado1.setNombre(leer.nextLine());

        System.out.println("- Ingresa la edad del empleado:");
        empleado1.edad = leer.nextInt();
        
        System.out.println("- Ingresa el salario del empleado:");
        empleado1.salario = leer.nextDouble();
        
        System.out.println("---------------------");
        System.out.println("- Detalles del empleado:");
        System.out.println("Nombre: "+ empleado1.getNombre());
        System.out.println("Edad: "+ empleado1.getEdad());
        System.out.print("Salario actualizado: $");
        empleado1.calcular_aumento();
        System.out.println("---------------------");
    }
}
