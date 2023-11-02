/*
Realizar una clase llamada CuentaBancaria en el paquete Entidades con los siguientes 
atributos: numeroCuenta(entero), dniCliente(entero largo), saldoActual. 
Agregar constructor vacío, con parámetros, getters y setters.
Agregar la clase CuentaBancariaServicio en el paquete Servicios que contenga:

Método para crear cuenta pidiéndole los datos al usuario.
Método ingresar(double): recibe una cantidad de dinero a ingresar y se le sumará al saldo actual.
Método retirar(double): recibe una cantidad de dinero a retirar y se le restara al saldo actual. 
Si la cuenta no tiene la cantidad de dinero a retirar se retirará el máximo posible hasta dejar la cuenta en 0.
Método extraccionRapida: le permitirá sacar solo un 20% de su saldo. Validar que el usuario no saque más del 20%.
Método consultarSaldo: permitirá consultar el saldo disponible en la cuenta.
Método consultarDatos: permitirá mostrar todos los datos de la cuenta.
 */

package cuentabancaria;

import java.util.Scanner;

public class CuentaBancariaService {
    
    Scanner leer = new Scanner(System.in);
    CuentaBancaria ctaBancaria = new CuentaBancaria();
    
    public CuentaBancaria crearCuenta(){
        
        System.out.println("========================");
        System.out.println("Ingresá el número de tu cuenta: ");
        ctaBancaria.numCuenta = leer.nextInt();
        
        System.out.println("Ingresá tu DNI (Documento de Identidad): ");
        ctaBancaria.DNI = leer.nextInt();
        
        System.out.println("Y por ultimo, ingresá el saldo de tu cuenta: ");
        ctaBancaria.saldoActual = leer.nextDouble();
        
        return ctaBancaria;
    }
    
    public void menu(){
        int respuesta;
        do {
            System.out.println("========================");
            System.out.println("========= MENU =========");
            System.out.println("1 - Ingresar dinero");
            System.out.println("2 - Retirar dinero");
            System.out.println("3 - Extracción rápida");
            System.out.println("4 - Consultar saldo");
            System.out.println("5 - Consultar datos");
            System.out.println("6 - Salir");
            System.out.println("========================");
            
            switch (respuesta = leer.nextInt()){
                case 1:
                    System.out.println("Ingresa un importe a tu cuenta: ");
                    ingresar(ctaBancaria, leer.nextDouble());
                    break;
                case 2:
                    System.out.println("Ingresa el monto a retirar: ");
                    retirar(ctaBancaria, leer.nextDouble());
                    break;
                case 3:
                    System.out.println("Ingresa el monto para la extracción rápida: ");
                    extraccionRapida(ctaBancaria, leer.nextDouble());
                    break;
                case 4:
                    consultarSaldo();
                    break;
                case 5:
                    consultarDatos();
                    break;
                case 6:
                    respuesta = 7;
                    break;
            }
            respuesta = consultarRetiro();
        } while (respuesta < 7);
            System.out.println("¡Hasta luego!");
    }
    
    public void ingresar(CuentaBancaria cliente1, double saldo){
        sumarIngreso(cliente1, saldo);
        System.out.println("Tu saldo actual es de "+ cliente1.getSaldoActual());       
    }
    
    public void sumarIngreso(CuentaBancaria cliente1, double saldo){
        cliente1.saldoActual(cliente1.getSaldoActual()+ saldo);
    }
    
    public void retirar(CuentaBancaria cliente1, double saldo){
        retirarSaldo(cliente1, saldo);
    }
    
    public void retirarSaldo(CuentaBancaria cliente1, double saldo){
        
        if ((cliente1.getSaldoActual() - saldo) >= 1){
            System.out.println("¡Retiro Exitoso!");
            cliente1.saldoActual(cliente1.getSaldoActual()- saldo);
            System.out.println("Tu saldo actual es de $"+ cliente1.getSaldoActual());
        } else {
            System.out.println("Tu cuenta quedo en cero y retiraste $"+ cliente1.getSaldoActual());
        }
    } 
    
    public void extraccionRapida(CuentaBancaria cliente1, double saldo){
        double porcent20 = (ctaBancaria.getSaldoActual() * 20) / 100;

        if (porcent20 >= saldo){
            
            System.out.println("Retiraste el monto de $"+ saldo +" siendo el 20% del saldo total");
            cliente1.saldoActual(cliente1.getSaldoActual()- saldo);
        } else {
            System.out.println("No puedes retirar más del 20% de tu saldo actual");
            System.out.println("Tu saldo es de: "+ ctaBancaria.getSaldoActual());
        }
    }
    
    public void consultarSaldo(){
        System.out.println("El saldo disponible es de $"+ ctaBancaria.getSaldoActual());
    }
    
    public void consultarDatos(){
        
        System.out.println("El número de cuenta es "+ ctaBancaria.numCuenta);
        System.out.println("El DNI del titular es "+ ctaBancaria.getDNI());
        System.out.println("El saldo disponible es de $"+ ctaBancaria.getSaldoActual());        
    }
    
    public int consultarRetiro(){
        System.out.println("========================");
        System.out.println("¿Desea continuar en el sistema? (1 - Si / 2 - No)");
        String input = leer.next();
        if (input.equalsIgnoreCase("si") || input.equalsIgnoreCase("1")){
        } else {
            return 7;
        }
        return 0;
    }
    
}
