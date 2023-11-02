/*
Realizar una clase llamada Cadena, en el paquete de entidades, que tenga como atributos una 
frase (String) y su longitud. Agregar constructor vacío y con atributo frase solamente. 
Agregar getters y setters. El constructor con frase como atributo debe setear la longitud 
de la frase de manera automática. Crear una clase CadenaServicio en el paquete servicios 
que implemente los siguientes métodos:
-Método mostrarVocales(), deberá contabilizar la cantidad de vocales que tiene la frase ingresada.
-Método invertirFrase(), deberá invertir la frase ingresada y mostrarla por pantalla. 
Por ejemplo: Entrada: "casa blanca", Salida: "acnalb asac".
-Método vecesRepetido(String letra), recibirá un carácter ingresado por el usuario y 
contabilizar cuántas veces se repite el carácter en la frase, por ejemplo:
Entrada: frase = "casa blanca". Salida: El carácter 'a' se repite 4 veces.
-Método compararLongitud(String frase), deberá comparar la longitud de la frase que 
compone la clase con otra nueva frase ingresada por el usuario.
-Método unirFrases(String frase), deberá unir la frase contenida en la clase Cadena 
con una nueva frase ingresada por el usuario y mostrar la frase resultante.
-Método reemplazar(String letra), deberá reemplazar todas las letras “a” que se encuentren 
en la frase, por algún otro carácter seleccionado por el usuario y mostrar la frase resultante.
-Método contiene(String letra), deberá comprobar si la frase contiene una letra que 
ingresa el usuario y devuelve verdadero si la contiene y falso si no.
 */

package cadena;
import java.util.Scanner;

public class CadenaService {
    
    Cadena cadena = new Cadena();
    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
    public void menu(){
        System.out.println("Ingresa la opción deseada: ");
        System.out.println("1 - Mostrar la cantidad total de vocales en la frase");
        System.out.println("2 - Invertir la frase");
        System.out.println("3 - Buscar carácter repetida");
        System.out.println("4 - Comparar longitud con otra frase");
        System.out.println("5 - Concatenar otra frase");
        System.out.println("6 - Reemplazar carácter");
        System.out.println("7 - Encontrar letra");
        
        int respuesta = leer.nextInt();
        
        switch (respuesta){
            case 1:
                mostrarVocales();
                break;
            case 2:
                invertirFrase();
                break;
            case 3:
                System.out.println("Ingresa el caracter repetido");
                vecesRepetido(leer.next());
                break;
            case 4:
                System.out.println("Compara la longitud con otra frase");
                compararLongitud(leer.next());
                break;
            case 5:
                System.out.println("Ingresa la frase a concatenar");
                unirFrases(leer.next());
                break;
            case 6:
                System.out.println("Ingresa el caracter a ser reemplazado");
                reemplazar(leer.next());
                break;
            case 7:
                System.out.println("Ingresa la letra a buscar");
                contiene(leer.next());
                break;
        }
        if (respuesta > 7){
            System.out.println("Número Incorrecto");
        }
        
    }
    
    public void mostrarVocales(){
        int A = 0, E = 0, I = 0, O = 0, U = 0;
        
        for (int i = 0; i < cadena.getLongFrase(); i++) {
            if (cadena.getFrase().charAt(i) == 'a'){
                A++;
            }
            if (cadena.getFrase().charAt(i) == 'e'){
                E++;
            }
            if (cadena.getFrase().charAt(i) == 'i'){
                I++;
            }
            if (cadena.getFrase().charAt(i) == 'o'){
                O++;
            }
            if (cadena.getFrase().charAt(i) == 'u'){
                U++;
            }
            
        }
        
        System.out.println("La cantidad de vocales son "+ (A+E+I+O+U));
        System.out.println("A : "+ A);
        System.out.println("E : "+ E);
        System.out.println("I : "+ I);
        System.out.println("O : "+ O);
        System.out.println("U : "+ U);
    }
    
    public void invertirFrase(){
        String newFrase = "";
        
        for (int i = cadena.getLongFrase()-1; i >= 0 ; i--) {
            newFrase = newFrase + cadena.getFrase().charAt(i);
        }
        System.out.println(newFrase); 
    }
    
    public void vecesRepetido(String letra){
        int sumaChar = 0;
        
        for (int i = 0; i < cadena.getLongFrase(); i++) {
            if (cadena.getFrase().charAt(i) == letra.charAt(0)){
                sumaChar++;
            }
        }
        System.out.println("El carácter '"+ letra + "' se repite "+ sumaChar + " veces");
        
    }
    
    public void compararLongitud(String frase){
        
        if(cadena.getLongFrase() == frase.length()){
            System.out.println("Las frases tienen la misma longitud");
            System.out.println(cadena.getFrase() +" : "+ cadena.getLongFrase());
            System.out.println(frase +" : "+ frase.length());
        } else {
            System.out.println("Las frases NO tienen la misma longitud");
            System.out.println(cadena.getFrase() +" : "+ cadena.getLongFrase());
            System.out.println(frase +" : "+ frase.length());
        }
        
    }
    
    public void unirFrases(String frase){
        
        System.out.println(cadena.getFrase() + " " + frase);
        
    }
    
    public void reemplazar(String caracter){
        String newFrase = "";
        
        for (int i = 0; i < cadena.getLongFrase(); i++) {
            if (cadena.getFrase().charAt(i) == 'a'){
                newFrase += caracter;
            } else {
                newFrase += cadena.getFrase().charAt(i);
            }
            
        }
        System.out.println(newFrase);
        
    }
    
    public void contiene(String letra){
        boolean resu = false;
        
        
        for (int i = 0; i < cadena.getLongFrase(); i++) {
            if (cadena.getFrase().charAt(i) == letra.charAt(0)){
            resu = true;
            }
        }
        System.out.println("¿Tiene la letra buscada?");
        System.out.println(resu);
        
    }
    
    
    
}
