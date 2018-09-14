
<%@page import="clases.Utilidadneta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
Utilidadneta[] datos=Utilidadneta.getDatosEnObjetos();
             String anio=""; 
             String utilidad="";
             String nacta="";
             String archivo="";
                //for (int i = 0; i < datos.length; i++) {
                  Utilidadneta utilidadneta=datos[0];
                  anio=utilidadneta.getAnio();
                  utilidad=utilidadneta.getUtilidad();
                  nacta = utilidadneta.getNumeroacta(); 
                  archivo = utilidadneta.getArchivo();
                // }

    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Utilidad Neta Anual</h1>
        <form method="post" action="updateUtilidad.jsp">
        <table border="1">
             <tr>
                    <td>Año</td>
                    <td><input type="text" value="<%=anio%>" name="anio"></td>
                </tr>
                <tr>
                    <td>Utilidad</td>
                    <td><input type="text" value="<%=utilidad%>" name="utilidad"></td>
                </tr>
                 <tr>
                    <td>No. Acta</td>
                    <td><input type="text" value="<%=nacta%>" name="nacta"></td>
                </tr>
                <tr>
                    <td>Archivo</td>
                    <td><input type="file" value="<%=archivo%>" name="archivo"></td>
                </tr>
                <tr>
                    
                    <td><input type="submit" value="Actualizar"</td>
                </tr>
                
                           
        </table>
                </form>
    </body>
</html>

