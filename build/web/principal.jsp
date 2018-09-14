

<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <% 
          
      HttpSession sesion=request.getSession();
            Usuario user=new Usuario(sesion.getAttribute("usuario").toString());
            out.println(" Bienvenido "+sesion.getAttribute("usuario"));
           
          
   %>
   <html>
       <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="lib/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="lib/amcharts/serial.js" type="text/javascript"></script>
        <script src="lib/amcharts/pie.js" type="text/javascript"></script>
        <script src="lib/funciones.js" type="text/javascript"></script>
        <script type="text/javascript" src="lib/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="lib/jspdf.js"></script>
        <script type="text/javascript" src="lib/pdfFromHTML.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="banner">
            <h1>Acciones</h1>
            
        </div>
        <%
             String user1 = sesion.getAttribute("usuario").toString();
             Usuario[] datos=Usuario.getDatosEnObjetos(user1);
             String perfil="";  
                //for (int i = 0; i < datos.length; i++) {
                  Usuario usuario=datos[0];
                  perfil = usuario.getRol();         
               //  }
             if(perfil.equals("S")){
         %>
        <div class="menu">
            <a href="principal.jsp?CONTENIDO=accionista.jsp">Accionistas</a>
            <a href="principal.jsp?CONTENIDO=actualizarRevisor.jsp">Actualizar Revisor</a>
            <a href="principal.jsp?CONTENIDO=reuniones.jsp">Programar Reunion</a>
            <a href="principal.jsp?CONTENIDO=formatos.jsp">Administrar Formatos</a>
            <a href="principal.jsp?CONTENIDO=utilidadneta.jsp">Actualizar Utilidad Neta Anual</a>
            <a href="index.jsp">Salir</a>
            
        </div>
         <%
             }
             if(perfil.equals("A")){
          %>
           <div class="menu">
            <a href="principal.jsp?CONTENIDO=consultaAcciones.jsp">Consulta Acciones y Dividendos</a>
            <a href="principal.jsp?CONTENIDO=formatosAccionista.jsp">Consulta Formatos</a>            
            <a href="index.jsp">Salir</a>
            
        </div>
         <%
             }
             if(perfil.equals("R")){
          %>
          <div class="menu">
            <a href="principal.jsp?CONTENIDO=certificadoAcciones.jsp">Imprimir Certificados</a>            
            <a href="index.jsp">Salir</a>
            
        </div>
         <%
             }            
          %>
          
        <div class="Contenido"><jsp:include page="<%=request.getParameter("CONTENIDO")%>" flush="true"/></div>
        
          
        
      
    </body>
</html>
