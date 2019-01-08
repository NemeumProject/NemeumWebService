package servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.TrainerUser;
import queries.Queries;

@WebServlet("/sPostTrainerUser")
public class PostTrainerUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public PostTrainerUser() {
        super();
    }
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doFer(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doFer(request, response);

	}
	
	private void doFer(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		HttpSession session;
		TrainerUser user = new TrainerUser();
		
		session = request.getSession(true);
		String regex = "[0-9]+";
		
		if(request.getParameter("phone").matches(regex)) {
			user.setFirst_name(request.getParameter("name"));
			user.setMiddle_surname_initial(request.getParameter("surname"));
			user.setLast_surname(request.getParameter("last_surname"));
			user.setSsn(request.getParameter("ssn"));
			user.setEmail(request.getParameter("email"));
			user.setCity(request.getParameter("city"));
			user.setAddress(request.getParameter("address"));
			user.setPostal_code(request.getParameter("postal_code"));
			user.setPhone(Integer.parseInt(request.getParameter("phone")));
			user.setTitle(request.getParameter("title"));
			user.setDescription(request.getParameter("description"));
			
			Queries c = new Queries();
			c.createTrainerUser(user);
			
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/TrainerUser.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			request.setAttribute("errorMessage", "Invalid numeric data");
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/Post-TrainerUser");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
