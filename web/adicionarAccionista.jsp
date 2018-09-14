

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Adicionar Equipo!</h1>
        
        <form method="post" action="grabarAccionista.jsp" >
            <table>
                <tr>
                    <td>Cedula</td>
                    <td><input type="text" name="cedula"></td>
                   
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="nombres"></td>
                   
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos"></td>
                   
                </tr>
                <tr>
                    <td>Cantidad de acciones</td>
                    <td><input type="number" name="acciones"></td>
                   
                </tr>
                <tr>
                    <td>Telefono</td>
                    <td><input type="number" name="telefono"></td>
                   
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email"></td>
                   
                </tr>
                <tr>
                    <td>Nª de folio</td>
                    <td><input type="number" name="folio"></td>
                   
                </tr>
                <tr>
                    <td>Usuario</td>
                    <td><input type="text" name="usuario"></td>
                   
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td><input type="password" name="clave"></td>
                   
                </tr>
                
                <td><input type="submit"></td>
                
            </table>
                
            
        </form>
    </body>
</html>
