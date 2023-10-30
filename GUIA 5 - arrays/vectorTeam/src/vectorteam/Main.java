/*
Crea un vector llamado ‘Equipo’ cuya dimensión sea la cantidad de compañeros de 
equipo y define su tipo de dato de tal manera que te permita alojar sus nombres 
más adelante.

******

Utilizando un Bucle for, aloja en el vector Equipo, los nombres de tus compañeros
de equipo
 */
package vectorteam;

import java.util.Scanner;

public class Main {

    public static void main(String[] arg){
        
        String Equipo[] = new String[definirTamano()];
        
        ingresarCompaneros(Equipo);

        mostrar(Equipo);

    }
    
    public static int definirTamano(){
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa la cantidad de compañeros: ");
        
        return leer.nextInt();
    }
    
    public static void ingresarCompaneros(String Equipo[]){
        System.out.println("Ingresa el nombre de tu compañero: ");
        Scanner leer = new Scanner(System.in);
        
        for (int i = 0; i < Equipo.length; i++){
            System.out.println("( intento numero "+ i + " )");
            Equipo[i] = leer.next();
        }
        leer.close();
    }
    
    public static void mostrar(String Equipo[]){
        System.out.println("---------------------");
        System.out.println("Lista de compañeros: ");
        
        for (int i = 0; i < Equipo.length; i++){
            System.out.println(i+1 + " - " + Equipo[i].toUpperCase());
        }
    }
    
}
