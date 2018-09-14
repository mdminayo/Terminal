

<%@page import="clases.Formato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Formato formato= new Formato();
    
    formato.setNombre(request.getParameter("nombre"));
    formato.setDescripcion(request.getParameter("descripcion"));
    formato.setArchivo(request.getParameter("archivo"));
    
     formato.grabar();

response.sendRedirect("principal.jsp?CONTENIDO=formatos.jsp");
%>
