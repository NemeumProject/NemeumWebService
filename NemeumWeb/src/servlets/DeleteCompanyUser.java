package servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import queries.Queries;

@WebServlet("/sDeleteCompanyUser")
public class DeleteCompanyUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	String strEstat = new String("Alta correcta");
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCompanyUser() {
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
	
	private void doFer(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = null;
		
		session = request.getSession(true);
		
		String id = (String) session.getAttribute("idCompany");
		Queries q = new Queries();
        q.deleteCompanyUser(Integer.parseInt(id)); 
        
        try {
			response.sendRedirect("CompanyUser.jsp");
		} catch (IOException es) {
			es.printStackTrace();
		}
		
	}

}
