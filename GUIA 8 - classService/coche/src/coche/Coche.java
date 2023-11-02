/*
Crea una clase "Coche" con las propiedades "marca", "modelo" y "precio".
Crea clase de servicio con los métodos "ingresarCoche" y "mostrarCoche".
 */

package coche;

public class Coche {
    private String marca, modelo;
    private double precio;

    public Coche(String marca, String modelo, double precio) {
        this.marca = marca;
        this.modelo = modelo;
        this.precio = precio;
    }

    public Coche() {
    }

    public String getMarca() {
        return marca;
    }

    public String getModelo() {
        return modelo;
    }

    public double getPrecio() {
        return precio;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

}
