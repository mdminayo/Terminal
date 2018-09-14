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
public class Reunion {
    
public String id;
public String fecha;
public String hora;
public String lugar;
public String objetivo;

    public Reunion() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public String getObjetivo() {
        return objetivo;
    }

    public void setObjetivo(String objetivo) {
        this.objetivo = objetivo;
    }

    public void grabar(){
        
        String cadenaSQL="insert into reunion (fecha,hora,lugar,objetivo)"
                + "values ('"+this.fecha+"','"+this.hora+"','"+this.lugar+"','"+this.objetivo+"')";
        ConectorBD.actualizarDatos(cadenaSQL);
    }
    
    public static String [][] getDatos(){
        String cadenaSQL="select * from reunion";
        String datos[][]=ConectorBD.getDatos(cadenaSQL);
        return datos;
        
    }
    
    public static Reunion[] getDatosEnObjetos(){
        
        String [][] datos=Reunion.getDatos();
        Reunion[] reuniones=new Reunion[datos.length];
        for (int i = 0; i < datos.length; i++) {
           
            Reunion reunion= new Reunion();
            
            reunion.setId(datos[i][0]);
            reunion.setFecha(datos[i][1]);
            reunion.setHora(datos[i][2]);
            reunion.setLugar(datos[i][3]);
            reunion.setObjetivo(datos[i][4]);
            reuniones[i]=reunion;
        }
        return reuniones;
        
    }
            
            
    
    
}
