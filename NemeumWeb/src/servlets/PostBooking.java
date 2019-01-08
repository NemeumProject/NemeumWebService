package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.IndividualUser;
import beans.Scenario;
import beans.Scenario_IndividualUser;
import beans.Team;
import queries.Queries;

@WebServlet("/sPostBooking")
public class PostBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public PostBooking() {
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
		Scenario_IndividualUser indScenario = new Scenario_IndividualUser();
		Queries c = new Queries();
		
		String regex = "[0-9]+";
		if(request.getParameter("phone").matches(regex)) {
		
			indScenario.setPhone(Integer.parseInt(request.getParameter("phone")));
			indScenario.setCustomerName(request.getParameter("customer_name"));
			indScenario.setEmail(request.getParameter("email"));
			String dateString = request.getParameter("date");
			String start_time = request.getParameter("start_time");
			String end_time = request.getParameter("end_time");
			String startBooking = dateString + " " + start_time + ":00";
			String endBooking = dateString + " " + end_time + ":00";
			Date dateStart = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(startBooking);
			indScenario.setStartBooking(dateStart);
			Date dateEnd = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(endBooking);
			indScenario.setEndBooking(dateEnd);
			String title = request.getParameter("title");
			indScenario.setId_Scenario(c.getScenarioByTile(request.getParameter("scenario")).get(0).getIdScenario());
			
			String dateBooking =  new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date());
			Date actualBooking = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(dateBooking);
			indScenario.setDateBooking(actualBooking);
			
			c.createBooking(indScenario);
			
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/MainPage.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			request.setAttribute("errorMessage", "Invalid numeric data");
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/PostBooking.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
