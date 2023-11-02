/*
Realizar una clase llamada ParDeNumeros que tenga como atributos dos números reales con 
los cuales se realizarán diferentes operaciones matemáticas. La clase debe tener un 
constructor vacío, getters y setters.  En el constructor vacío se usará el Math.random 
para generar los dos números. Crear una clase ParDeNumerosService, en el paquete Servicios, 
que deberá además implementar los siguientes métodos:
-Método mostrarValores que muestra cuáles son los dos números guardados.
-Método devolverMayor para retornar cuál de los dos atributos tiene el mayor valor
-Método calcularPotencia para calcular la potencia del mayor valor de la clase elevado 
al menor número. Previamente se deben redondear ambos valores.
-Método calculaRaiz, para calcular la raíz cuadrada del menor de los dos valores. 
Antes de calcular la raíz cuadrada se debe obtener el valor absoluto del número.
 */

package pardenums;

public class ParDeNumerosService {
    
    ParDeNumeros PN = new ParDeNumeros();
    
    public void mostrarValores(){
        System.out.println("Primer número: "+ PN.getNum1());
        System.out.println("Segundo número: "+ PN.getNum2());
        System.out.println("-----------------------");
    }
    
    public double devolverMayor(){
        double mayor;
        
        if(PN.getNum1() > PN.getNum2()){
            mayor = Math.floor(PN.getNum1());
        } else {
            mayor = Math.floor(PN.getNum2());
        }
        System.out.println("- ¿Cúal es el número mayor?");
        return mayor; 
    }
    
    public void calcularPotencia(){
        double num1 = Math.floor(PN.getNum1()), num2 = Math.floor(PN.getNum2()), resultado;
         
        if (num1 > num2){
            resultado = Math.pow(num1, num2);
        } else {
            resultado = Math.pow(num2, num1);
        }
        
        System.out.println("- La potencia del mayor con el menor número es");
        System.out.println(resultado);
    }
    
    public void calculaRaiz(){
        double menor;
        
        if(PN.getNum1() < PN.getNum2()){
            menor = PN.getNum1();
        } else {
            menor = PN.getNum2();
        }
        
        System.out.println("- La raíz cuadrada del número menor es");
        System.out.println(Math.floor(Math.pow(menor, 2))); 
    }
    
}
