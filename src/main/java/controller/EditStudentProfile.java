package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

import java.io.IOException;

import beans.Student;
import dao.StudentDAO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/EditStudentProfile")
@Slf4j
public class EditStudentProfile extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger logger = LoggerFactory.getLogger(EditStudentProfile.class);

	// =========================
	// GET → Load edit form
	// =========================
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		logger.info("EditStudentProfile GET called");

		HttpSession session = request.getSession(false);

		// 🔒 Session check
		if (session == null || session.getAttribute("prn") == null) {
			response.sendRedirect("studentLogin.jsp");
			return;
		}

		Long prn = (Long) session.getAttribute("prn");

		logger.debug("Fetching student by PRN={}", prn);

		StudentDAO dao = new StudentDAO();
		Student student = dao.getStudentByPrn(prn);

		if (student == null) {
			response.sendRedirect("studentProfile");
			return;
		}

		// 📦 Send data to JSP
		request.setAttribute("student", student);
		request.getRequestDispatcher("editStudentProfile.jsp").forward(request, response);
	}

	// =========================
	// POST → Save changes
	// =========================
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		logger.info("EditStudentProfile POST called");

		HttpSession session = request.getSession(false);

		// 🔒 Session check
		if (session == null || session.getAttribute("prn") == null) {

			logger.warn("Session expired during profile update\nRedirecting to studentLogin.jsp");

			response.sendRedirect("studentLogin.jsp");
			return;
		}

		Long prn = (Long) session.getAttribute("prn");

		logger.debug("Updating student by PRN={}", prn);

		// 🧱 Build Student object
		Student student = new Student();
		student.setPrn(prn);
		student.setFirstName(request.getParameter("firstname"));
		student.setLastName(request.getParameter("lastname"));
		student.setAddress(request.getParameter("address"));
		student.setContact(request.getParameter("contact"));
		student.setEmail(request.getParameter("email"));
		student.setProgramId(Integer.parseInt(request.getParameter("program")));
		student.setSscPercentage(Double.parseDouble(request.getParameter("sscPercentage")));
		student.setHscPercentage(Double.parseDouble(request.getParameter("hscPercentage")));
		student.setBachelorCgpa(Double.parseDouble(request.getParameter("ugcgpa")));

		// 🛡 Safe optional PG CGPA
		String pgCgpaStr = request.getParameter("pgcgpa");
		double pgCgpa = 0.0;
		if (pgCgpaStr != null && !pgCgpaStr.isEmpty()) {
			pgCgpa = Double.parseDouble(pgCgpaStr);
		}
		student.setPostgradCgpa(pgCgpa);

		// 💾 Update DB
		StudentDAO dao = new StudentDAO();
		boolean updated = dao.updateStudentDetails(student);

		// 🔁 PRG Pattern
		if (updated) {
			
			logger.info("Updated Successfully\t Redirected to -- studentProfile", prn);
			
			response.sendRedirect("studentProfile");
		} else {
			response.sendRedirect("EditStudentProfile?error=1");
		}
	}
}