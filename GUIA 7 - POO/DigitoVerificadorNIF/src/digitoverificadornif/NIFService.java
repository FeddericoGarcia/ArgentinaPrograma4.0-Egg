/*
 Dígito Verificador. Crear una clase NIF que se usará para mantener DNIs con su correspondiente 
letra (NIF). Los atributos serán el número de DNI (entero largo) y la letra (String o char) que 
le corresponde. En NIFService se dispondrá de los siguientes métodos:
Métodos getters y setters para el número de DNI y la letra.
Método crearNif(): le pide al usuario el DNI y con ese DNI calcula la letra que le corresponderá. 
Una vez calculado, le asigna la letra que le corresponde según
Método mostrar(): que nos permita mostrar el NIF (ocho dígitos, un guion y la letra en mayúscula; 
por ejemplo: 00395469-F).
La letra correspondiente al dígito verificador se calculará a traves de un método que funciona de 
la siguiente manera: Para calcular la letra se toma el resto de dividir el número de DNI por 23 
(el resultado debe ser un número entre 0 y 22). El método debe buscar en un array (vector) 
de caracteres la posición que corresponda al resto de la división para obtener la letra correspondiente.
La tabla de caracteres es la siguiente:
 */

package digitoverificadornif;
import java.util.Scanner;

public class NIFService {
    
    Scanner leer = new Scanner(System.in);
    NIF usuario = new NIF();
    String poss[] = new String[23];
    
    public void crearNIF(){
        
        System.out.println("Ingresa tu DNI");
        int DNI = leer.nextInt();
        usuario.setDNI(DNI);
        int numLetra = DNI % 23;
        
        poss[0] = "T";
        poss[1] = "R";
        poss[2] = "W";
        poss[3] = "A";
        poss[4] = "G";
        poss[5] = "M";
        poss[6] = "Y";
        poss[7] = "F";
        poss[8] = "P";
        poss[9] = "D";
        poss[10] = "X";
        poss[11] = "B";
        poss[12] = "N";
        poss[13] = "J";
        poss[14] = "Z";
        poss[15] = "S";
        poss[16] = "Q";
        poss[17] = "V";
        poss[18] = "H";
        poss[19] = "L";
        poss[20] = "C";
        poss[21] = "K";
        poss[22] = "E";
        
        usuario.setNumLetra(poss[numLetra]);
        
    }
    
    public void mostrar(){
        
        System.out.println("Tu codigo NIF es: ");
        System.out.println("'"+ usuario.getDNI() + "-"+ usuario.getNumLetra() +"'");
        
    }
 
}
