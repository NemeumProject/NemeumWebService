package servlets;

import java.io.IOException;
import java.rmi.RemoteException;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.rpc.ServiceException;

import beans.Event;
import beans.Scenario;
import queries.Queries;

@WebServlet("/sModifyEvent")
public class ModifyEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	public ModifyEvent() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			try {
				doFer(request, response);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	private void doFer(HttpServletRequest request, HttpServletResponse response) throws ServiceException, RemoteException, ServletException, ParseException {
		// TODO Auto-generated method stub
		
		HttpSession session = null;
		session = request.getSession(true);
		Event event = new Event();
		Queries c = new Queries();
		
		
		
			int idEvent = Integer.parseInt((String) session.getAttribute("idEvent"));
			event.setIdEvent(idEvent);
			
			event.setCapacity(Integer.parseInt((String) request.getParameter("capacity")));
			event.setPhone(Integer.parseInt((String) request.getParameter("phone")));
			String dateString = request.getParameter("date");
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);
			event.setDateEvent(new java.sql.Date(date.getTime()));
	
			event.setPrice(Double.parseDouble((String) request.getParameter("price")));
			event.setTitle(request.getParameter("title"));
			event.setDescription(request.getParameter("description"));
			event.setIdSport(c.getIdSportByName(request.getParameter("sport")).get(0).getIdSport());
			
			event.setAddress(request.getParameter("address"));
			event.setPostalCode(request.getParameter("postal_code"));
			event.setCity(request.getParameter("city"));
			
			if(request.getParameter("isIndoor").equals("0")) {
				event.setIsIndoor(false);
			}else {
				event.setIsIndoor(true);
			}
			
			c.updateEvent(event);
			
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/Events.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
        
	}

}
