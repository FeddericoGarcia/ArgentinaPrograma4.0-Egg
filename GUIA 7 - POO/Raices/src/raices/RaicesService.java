/*
Vamos a realizar una clase llamada Raices, donde representaremos los valores de una 
ecuación de 2º grado. Tendremos los 3 coeficientes como atributos, llamémosles a, b y c. 
Hay que insertar estos 3 valores para construir el objeto a través de un método constructor.
Luego, en RaicesServicio las operaciones que se podrán realizar son las siguientes:
Método getDiscriminante(): devuelve el valor del discriminante (double). El discriminante 
tiene la siguiente fórmula: (b^2)-4*a*c
Método tieneRaices(): devuelve un booleano indicando si tiene dos soluciones, para que 
esto ocurra, el discriminante debe ser mayor o igual que 0.
Método tieneRaiz(): devuelve un booleano indicando si tiene una única solución, para que 
esto ocurra, el discriminante debe ser igual que 0.
Método obtenerRaices(): llama a tieneRaices() y si devolvió true, imprime las 2 
posibles soluciones.
Método obtenerRaiz(): llama a tieneRaiz() y si devolvió true imprime una única raíz. 
Es en el caso en que se tenga una única solución posible.
Método calcular(): este método llamara a tieneRaices() y a tieneRaiz(), y mostrara 
por pantalla las posibles soluciones que tiene nuestra ecuación con los métodos obtenerRaices() 
o obtenerRaiz(), según lo que devuelvan nuestros métodos y en caso de no existir solución, 
se mostrara un mensaje.
Nota: Fórmula ecuación 2o grado: (-b±√((b^2)-(4*a*c)))/(2*a) Solo varía el signo delante de -b
 */


package raices;
import java.util.Scanner;

public class RaicesService {
    
    Raices numR = new Raices();
    Scanner leer = new Scanner(System.in);
    
    public void crearRaiz(){
        System.out.println("** RAICES **");
        System.out.println("(Ecuaciones de 2° grado)");
        System.out.println("Ingresa el número para A");
        numR.setA(leer.nextInt());
        
        System.out.println("Ingresa el número para B");
        numR.setB(leer.nextInt());
        
        System.out.println("Ingresa el número para C");
        numR.setC(leer.nextInt());
        
    }
    
    public double getDiscriminante(){
        return (Math.pow(numR.getB(), 2))- 4 * numR.getA()* numR.getC();

    }
    
    public boolean tieneRaices(){
        boolean dosSoluciones = false;
        
        if (getDiscriminante() > 0){
            return dosSoluciones = true;
        } 
        
        return dosSoluciones;
    }
    
    public boolean tieneRaiz(){
        boolean raiz = false;
        
        if (getDiscriminante() == 0){
            raiz = true;
        }
        return raiz;
    }
    
    public void obtenerRaices(){
        
        if(tieneRaices() == true){
           double resultado1 = ((-numR.getB()) + Math.sqrt(Math.pow(numR.getB(), 2) - (4 * numR.getA() * numR.getC()))) / (2 * numR.getA());
           double resultado2 = ((-numR.getB()) - Math.sqrt(Math.pow(numR.getB(), 2) - (4 * numR.getA() * numR.getC()))) / (2 * numR.getA());
           System.out.println(resultado1);
           System.out.println(resultado2);
        } 
    }
    
    public void obtenerRaiz(){
        
        if (tieneRaiz() == true){
            double resultado1 = ((-numR.getB()) + Math.sqrt(Math.pow(numR.getB(), 2) - (4 * numR.getA() * numR.getC()))) / (2 * numR.getA());
           System.out.println(resultado1);
        } 
    }
    
    public void calcular(){
        
        if (tieneRaices() == true){
            System.out.println("Se obtuvieron 2 resultados");
            obtenerRaices();
        } 
        if (tieneRaiz() == true){
            System.out.println("Se obtuvo 1 resultado");
            obtenerRaiz();
        } 
        if (tieneRaiz() == !true && tieneRaices() == !true) {
            System.out.println("La ecuación NO tiene solución");
        }
    }

}
