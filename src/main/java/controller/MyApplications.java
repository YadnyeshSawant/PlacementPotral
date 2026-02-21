package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import beans.Application;
import beans.ApplicationDetails;
import beans.Student;
import dao.ApplicationDAO;
import dao.StudentDAO;

/**
 * Servlet implementation class MyApplicaitons
 */
@WebServlet("/myApplications")
public class MyApplications extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    Long prn = (Long) request.getSession().getAttribute("prn");

	    if (prn == null) {
	        response.sendRedirect("index.html");
	        return;
	    }

	    int page = 1;
	    int limit = 5;

	    if (request.getParameter("page") != null) {
	        page = Integer.parseInt(request.getParameter("page"));
	    }

	    int start = (page - 1) * limit;

	    ApplicationDAO dao = new ApplicationDAO();
	    List<ApplicationDetails> list = dao.getApplicationsByStudentPrn(prn, start, limit);

	    int totalApps = dao.getTotalApplicationsByPrn(prn);
	    int totalPages = (int) Math.ceil((double) totalApps / limit);

	    request.setAttribute("applications", list);
	    request.setAttribute("currentPage", page);
	    request.setAttribute("totalPages", totalPages);
	    
	    Map<String, Integer> stats = dao.getApplicationStatsByPrn(prn);

	    request.setAttribute("totalApplied", stats.get("total"));
	    request.setAttribute("inProgress", stats.get("in_progress"));
	    request.setAttribute("offered", stats.get("offered"));
	    request.setAttribute("rejected", stats.get("rejected"));
	    

	    StudentDAO sd = new StudentDAO();
	    Student student = sd.getStudentByPrn(prn);
	    request.setAttribute("student", student);

	    request.getRequestDispatcher("myApplications.jsp").forward(request, response);
	}
}
