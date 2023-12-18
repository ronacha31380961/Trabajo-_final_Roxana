package misClases;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FrontController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String accion = null;
		TicketDAO ticketDAO=null;
		
		try {
			
			ticketDAO = new TicketDAO();
			
			
		}
		
		catch(ClassNotFoundException e) {
			
			System.out.println(e);
		}
		
		RequestDispatcher dispatcher = null;
		accion = request.getParameter("accion");
		
		
		if(accion==null || accion.isEmpty()) {
			
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		else {
			
			switch (accion) {
				
				case "conferencia":
					
					dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
					
				break;
					
				case "tickets":
					
					dispatcher = request.getRequestDispatcher("vistas/tickets.jsp");
					break;
						
				case "backoffice":
					
					dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
					
				break;
				
				case "eliminar": {
					
					int id=Integer.parseInt(request.getParameter("id"));
					ticketDAO.eliminarTicket(id);
					dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
						
				}
				break;
				
				case "volver":
					
					dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
					
				break;
				
				case "comprar": {
					
					String nombre=request.getParameter("nombre");
					String apellido=request.getParameter("apellido");
					String mail=request.getParameter("mail");
					int cant=Integer.parseInt(request.getParameter("cant"));
					int opcionSeleccionada=Integer.parseInt(request.getParameter("categoria"));	
					
					float descuento = 0; 
					float valorTicket = 250;
					
					switch(opcionSeleccionada) {
					
					case 0:
						descuento = (float) 0.6;
					break;
					
					case 1:
						descuento = (float) 0.3;
					break;
						
					case 2:
						descuento = (float) 0.1;
					break;
					
					}
					
					float descuentoTotal = valorTicket * descuento;
					float totalAPagar = cant*(valorTicket - descuentoTotal);
					//float total=500;
					Ticket ticket = new Ticket(0, nombre, apellido, mail, cant, opcionSeleccionada, totalAPagar);
					
					ticketDAO.insertarTicket(ticket);
					
					dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
					
					break;
					
					
				}
					
					
			
			
			}
			
		} 
			
		
		dispatcher.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
