/*
Crear una clase Rectángulo que modele rectángulos por medio de un atributo privado 
base y un atributo privado altura. La clase incluirá un método para crear el rectángulo 
con los datos del Rectángulo dados por el usuario. También incluirá un método para calcular 
la superficie del rectángulo y un método para calcular el perímetro del rectángulo. Por último, 
tendremos un método que dibujará el rectángulo mediante asteriscos usando la base y la altura. 
Se deberán además definir los métodos getters, setters y constructores correspondientes.
Superficie = base * altura / Perímetro = (base + altura) * 2
 */
package rectangulo;

public class Rectangulo {
    private int base, altura;

    public Rectangulo(int base, int altura) {
        this.base = base;
        this.altura = altura;
    }

    public Rectangulo() {
    }

    public void setBase(int base) {
        this.base = base;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }

    public int getBase() {
        return base;
    }

    public int getAltura() {
        return altura;
    }
    
    public int superficie(){
        int superficie = base * altura;
        
        return superficie;
    }
    
    public int perimetrio(){
        int perimetro = (base + altura) * 2;
        
        return perimetro;
    }
    
    public void dibujarRectangulo(){
        
        for (int i = 1; i <= altura; i++) {
            for (int j = 1; j <= base; j++) {
                if (i == altura || j == base || i == 1 || j == 1){
                System.out.print(" * ");
                } else
                System.out.print("   ");
            } 
            System.out.println("");
        }
        
    }
        
    
}
