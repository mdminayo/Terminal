/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author SENA
 */
public class Formato {
    
    public String id;
    public String nombre;
    public String descripcion;
    public String archivo;

    public Formato() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getArchivo() {
        return archivo;
    }

    public void setArchivo(String archivo) {
        this.archivo = archivo;
    }
    
    public void grabar(){
        
        String cadenaSQL="insert into formato(nombre,descripcion,archivo) values"
                + "('"+this.nombre+"','"+this.descripcion+"','"+this.archivo+"')";
        ConectorBD.actualizarDatos(cadenaSQL);
    }
    
     public static String [][] getDatos(){
        String cadenaSQL="select * from formato";
        String datos[][]=ConectorBD.getDatos(cadenaSQL);
        return datos;
    
     }
     
       public static Formato[] getDatosEnObjetos(){
        
        String [][] datos=Formato.getDatos();
        Formato[] formatos=new Formato[datos.length];
        for (int i = 0; i < datos.length; i++) {
           
            Formato formato= new Formato();
            
            formato.setId(datos[i][0]);
            formato.setNombre(datos[i][1]);
            formato.setDescripcion(datos[i][2]);
            formato.setArchivo(datos[i][3]);
            formatos[i]=formato;
        }
        return formatos;
        
    }
}
