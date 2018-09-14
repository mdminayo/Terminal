

<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
Usuario[] datos=Usuario.getDatosEnObjetos1();
             String perfil=""; 
             String revisor="";
             String clave="";
                //for (int i = 0; i < datos.length; i++) {
                  Usuario usuario=datos[0];
                   revisor=usuario.getUsuario();
                  clave=usuario.getClave();
                  perfil = usuario.getRol();         
                // }

    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Usuario Revisor fiscal!</h1>
        <form method="post" action="updateRevisor.jsp">
        <table border="1">
             <tr>
                    <td>Usuario</td>
                    <td><input type="text" value="<%=revisor%>" name="usuario"></td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td><input type="password" value="<%=clave%>" name="clave"></td>
                </tr>
                <tr>
                    
                    <td><input type="submit" value="Actualizar"</td>
                </tr>
                
                           
        </table>
                </form>
    </body>
</html>
