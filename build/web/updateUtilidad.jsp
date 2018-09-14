
<%@page import="clases.Utilidadneta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    

Utilidadneta utilidadneta=new Utilidadneta();
utilidadneta.setAnio(request.getParameter("anio"));
utilidadneta.setUtilidad(request.getParameter("utilidad"));
utilidadneta.setNumeroacta(request.getParameter("nacta"));
utilidadneta.setArchivo(request.getParameter("archivo"));

utilidadneta.actulizarUtilidad();


//response.sendRedirect("principal.jsp?CONTENIDO=principal.jsp");
    

%>
<a href="principal.jsp">Ir al Inicio</a>