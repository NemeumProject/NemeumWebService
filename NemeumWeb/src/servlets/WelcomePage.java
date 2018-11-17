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

@WebServlet("/sWelcomePage")
public class WelcomePage extends HttpServlet {

	private static final long serialVersionUID = 1L;
	Connection connection;
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public WelcomePage() {
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
		
		if( request.getParameter("username") != null && request.getParameter("password") != null && request.getParameter("username").equals("admin") && request.getParameter("password").equals("admin")) {
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/MainPage.jsp");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			request.setAttribute("errorMessage", "Invalid user or password");
			ServletContext context = getServletContext();
			RequestDispatcher df = context.getRequestDispatcher("/Welcome-Page");
			try {
				df.forward(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
		
	}
}
