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
public class Utilidadneta {
    
    public String anio;
    public String utilidad;
    public String numeroacta;
    public String archivo;

    public Utilidadneta() {
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public String getUtilidad() {
        return utilidad;
    }

    public void setUtilidad(String utilidad) {
        this.utilidad = utilidad;
    }

    public String getNumeroacta() {
        return numeroacta;
    }

    public void setNumeroacta(String numeroacta) {
        this.numeroacta = numeroacta;
    }

    public String getArchivo() {
        return archivo;
    }

    public void setArchivo(String archivo) {
        this.archivo = archivo;
    }
    
    public void actulizarUtilidad(){
        
        String cadenaSQL="update utilidadneta set anio='"+this.anio+"', utilidad='"+this.utilidad+"',"
                + "numeroacta='"+this.numeroacta+"', archivo='"+this.archivo+"' ";
        
        ConectorBD.actualizarDatos(cadenaSQL);
    }
    
    public static String [][] getDatos(){
        String cadenaSQL="select * from utilidadneta";
        String datos[][]=ConectorBD.getDatos(cadenaSQL);
        return datos;
    
     }
     
       public static Utilidadneta[] getDatosEnObjetos(){
        
        String [][] datos=Utilidadneta.getDatos();
        Utilidadneta[] utilidades=new Utilidadneta[datos.length];
        for (int i = 0; i < datos.length; i++) {
           
            Utilidadneta utilidad= new Utilidadneta();
            
            utilidad.setAnio(datos[i][0]);
            utilidad.setUtilidad(datos[i][1]);
            utilidad.setNumeroacta(datos[i][2]);
            utilidad.setArchivo(datos[i][3]);
            utilidades[i]=utilidad;
        }
        return utilidades;
        
    }
    
}
