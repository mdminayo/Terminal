

<%@page import="clases.Accionista"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Accionista[] datos=Accionista.getDatosEnObjetos(null);
    String lista="";
    for (int i = 0; i < datos.length; i++) {
        Accionista accionista=datos[i];
        lista+="<tr>";
         lista+="<td>"+accionista.getCedula()+"</td>";
         lista+="<td>"+accionista.getNombres()+"</td>";
         lista+="<td>"+accionista.getApellidos()+"</td>";
         lista+="<td>"+accionista.getCantidadacciones()+"</td>";
         lista+="<td>"+accionista.getTelefono()+"</td>";
         lista+="<td>"+accionista.getEmail()+"</td>";
         lista+="<td>"+accionista.getNumerofolio()+"</td>";
         lista+="<td>"+accionista.getUsuario()+"</td>";
                    
        lista+="</tr>";
            
        }
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Accionista!</h1>
        <table border="1">
            <tr>
                <th>Cedula</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Cantidad de acciones</th>
                <th>Telefono</th>
                <th>Email</th>
                <th>Numero de Folio</th>
                <th>Usuario</th>
                <th><a href="principal.jsp?CONTENIDO=adicionarAccionista.jsp">Adicionar</a></th>
            </tr>
            <%=lista%>
        </table>
        
    </body>
</html>
