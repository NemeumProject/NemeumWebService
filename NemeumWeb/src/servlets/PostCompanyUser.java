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

import beans.CompanyUser;
import queries.Queries;

@WebServlet("/sPostCompanyUser")
public class PostCompanyUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public PostCompanyUser() {
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
		CompanyUser user = new CompanyUser();
		
		session = request.getSession(true);
		
		user.setComercialName(request.getParameter("comercial_name"));
		user.setCompanyName(request.getParameter("company_name"));
		user.setContactPerson(request.getParameter("contact_person"));
		user.setSsn(request.getParameter("ssn"));
		user.setEmail(request.getParameter("email"));
		user.setCity(request.getParameter("city"));
		user.setAddress(request.getParameter("address"));
		user.setPostal_code(request.getParameter("postal_code"));
		user.setPhone(Integer.parseInt(request.getParameter("phone")));
		
		if(request.getParameter("isPremium").equals("0")) {
			user.setIsPremium(false);
		}else {
			user.setIsPremium(true);
		}
		
		Queries c = new Queries();
		c.createCompanyUser(user);
		
		ServletContext context = getServletContext();
		RequestDispatcher df = context.getRequestDispatcher("/CompanyUser.jsp");
		try {
			df.forward(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
