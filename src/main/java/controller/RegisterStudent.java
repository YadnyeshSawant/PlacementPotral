package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.StudentDAO;

/**
 * Servlet implementation class RegisterStudent
 */
@WebServlet("/RegisterStudent")
public class RegisterStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		int prn = Integer.parseInt(request.getParameter("prn"));
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String address = request.getParameter("address");
		long contact = Long.parseLong(request.getParameter("contact"));
		String email = request.getParameter("email");
		
		long programId = Long.parseLong(request.getParameter("programId"));
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		
		StudentDAO stdDao = new StudentDAO();
		
		
		if(password.equals(confirmPassword)) {
			
			int result = stdDao.newStudentRegistration(prn, firstName, lastName, address, contact, email, programId,username, password);
			
			if(result ==2 ) {
				response.sendRedirect("studentLogin.html");
			}
			else {
				 response.getWriter().print("Error Occured");
			}
		}
		else {
			 response.getWriter().print("Password Mistmatch ");
		}
		
		
		
		
		
		
		
	}

}
