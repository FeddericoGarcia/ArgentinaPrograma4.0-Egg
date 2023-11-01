/*
Definir una clase llamada Puntos que contendrá las coordenadas de dos puntos, 
sus atributos serán, x1, y1, x2, y2, siendo cada x e y un punto. 

Generar un objeto puntos usando un método crearPuntos() que le pide al usuario 
los dos números y los ingresa en los atributos del objeto. Después, a través de 
otro método calcular y devolver la distancia que existe entre los dos puntos que 
existen en la clase Puntos. Para conocer como calcular la distancia entre dos puntos 
consulte el siguiente link:
http://www.matematicatuya.com/GRAFICAecuaciones/S1a.html

 */
package puntos;

import java.util.Scanner;

public class Puntos {
    public double x1, x2, y1, y2;
    
    public Puntos(){
        
    }
    
    public Puntos (int x1, int y1){
        this.x1 = x1;
        this.y1 = y1;
    }
    
    public void setX1(int x1){
        this.x1 = x1;
    }
    public void setY1(int y1){
        this.y1 = y1;
    }
    public void setX2(int x2){
        this.x2 = x2;
    }
    public void setY2(int y2){
        this.y2 = y2;
    }
    public double getX1(){
        return x1;
    }
    public double getY1(){
        return y1;
    }
    public double getX2(){
        return x2;
    }
    public double getY2(){
        return y2;
    }
    
    public void crearPuntos(){
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa lac coordenadas del primer punto (X / Y)");
        x1 = leer.nextInt();
        y1 = leer.nextInt();
        
        System.out.println("Ingresa lac coordenadas del segundo punto (X / Y)");
        x2 = leer.nextInt();
        y2 = leer.nextInt();
        
    }
        
    public void calcular(){
        
         double resutlado = Math.sqrt(Math.pow(x1 - x2, 2) + Math.pow(y1 - y2, 2));
         
         System.out.println("La distancia entre punto 1 y punto 2 es de: "+ resutlado);
    }
    
}
