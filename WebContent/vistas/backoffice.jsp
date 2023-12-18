<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="misClases.Ticket"%>
<%@page import="misClases.TicketDAO"%>
<%@ page import="java.util.List" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="./css/style.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


<title>Back Office</title>
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
            <div class="container">
                <a class="navbar-brand" href="FrontController?accion=conferencia">
                <img src="img/codoacodo.png" alt="" width="50" height="35" class="d-inline-block align-text-top">
                        
                Conf Bs As</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="MenuPrincipal">
                    <ul class="navbar-nav mx-auto">
                		 <li class="nav-item">
                            <a class="nav-link" aria-current="page" href=#>La conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href=#>Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href=#>El lugar y la fecha</a>
                        <li class="nav-item">
                            <a class="nav-link" href=#>Conviertete en orador</a>
                        </li>
                               <li class="nav-item">
                            <a class="nav-link" href="FrontController?accion=tickets" tabindex="-1" aria-disabled="true" id="LinkTickets">Comprar tickets</a>
                        </li>
             			<li class="nav-item">
                            <a class="nav-link text-warning" href="FrontController?accion=backoffice" tabindex="-1" aria-disabled="true" id="LinkBackOffice">BackOffice</a>
                        </li>
                           </ul>
                </div>
            </div>
        </nav>

	<div class="Container">
		
		<h1 class="text-primary">Tickets Vendidos </h1>
		
		<div class="row">
		
			<table class="table table-striped">
			
				<thead>
					<th>Id Venta</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Mail</th>
					<th>Cantidad</th>
					<th>Tipo</th>
					<th>Total</th>
					<th>Eliminar</th>
				</thead>
				<% 
				List<Ticket>resultado=null;
				TicketDAO ticket=new TicketDAO();
				resultado=ticket.listarTicket();
				int totalFacturado=0;
				
				for (int x=0;x<resultado.size();x++){
					
					String rutaE="FrontController?accion=eliminar&id="+resultado.get(x).getId();
					String tipoTicketTexto;
					if(resultado.get(x).getTipoTicket()==0){
						tipoTicketTexto="Estudiante";
					}
					else if(resultado.get(x).getTipoTicket()==1){
							tipoTicketTexto="Trainee";
					}
					else {
						tipoTicketTexto="Junior";
					}
				
				%>
				<tbody>
				<tr>
					<td><%=resultado.get(x).getId()%></td>
					<td><%=resultado.get(x).getNombre()%></td>
					<td><%=resultado.get(x).getApellido()%></td>
					<td><%=resultado.get(x).getMail()%></td>
					<td><%=resultado.get(x).getCant()%></td>
					<td><%=tipoTicketTexto%></td>
					<td><%=resultado.get(x).getTotalFacturado()%></td>
					<td ><a class="btn btn-danger" href=<%=rutaE%>>Eliminar</a></td>
				</tr>
				
				<%
				totalFacturado+=resultado.get(x).getTotalFacturado();
				} //del for
				%>	
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="text-primary"><%=totalFacturado%></td>
					<td></td>
				</tr>
				</tbody>
				
				
			</table>
			
			<a class="btn btn-success col-2 m-2" href="FrontController?accion=volver">Volver</a>
				
		
		</div>
		
	</div>

</body>
</html>