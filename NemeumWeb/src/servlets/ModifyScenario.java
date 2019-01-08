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

import beans.IndividualUser;
import beans.Scenario;
import queries.Queries;

@WebServlet("/sModifyScenario")
public class ModifyScenario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	public ModifyScenario() {
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
		Scenario scenario = new Scenario();
		Queries c = new Queries();
		
		String regex = "[0-9]+";
		
		if(request.getParameter("price").matches(regex) && request.getParameter("capacity").matches(regex)) {
		
			int idScenario = Integer.parseInt((String) session.getAttribute("idScenario"));
			scenario.setIdScenario(idScenario);
			scenario.setAddress(request.getParameter("address"));
			scenario.setCity(request.getParameter("city"));
			scenario.setCapacity(Integer.parseInt((String) request.getParameter("capacity")));
			scenario.setTitle(request.getParameter("title"));
			scenario.setDescription(request.getParameter("description"));
			String dateString = request.getParameter("date");
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);
			scenario.setDateScenario(new java.sql.Date(date.getTime()));
	
			scenario.setPrice(Double.parseDouble((String) request.getParameter("price")));
			
			scenario.setIdSport(c.getIdSportByName(request.getParameter("sport")).get(0).getIdSport());
			scenario.setIdCompanyUser(c.getIdCompanyByName(request.getParameter("company")).get(0).getId_CompanyUser());
			
			c.updateScenario(scenario.getIdScenario(), scenario);
			
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/Scenarios.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			request.setAttribute("errorMessage", "Invalid numeric data");
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/Scenarios.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
        
	}
}
