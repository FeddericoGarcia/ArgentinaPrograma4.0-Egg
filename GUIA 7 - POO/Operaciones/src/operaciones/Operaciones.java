/*
Crear una clase llamada Operacion que tenga como atributos privados numero1 y numero2. A continuación, se 
deben crear los siguientes métodos:

- Método constructor con todos los atributos pasados por parámetro.
- Método constructor sin los atributos pasados por parámetro.
- Métodos get y set.
- Método para crearOperacion(): que le pide al usuario los dos números y los guarda en los atributos del objeto.
- Método sumar(): calcular la suma de los números y devolver el resultado al main.
- Método restar(): calcular la resta de los números y devolver el resultado al main
- Método multiplicar(): primero valida que no se haga una multiplicación por cero, si fuera a multiplicar por cero, 
el método devuelve 0 y se le informa al usuario el error. Si no, se hace la multiplicación y se devuelve el resultado al main
- Método dividir(): primero valida que no se haga una división por cero, si fuera a pasar una división por cero,
el método devuelve 0 y se le informa al usuario el error se le informa al usuario. Si no, se hace la división y se 
devuelve el resultado al main.

 */
package operaciones;

public class Operaciones {
    private int num1, num2;
    public int multi, divi;
    
    public Operaciones(int num1, int num2) {
        this.num1 = num1;
        this.num2 = num2;
    }

    public Operaciones() {
    }

    public int getNum1() {
        return num1;
    }

    public int getNum2() {
        return num2;
    }

    public void setNum1(int num1) {
        this.num1 = num1;
    }

    public void setNum2(int num2) {
        this.num2 = num2;
    }
    
    public void crearOperacion(int num1, int num2){
        this.num1 = num1;
        this.num2 = num2;
    }
    
    public int sumar(){
        int suma = num1 + num2;
        
        return suma;
    }
    
    public int restar(){
        int resta = num1 - num2;
        
        return resta;
    }
    
    public int multiplicar(){
                
        if (num1 == 0 || num2 == 0){
            System.out.println("** No es posible multiplicar por 0 **");
        } else {
            multi = num1 * num2;
        }
        
        return multi;
    }
    
    public int dividir(){
        
        if (num1 == 0 || num2 == 0){
            System.out.println("** No es posible dividir por 0 **");
        } else {
            divi = num1 / num2;
        }
        
        return divi;
    }
    
}
