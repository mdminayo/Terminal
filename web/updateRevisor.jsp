

<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    

Usuario usuario=new Usuario();
usuario.setUsuario(request.getParameter("usuario"));
usuario.setClave(request.getParameter("clave"));

usuario.actualizarRev();

//response.sendRedirect("principal.jsp?CONTENIDO=principal.jsp");
    

%>
<a href="principal.jsp">Ir al Inicio</a>