package servlets;

import java.io.IOException;
import java.rmi.RemoteException;
import java.sql.Connection;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

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
import beans.Team;
import queries.Queries;

@WebServlet("/sModifyTeam")
public class ModifyTeam extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	public ModifyTeam() {
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
		Team team = new Team();
		Queries c = new Queries();
		
		int idTeam = Integer.parseInt((String) session.getAttribute("idTeam"));
		team.setIdTeam(idTeam);
		team.setIdSport(c.getIdSportByName(request.getParameter("sport")).get(0).getIdSport());
		team.setName(request.getParameter("name"));
		
		List<IndividualUser> listUsers = new ArrayList<IndividualUser>();
		
		String[] listNames = request.getParameterValues("member");
		for(int i=0; i<listNames.length; i++) {
			listUsers.add(c.getIdIndividualByName(listNames[i]).get(0));
		}
		
		
		c.updateTeam(team, listUsers);
		
		ServletContext context = getServletContext();
		RequestDispatcher df = context.getRequestDispatcher("/Teams.jsp");
		try {
			df.forward(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		}
        
	}

}
