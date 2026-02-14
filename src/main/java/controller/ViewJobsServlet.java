package controller;

import java.io.IOException;

import beans.Job;
import dao.JobDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class ViewJobsServlet
 */
@WebServlet("/viewJobs")
public class ViewJobsServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    int page = 1;
	    int limit = 6;

	    if (request.getParameter("page") != null) {
	        page = Integer.parseInt(request.getParameter("page"));
	    }

	    int start = (page - 1) * limit;

	    JobDAO dao = new JobDAO();

	    java.util.List<Job> jobList = dao.getJobsByPage(start, limit);
	    int totalJobs = dao.getTotalJobCount();

	    int totalPages = (int) Math.ceil((double) totalJobs / limit);

	    request.setAttribute("jobs", jobList);
	    request.setAttribute("currentPage", page);
	    request.setAttribute("totalPages", totalPages);
	    request.setAttribute("totalJobs",totalJobs);

	    request.getRequestDispatcher("viewJobs.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
