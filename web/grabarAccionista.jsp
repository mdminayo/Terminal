


<%@page import="clases.Accionista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
Accionista accionista=new Accionista();
accionista.setCedula(request.getParameter("cedula"));
accionista.setNombres(request.getParameter("nombres"));
accionista.setApellidos(request.getParameter("apellidos"));
accionista.setCantidadacciones(request.getParameter("acciones"));
accionista.setTelefono(request.getParameter("telefono"));
accionista.setEmail(request.getParameter("email"));
accionista.setNumerofolio(request.getParameter("folio"));
accionista.setUsuario(request.getParameter("usuario"));
accionista.setClave(request.getParameter("clave"));

accionista.grabar();

response.sendRedirect("principal.jsp?CONTENIDO=accionistas.jsp");
    

%>
