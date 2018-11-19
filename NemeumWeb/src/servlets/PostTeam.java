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
import beans.Team;
import queries.Queries;

@WebServlet("/sPostTeam")
public class PostTeam extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public PostTeam() {
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
		Team team = new Team();
		Queries c = new Queries();
		
		team.setIdSport(c.getIdSportByName(request.getParameter("sport")).get(0).getIdSport());
		team.setName(request.getParameter("name"));
		
		List<IndividualUser> listUsers = new ArrayList<IndividualUser>();
		
		String[] listNames = request.getParameterValues("member");
		for(int i=0; i<listNames.length; i++) {
			listUsers.add(c.getIdIndividualByName(listNames[i]).get(0));
		}
		c.createTeam(team, listUsers);
		
		ServletContext context = getServletContext();
		RequestDispatcher df = context.getRequestDispatcher("/Teams.jsp");
		try {
			df.forward(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
