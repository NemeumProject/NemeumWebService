package servlets;

import java.io.IOException;
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

import beans.Event;
import beans.Scenario;
import queries.Queries;


@WebServlet("/sPostEvent")
public class PostEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public PostEvent() {
        super();
    }
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doFer(request, response);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doFer(request, response);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	private void doFer(HttpServletRequest request, HttpServletResponse response) throws ServletException, ParseException {
		
		HttpSession session;
		Event event = new Event();
		Queries c = new Queries();
		
		String regex = "[0-9]+";
		
		if(request.getParameter("price").matches(regex) && request.getParameter("phone").matches(regex) && request.getParameter("capacity").matches(regex)) {
		
			event.setCapacity(Integer.parseInt((String) request.getParameter("capacity")));
			event.setPhone(Integer.parseInt((String) request.getParameter("phone")));
			String dateString = request.getParameter("date");
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);
			event.setDateEvent(new java.sql.Date(date.getTime()));
	
			event.setPrice(Double.parseDouble((String) request.getParameter("price")));
			
			event.setIdSport(c.getIdSportByName(request.getParameter("sport")).get(0).getIdSport());
			event.setTitle(request.getParameter("title"));
			event.setDescription(request.getParameter("description"));
			event.setAddress(request.getParameter("address"));
			event.setPostalCode(request.getParameter("postal_code"));
			event.setCity(request.getParameter("city"));
			
			if(request.getParameter("isIndoor").equals("0")) {
				event.setIsIndoor(false);
			}else {
				event.setIsIndoor(true);
			}
			
			
			c.createEvent(event);
			
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/Events.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			request.setAttribute("errorMessage", "Invalid numeric data");
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/Post-Event");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
