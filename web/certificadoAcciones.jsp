

<%@page import="clases.Accionista"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String vinculos="";
    if(request.getParameter("tipo")!=null){
        if (!request.getParameter("tipo").equals("pdf")) {
            
            String tipo=request.getParameter("tipo");
            String extension="xls";
           
                response.setContentType("application/vnd.ms-"+tipo);
                response.setHeader("Content-Disposition","inline;filename=reporte."+extension);
            }
        
    
    }else{
        //vinculos="<a href='certificadoAcciones.jsp?tipo=excel'>Exportar a excel </a>";
        vinculos+="<a href='#' onClick='convertir()'>  PDF</a>";
    }
    
    
    Accionista[] datos=Accionista.getDatosEnObjetos(null);
    String lista="";
    for (int i = 0; i < datos.length; i++) {
        Accionista accionista=datos[i];
        lista+="<tr>";
         lista+="<td>"+accionista.getCedula()+"</td>";
         lista+="<td>"+accionista.getNombres()+"</td>";
         lista+="<td>"+accionista.getApellidos()+"</td>";
         lista+="<td>"+accionista.getCantidadacciones()+"</td>";
         lista+="<td>"+accionista.getTelefono()+"</td>";
         lista+="<td>"+accionista.getEmail()+"</td>";
         lista+="<td>"+accionista.getNumerofolio()+"</td>";
         lista+="<td>"+accionista.getUsuario()+"</td>";
                    
        lista+="</tr>";
            
        }
    
%>


    
       
        <script type="text/javascript" src="/lib/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="/lib/jspdf.js"></script>
        <center>
        <div id="HTMLtoPDF">
        <h1>Relacion de Accionistas</h1>
        <div id="vinculos"> <%= vinculos %> </div>
        <table border ="1">
            <tr>
                <th>Cedula</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Cantidad de acciones</th>
                <th>Telefono</th>
                <th>Email</th>
                <th>Numero de Folio</th>
                <th>Usuario</th>
            </tr>
            <%=lista%>
            
        </table>
  
        </div>
        </center>

    <script type="text/javascript">
            
            function convertir(){
                document.getElementById("vinculos").innerHTML="";
                HTMLtoPDF();
                document.getElementById("vinculos").innerHTML="<%= vinculos %>";
            }
            
         
        </script>