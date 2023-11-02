/*
Un profesor particular está dando cursos para grupos de cinco alumnos y necesita un 
programa para organizar la información de cada curso. Para ello, crearemos una clase 
entidad llamada Curso, cuyos atributos serán: nombreCurso, cantidadHorasPorDia, 
cantidadDiasPorSemana, turno (mañana o tarde),  precioPorHora y alumnos. 
Donde alumnos es un arreglo de tipo String de dimensión 5 (cinco), donde se 
alojarán los nombres de cada alumno. A continuación, se implementarán los siguientes 
métodos:
Un constructor por defecto.
Un constructor con todos los atributos como parámetro.
Métodos getters y setters de cada atributo.
Método cargarAlumnos(): este método le permitirá al usuario ingresar los alumnos 
que asisten a las clases. Nosotros nos encargaremos de almacenar esta información 
en un arreglo e iterar con un bucle, solicitando en cada repetición que se ingrese 
el nombre de cada alumno.
Método crearCurso(): el método crear curso, le pide los valores de los atributos 
al usuario y después se le asignan a sus respectivos atributos para llenar 
el objeto Curso. En este método invocamos al método cargarAlumnos() para asignarle 
valor al atributo alumnos
Método calcularGananciaSemanal(): este método se encarga de calcular la ganancia
en una semana por curso. Para ello, se deben multiplicar la cantidad de horas por 
día, el precio por hora, la cantidad de alumnos y la cantidad de días a la semana 
que se repite el encuentro.
 */

package curso;

import java.util.Scanner;

public class CursoService {
    
    Curso curso = new Curso();
    Scanner leer = new Scanner(System.in);
    String[] alumno = new String[5];
    
    public void cargarAlumnos(){
        
        for (int i = 0; i < 1; i++) {
            System.out.println("Nombre del almuno: ");
            alumno[i] = leer.next();
            curso.setAlumnos(alumno);
        } 
    }
    
    public Curso crearCurso(){
        Curso c = new Curso();
        System.out.println("Ingresa los nombres de los alumnos ");
        
        for (int i = 0; i < curso.getAlumnos().length; i++) {
            
            cargarAlumnos();

            System.out.println("Nombre del curso: ");
            curso.setNombreCurso(leer.next());
            System.out.println("Turno: ");
            curso.setTurno(leer.next());
            System.out.println("Cantidad de horas por dia: ");
            curso.setCantidadHorasPorDia(leer.nextInt());
            System.out.println("Cantidad de dias semanales: ");
            curso.setCantidadDiasPorSemana(leer.nextInt());
            System.out.println("Ingresa el precio por hora: ");
            curso.setPrecioPorHora(leer.nextInt());          
        }
        return c;
    }
    
    public void mostrarAlumnos(){
        
        for (int i = 0; i < curso.getAlumnos().length; i++) {
            System.out.println(curso.getAlumnos()[i]);
            System.out.println("Materia: "+ curso.getNombreCurso());
            System.out.println("Turno: "+ curso.getTurno());
            System.out.println("Cantidad de horas: "+ curso.getCantidadHorasPorDia());
            System.out.println("Cantidad de dias semanales: "+ curso.getCantidadDiasPorSemana());
            System.out.println("Abona el monto de: "+ curso.getPrecioPorHora());
        }  
    }
    
    public void calcularGananciaSemanal(){
        int gananciaSemanal = 0; 

        for (int i = 0; i < curso.getAlumnos().length; i++) {
            gananciaSemanal += curso.getCantidadDiasPorSemana() * curso.getCantidadHorasPorDia()
                * curso.getPrecioPorHora() * curso.getAlumnos().length;
        }
        
        System.out.println("------------------");
        System.out.println("Tu ganancia semanal es de $"+ gananciaSemanal);
    }

}
