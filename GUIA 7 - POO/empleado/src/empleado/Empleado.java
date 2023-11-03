/*
Crea una clase "Empleado" que tenga atributos como "nombre", "edad" y "salario".
Luego, crea un método "calcular_aumento" que calcule el aumento salarial de un 
empleado en función de su edad y salario actual. El aumento salarial debe ser 
del 10% si el empleado tiene más de 30 años o del 5% si tiene menos de 30 años.
 */

package empleado;

public class Empleado {
    private String nombre;
    public double salario;
    public int edad;
    
    public Empleado() {
    }

    public Empleado(String nombre, int edad, double salario) {
        this.nombre = nombre;
        this.edad = edad;
        this.salario = salario;
    }

    public String getNombre() {
        return nombre;
    }

    public int getEdad() {
        return edad;
    }

    public double getSalario() {
        return salario;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public void setSalario(int salario) {
        this.salario = salario;
    }
    
    public void calcular_aumento(){
        double salarioActual = 0;
        
        if (edad >= 30){
            salarioActual = ((10 * salario) / 100 + salario);
        } else if (edad < 30){
            salarioActual = ((5 * salario) / 100 + salario);
        }
        
        System.out.println(salarioActual);    
    }

}
