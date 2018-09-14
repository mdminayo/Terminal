

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Adicionar Reuniones!</h1>
        <div>
            <form action="adicionarReunion.jsp" method="post">
                <table border="1">
                    <tr>
                        <td>Fecha</td>
                        <td><input type="date" name="fecha" id="fecha"/></td>
                    </tr>
                    <tr>
                        <td>Hora</td>
                        <td><input type="time" name="hora" id="hora"/></td>
                    </tr>
                     <tr>
                        <td>Lugar</td>
                        <td><input type="text" name="lugar" id="lugar"/></td>
                    </tr>
                    <tr>
                        <td>Motivo</td>
                        <td><input type="text-area" name="motivo" id="lugar"/></td>
                    </tr>
                    
                    <tr>
                        
                        <td><input type="submit"></td>
                    </tr>
                </table>
                
            </form>
        </div>
        
    </body>
</html>

