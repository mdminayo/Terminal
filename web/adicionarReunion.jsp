

<%@page import="clases.Reunion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Reunion reunion= new Reunion();
    
    reunion.setFecha(request.getParameter("fecha"));
    reunion.setHora(request.getParameter("hora"));
    reunion.setLugar(request.getParameter("lugar"));
    reunion.setObjetivo(request.getParameter("motivo"));
     reunion.grabar();

     response.sendRedirect("principal.jsp?CONTENIDO=reuniones.jsp");
%>

