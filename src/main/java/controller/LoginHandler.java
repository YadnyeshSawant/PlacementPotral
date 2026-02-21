package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import beans.Student;
import dao.StudentDAO;
import dao.UserDAO;

/**
 * Servlet implementation class LoginHandler
 */
@WebServlet("/LoginHandler")
public class LoginHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginHandler() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		response.sendRedirect("studentLogin.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		String role = request.getParameter("role");

		UserDAO ud = new UserDAO();
		long prn = ud.validateUser(uname, upass, role);
//		long prn = ud.prn;
//		ud.getData();

		if (prn > 0) {
			if (role.equals("student")) {

				HttpSession session = request.getSession();
				session.setAttribute("prn", prn);
//		        session.setAttribute("role", role);

				StudentDAO sd = new StudentDAO();
				Student student = sd.getStudentByPrn(prn);

				session.setAttribute("student", student);
//				response.sendRedirect("studentDashboard.jsp");
				request.getRequestDispatcher("studentDashboard.jsp").forward(request, response);
			} else if (role.equals("company")) {
				response.sendRedirect("companyDashboard.jsp");
			} else if (role.equals("coordinator")) {
				response.sendRedirect("coordinatorDashboard.html");
			}
		} else {

			response.getWriter().print("Invalid Username or Password");
//             response.sendRedirect("studentLogin.jsp?error=1");
		}
	}

}
