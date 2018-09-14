/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import static java.lang.System.out;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author SENA
 */
public class Accionista {
    
    public String cedula;
    public String nombres;
    public String apellidos;
    public String cantidadacciones;
    public String telefono;
    public String email;
    public String numerofolio;
    public String usuario;
    public String clave;
    public String perfil;

    public Accionista() {
    }

    public Accionista(String usuario) {
        String cadenaSQL="select nombre from accionista where usuario ="+usuario;
        ConectorBD conector = new ConectorBD();
        conector.conectar();
        try {
            PreparedStatement sentencia=conector.conexion.prepareStatement(cadenaSQL);
            ResultSet resultado = sentencia.executeQuery();
            if(resultado.next()){
                this.usuario=usuario;
                this.nombres=resultado.getString("nombres");
                
            }
            
        } catch (Exception e) {
            out.println("error al ejecutar "+cadenaSQL+" "+e.getMessage());
        }
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCantidadacciones() {
        return cantidadacciones;
    }

    public void setCantidadacciones(String cantidadacciones) {
        this.cantidadacciones = cantidadacciones;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumerofolio() {
        return numerofolio;
    }

    public void setNumerofolio(String numerofolio) {
        this.numerofolio = numerofolio;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
    

 
    
    public void grabar(){
        String cadenaSQL=" insert into accionista (cedula, nombres, apellidos, cantidadacciones,telefono,email,numerofolio,usuario) "
        + "values ('"+this.cedula+"','"+this.nombres+"','"+this.apellidos+"',"+this.cantidadacciones+",'"+this.telefono+"','"+this.email+"','"+this.numerofolio+"','"+this.usuario+"')";
        ConectorBD.actualizarDatos(cadenaSQL);
        String cadenaSQL2="insert into usuario (usuario,clave,perfil) values('"+this.usuario+"','"+this.clave+"','A')";
        ConectorBD.actualizarDatos(cadenaSQL2);
    }
    
    public static String [][] getDatos(String filtro){
        
        String cadenaSQL="select * from accionista";
        if(filtro!=null) cadenaSQL+=" where "+filtro;
        String datos[][]=ConectorBD.getDatos(cadenaSQL);
               
        return datos;
    }
    
    public static Accionista[] getDatosEnObjetos(String filtro){
        
        String [][] datos=Accionista.getDatos(filtro);
        Accionista[] accionistas=new Accionista[datos.length];
        for (int i = 0; i < datos.length; i++) {
            Accionista accionista = new Accionista();
            accionista.setCedula(datos[i][0]);
            accionista.setNombres(datos[i][1]);
            accionista.setApellidos(datos[i][2]);
            accionista.setCantidadacciones(datos[i][3]);
            accionista.setTelefono(datos[i][4]);
            accionista.setEmail(datos[i][5]);
            accionista.setNumerofolio(datos[i][6]);
            accionista.setUsuario(datos[i][7]);
            accionistas[i]=accionista;
            
        }
        return accionistas;
    }
    
    
    
    
    
}
