
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Adicionar Formatos!</h1>
        <div>
            <form action="grabarFormato.jsp" method="post">
                <table border="1">
                    
                     <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="nombre" id="lugar"/></td>
                    </tr>
                    <tr>
                        <td>Descripcion</td>
                        <td><input type="text-area" name="descripcion" id="lugar"  /></td>
                    </tr>
                    <tr>
                        <td>Archivo</td>
                        <td><input type="file" name="archivo" id="lugar"/></td>
                    </tr>
                    
                    
                    <tr>
                        
                        <td><input type="submit"></td>
                    </tr>
                </table>
                
            </form>
        </div>
        
    </body>
</html>