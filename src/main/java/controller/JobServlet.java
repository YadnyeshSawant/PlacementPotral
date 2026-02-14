package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import beans.Job;
import dao.JobDAO;

/**
 * Servlet implementation class JobServlet
 */
@WebServlet("/JobServlet")
public class JobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JobServlet() {
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
		response.sendRedirect("newJob.jsp");
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);

		Job job = new Job();

		job.setCompanyId(Integer.parseInt(request.getParameter("company_id")));
		job.setRole(request.getParameter("role"));
		job.setDescription(request.getParameter("jobDescription"));
		job.setVacancy(Integer.parseInt(request.getParameter("vacancy")));
		job.setOpenings(Integer.parseInt(request.getParameter("remainingSeats")));
		job.setType(request.getParameter("type"));
		job.setLocation(request.getParameter("location"));

		JobDAO jd = new JobDAO();
		jd.newOpening(job);
		if (jd.result == 1) {

			int jid = jd.jobId;
			job.setJobId(jid);
			request.setAttribute("job", job);
			request.getRequestDispatcher("newJobSuccess.jsp").forward(request, response);
		}
	}

}
