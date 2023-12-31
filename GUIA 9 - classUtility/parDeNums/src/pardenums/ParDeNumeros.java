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

public class ParDeNumeros {
    private double num1, num2;

    public ParDeNumeros() {
        this.num1 = Math.random()*10;
        this.num2 = Math.random()*10;
    }

    public double getNum1() {
        return num1;
    }

    public double getNum2() {
        return num2;
    }

    public void setNum1(int num1) {
        this.num1 = num1;
    }

    public void setNum2(int num2) {
        this.num2 = num2;
    }

}
