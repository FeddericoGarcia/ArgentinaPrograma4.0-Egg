
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        String nombre, curso = "EggCorporation";
        System.out.println("Ingresa tu nombre");
        nombre = leer.next();
        System.out.println("Hola " + nombre + ", ¡espero que andes muy bien!");
        System.out.println("¿Estas realizando el curso de " + curso + " ?");
        Scanner leer2 = new Scanner(System.in);
        String pregunta = leer.next();
        switch (pregunta) {
            case "si": System.out.println("¡¡Me parece genial, A DARLE ATOMOS!!!");break;
            case "no": System.out.println("¡¡Ponete a estudiar, NO DEJES PASAR EL TIEMPO!!");break;
            default:
                System.out.println("Ooops, ocurrió algo inesperado...");
        }
    }
    
}
