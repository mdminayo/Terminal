

<%@page import="clases.Reunion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Reunion[] datos= Reunion.getDatosEnObjetos();
    String lista="";
    
    for (int i = 0; i < datos.length; i++) {
            Reunion reunion=datos[i];
            
            lista+="<tr>";
                lista+="<td>"+reunion.getFecha()+"</td>";
                lista+="<td>"+reunion.getHora()+"</td>";
                lista+="<td>"+reunion.getLugar()+"</td>";
                lista+="<td>"+reunion.getObjetivo()+"</td>";
                
            lista+="</tr>";
            
        }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Reuniones</h1>
        <table border="1">
            <tr>
                <th>Fecha</th>
                <th>Hora</th>
                <th>Lugar</th>
                <th>Objetivo</th>
               
                <th><a href="principal.jsp?CONTENIDO=reunionAdd.jsp">Adicionar</a></th>
            </tr>
            <%=lista%>
        </table>
        
    </body>
</html>

