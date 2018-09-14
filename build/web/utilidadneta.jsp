



<%@page import="clases.Utilidadneta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     Utilidadneta[] datos= Utilidadneta.getDatosEnObjetos();
    String lista="";
    
    for (int i = 0; i < datos.length; i++) {
            Utilidadneta utilidad=datos[i];
            
            lista+="<tr>";
                lista+="<td>"+utilidad.getAnio()+"</td>";
                lista+="<td>"+utilidad.getUtilidad()+"</td>";
                lista+="<td>"+utilidad.getNumeroacta()+"</td>";
                lista+="<td>"+utilidad.getArchivo()+"</td>";
               
                
            lista+="</tr>";
            
        }

    %>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Utilidadnetas</h1>
        <table border="1">
            <tr>
                <th>Año</th>
                <th>Utilidad</th>
                <th>Numero de acta</th>
                <th>Archivo</th>
               
               
                <th><a href="principal.jsp?CONTENIDO=frmUtilidadneta.jsp">Adicionar</a></th>
            </tr>
            <%=lista%>
        </table>
        
    </body>
</html>
