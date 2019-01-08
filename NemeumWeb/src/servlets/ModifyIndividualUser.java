package servlets;

import java.io.IOException;
import java.rmi.RemoteException;
import java.sql.Connection;

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
import queries.Queries;

@WebServlet("/sModifyIndividualUser")
public class ModifyIndividualUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	public ModifyIndividualUser() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doFer(request, response);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	private void doFer(HttpServletRequest request, HttpServletResponse response) throws ServiceException, RemoteException, ServletException {
		// TODO Auto-generated method stub
		
		HttpSession session = null;
		session = request.getSession(true);
		IndividualUser user = new IndividualUser();
		
		String regex = "[0-9]+";
		if(request.getParameter("phone").matches(regex)) {
			int idUser = Integer.parseInt((String) session.getAttribute("idUser"));
			user.setId_IndividualUser(idUser);
			user.setFirst_name(request.getParameter("name"));
			user.setMiddle_surname_initial(request.getParameter("surname"));
			user.setLast_surname(request.getParameter("last_surname"));
			user.setSsn(request.getParameter("ssn"));
			user.setEmail(request.getParameter("email"));
			user.setCity(request.getParameter("city"));
			user.setAddress(request.getParameter("address"));
			user.setPostal_code(request.getParameter("postal_code"));
			user.setPhone(Integer.parseInt(request.getParameter("phone")));
			
			
			Queries q = new Queries();
			q.updateIndividualUser(user.getId_IndividualUser(), user);
			
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/IndividualUser.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			request.setAttribute("errorMessage", "Invalid numeric data");
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/IndividualUser.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
        
	}

}
