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

/**
 * Servlet implementation class StudenProfileServlet
 */
@WebServlet("/studentProfile")
public class StudenProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudenProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session = request.getSession(false);

	    if (session == null || session.getAttribute("prn") == null) {
	        response.sendRedirect("studentLogin.jsp");
	        return;   // ⛔ STOP execution
	    }

	    Long prn = (Long) session.getAttribute("prn");

	    StudentDAO dao = new StudentDAO();
	    Student student = dao.getStudentByPrn(prn);

	    request.setAttribute("student", student);
	    request.getRequestDispatcher("studentProfile.jsp")
	           .forward(request, response);
	}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
