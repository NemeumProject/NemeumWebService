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

import beans.Scenario;
import queries.Queries;

@WebServlet("/sPostScenario")
public class PostScenario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public PostScenario() {
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
		Scenario scenario = new Scenario();
		Queries c = new Queries();
		
		

			scenario.setCapacity(Integer.parseInt((String) request.getParameter("capacity")));
			
			String dateString = request.getParameter("date");
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);
			scenario.setDateScenario(new java.sql.Date(date.getTime()));
			scenario.setAddress(request.getParameter("address"));
			scenario.setCity(request.getParameter("city"));
			scenario.setPrice(Double.parseDouble((String) request.getParameter("price")));
			scenario.setTitle(request.getParameter("title"));
			scenario.setDescription(request.getParameter("description"));
			scenario.setIdSport(c.getIdSportByName(request.getParameter("sport")).get(0).getIdSport());
			scenario.setIdCompanyUser(c.getIdCompanyByName(request.getParameter("company")).get(0).getId_CompanyUser());
			
			
			c.createScenario(scenario);;
			
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/Scenarios.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		
	}

}
