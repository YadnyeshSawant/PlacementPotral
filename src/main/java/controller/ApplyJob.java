package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import beans.Student;
import dao.JobDAO;
import dao.StudentDAO;

/**
 * Servlet implementation class ApplyJob
 */
@WebServlet("/applyJob")
public class ApplyJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /*
     * @see HttpServlet#HttpServlet()
     */
    public ApplyJob() {
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
//		doGet(request, response);
		int jobId = Integer.parseInt(request.getParameter("jobId"));
		
		HttpSession session = request.getSession(false);
		Long prn = (Long) session.getAttribute("prn");

	    StudentDAO dao = new StudentDAO();
	    Student student = dao.getStudentByPrn(prn);
	    
	    JobDAO apply = new JobDAO();
	    boolean result = apply.applyJob(jobId, student.getStudentId());
	    
	    if(result) {
	    	
	    	request.getSession().setAttribute("toastMessage", 
	                "Application submitted successfully for Job ID: " + jobId);

	        response.sendRedirect("viewJobs");
	    }
		
		
	}

}
