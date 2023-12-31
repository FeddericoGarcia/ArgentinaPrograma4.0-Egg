/*
Realizar una clase llamada Persona en el paquete de entidades que tengan los siguientes 
atributos: nombre, edad, sexo (‘H’ para hombre, ‘M’ para mujer, ‘O’ para otro), peso y 
altura. Si desea añadir algún otro atributo, puede hacerlo. Agregar constructores, getters 
y setters.

En el paquete Servicios crear PersonaServicio con los siguientes 3 métodos:
Método esMayorDeEdad(): indica si la persona es mayor de edad. La función devuelve un 
booleano.
Metodo crearPersona(): el método crear persona, le pide los valores de los atributos 
al usuario y después se le asignan a sus respectivos atributos para llenar el objeto Persona. 
Además, comprueba que el sexo introducido sea correcto, es decir, H, M o O. Si no es 
correcto se deberá mostrar un mensaje
Método calcularIMC(): calculara si la persona está en su peso ideal (peso en kg/(altura^2 
en mt2)). Si esta fórmula da por resultado un valor menor que 20, significa que la persona
está por debajo de su peso ideal y la función devuelve un -1. Si la fórmula da por resultado
un número entre 20 y 25 (incluidos), significa que la persona está en su peso ideal y la 
función devuelve un 0. Finalmente, si el resultado de la fórmula es un valor mayor que 25 
significa que la persona tiene sobrepeso, y la función devuelve un 1.
A continuación, en la clase main hacer lo siguiente:
Crear 4 objetos de tipo Persona con distintos valores, a continuación, llamaremos todos 
los métodos para cada objeto, deberá comprobar si la persona está en su peso ideal, tiene 
sobrepeso o está por debajo de su peso ideal e indicar para cada objeto si la persona es 
mayor de edad.
Por último, guardaremos los resultados de los métodos calcularIMC y esMayorDeEdad en 
distintas variables(arrays), para después calcular un porcentaje de esas 4 personas cuantas 
están por debajo de su peso, cuantas en su peso ideal y cuantos, por encima, y también 
calcularemos un porcentaje de cuantos son mayores de edad y cuantos menores. Para esto, 
podemos crear unos métodos adicionales.
 */

package persona;
import java.util.Scanner;

public class ServicePersona {
    
    Persona person = new Persona();
    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
    public Persona crearPersona(){

        System.out.println("- Ingresa el nombre de la persona: ");
        person.nombre = leer.next();
        System.out.println("- Ingresa la edad: ");
        person.edad = leer.nextInt();
        System.out.println("- Ingresa la altura en Cm: ");
        person.altura = leer.nextDouble();
        System.out.println("- Ingresa el peso en Kg: ");
        person.peso = leer.nextDouble();
        System.out.println("- Ingresa el sexo ( ´H´ para Hombre - ´M´ para Mujer - ´O´ para Otros ): ");
        verificarSexo(leer.next());
        
        return person;
        
    }
    
    public void verificarSexo(String tipoSexo){
        
        if (tipoSexo.equalsIgnoreCase("h") || tipoSexo.equalsIgnoreCase("m") || tipoSexo.equalsIgnoreCase("o")){
            person.setSexo(tipoSexo);
        } else {
            System.out.println("---------------------------");
            System.out.println("Opcion incorrecta. Por favor, elige la correcta: ");
            verificarSexo(leer.next());
        }
        
    }
    
    public boolean esMayorDeEdad(){
        return person.getEdad() > 18;
    }
    
    public int calcularIMC(){
        int imc;
        
        imc = (int) (person.getPeso() / Math.pow(person.getAltura(),2));
        
        if (imc < 20){
            return -1;
        } else if (imc >= 20 && imc <= 25){
            return 0;
        } else if (imc > 25){
            return 1;
        }
        
        return imc;
    }
    
}
