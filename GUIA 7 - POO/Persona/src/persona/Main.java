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

/**
 *
 * @author Garberio
 */
public class Main {
    
    public static void main(String[] args){
        
        ServicePersona persona1 = new ServicePersona();
        
        boolean[] mayorDeEdad = new boolean[4];
        int[] peso = new int[4];
        Persona[] indice = new Persona[4];        
    
        System.out.println("---------------------------");
        System.out.println("¡Hola, buenas tardes!");
        System.out.println("Te solicitaremos los siguientes datos ");
        
        for (int i = 0; i < indice.length; i++) {
            indice[i] = persona1.crearPersona();
        }
        
        for (int i = 0; i < indice.length; i++) {
            mayorDeEdad[i] = persona1.esMayorDeEdad();
            peso[i] = persona1.calcularIMC();
        }
        
        System.out.println("---------------------------");
        porcentajeEdad(mayorDeEdad, indice);
        porcentajeIMC(peso, indice);
        
    }
    
    public static void porcentajeEdad(boolean mayorDeEdad[], Persona indice[]){
        
        int mayor = 0, menor = 0;
        
        for (int i = 0; i < indice.length; i++) {
            if (mayorDeEdad[i] == true) {
                mayor++;
            } else {
                menor++;
            }
        }
        menor = (menor * 100) / indice.length ;
        System.out.println("- Porcentaje de Edad:");
        System.out.println("Personas menores de edad con un "+ menor + "%");
        System.out.println("Personas mayores de edad con un "+ mayor * 100 / indice.length + "%");
        System.out.println("---------------------------");

    }
    
    public static void porcentajeIMC(int[] peso, Persona indice[]){
        
        int bajo = 0, medio = 0, alto = 0;
        
        for (int i = 0; i < indice.length; i++) {
            switch (peso[i]){
                case -1:
                    bajo++;
                case 0:
                    medio++;
                case 1:
                    alto++;
            }

        }
        
        System.out.println("- Porcentaje de Peso:");
        System.out.println("Personas por debajo de su peso en "+ bajo * 100 / 4 + "%");
        System.out.println("Personas en su peso ideal en "+ (medio * 100) / 4 + "%");
        System.out.println("Personas por encima de su peso en "+ (alto * 100 / 4) + "%");
        System.out.println("---------------------------");
        
        
    }
    
}
