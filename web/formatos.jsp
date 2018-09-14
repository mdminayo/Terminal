

<%@page import="clases.Formato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     Formato[] datos= Formato.getDatosEnObjetos();
    String lista="";
    
    for (int i = 0; i < datos.length; i++) {
            Formato formato=datos[i];
            
            lista+="<tr>";
                lista+="<td>"+formato.getNombre()+"</td>";
                lista+="<td>"+formato.getDescripcion()+"</td>";
                lista+="<td>"+formato.getArchivo()+"</td>";
               
                
            lista+="</tr>";
            
        }

    %>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Formatos</h1>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>Archivo</th>
               
               
                <th><a href="principal.jsp?CONTENIDO=frmFormato.jsp">Adicionar</a></th>
            </tr>
            <%=lista%>
        </table>
        
    </body>
</html>
